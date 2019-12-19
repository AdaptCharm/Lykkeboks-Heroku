<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;
use Illuminate\Support\Facades\Password;

class ForgotPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset emails and
    | includes a trait which assists in sending these notifications from
    | your application to your users. Feel free to explore this trait.
    |
    */

    use SendsPasswordResetEmails;

    public function showLinkRequestForm()
    {

        return view('frontend.pages.auth.passwords.email');
    }

    protected function sendResetLinkResponse(Request $request, $response)
    {
        return back()->with('info', trans($response));
    }

    public function sendResetLinkEmail(Request $request)
    {
        try{
        if($request->has('email')){
            $user = User::whereEmail($request->email)->first();
            if(!$user){
                return response()->json(['success' => false ,'message' => 'Invalid Email!']);
            }
        }
//        $this->validateEmail($request);

        // We will send the password reset link to this user. Once we have attempted
        // to send the link, we will examine the response then see the message we
        // need to show to the user. Finally, we'll send out a proper response.
        $response = $this->broker()->sendResetLink(
            $this->credentials($request)
        );

        return $response == Password::RESET_LINK_SENT
            ? response()->json(['success' => true ,'message' => 'Password Reset Email Sent!'])
            : ['success' => false ,'message' => 'Something went wrong!'];
//        return $response == Password::RESET_LINK_SENT
//            ? $this->sendResetLinkResponse($request, $response)
//            : $this->sendResetLinkFailedResponse($request, $response);
        }catch(\Exception $ex){
            return response()->json(['success' => true ,'message' => $ex->getMessage()]);
        }
    }

}
