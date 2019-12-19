<?php

namespace App\Http\Controllers\Backend;

use Auth;
use DB;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class FaqController extends Controller
{
    function __construct()
    {
        $this->middleware(function (Request $request, $next) {
            if (Auth::user()->type != 1) {
                return redirect()->route('home')->with('warning', 'Page doesn\'t exits.');;
            }
            return $next($request);
        });
    }

    public function edit()
    {
        $faq = DB::table('faqs')
                ->where('id', 1)
                ->first();

        return view('backend.pages.faqs.edit', compact('faq'));
    }


    public function update(Request $request)
    {
        try {
            DB::table('faqs')
                ->where('id', 1)
                ->update([
                    'content' => $request->faqs
                ]);

            return redirect()->back()->with('success', 'FAQs updated successfully.');

        } catch (\Exception $e) {

            return redirect()->back()->with('danger', $e->getMessage());

        }
    }
}
