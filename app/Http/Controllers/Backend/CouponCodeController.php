<?php

namespace App\Http\Controllers\Backend;

use App\Models\CouponCode;
use Auth;
use App\Models\Product;
use App\Models\BoxProduct;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CouponCodeController extends Controller
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

    public function search(Request $request)
    {
        $this->validate($request, [
            'code' => 'required'
        ]);

        try {
            $couponCodes = CouponCode::where('code', 'LIKE', '%'.$request->code.'%')
                        ->get();

            return response()->json([
                'status' => true,
                'data' => $couponCodes
            ]);

        } catch (Exception $e) {
            return response()->json([
                'status' => true,
                'message' => $e->getMessage()
            ]);
        }
    }

    public function index()
    {
        $couponCodes = CouponCode::orderBy('id', 'DESC')->paginate(10);

        return view('backend.pages.couponCodes.index', compact('couponCodes'));
    }

    public function create()
    {
        return view('backend.pages.couponCodes.create');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'code' => 'required',
            'type' => 'required',
            'valid_from' => 'required|date',
            'valid_to' => 'required|date'
        ]);

        try {
            CouponCode::create([
                'code' => $request->code,
                'type' => $request->type * 100, // Converting to fucking floating integer
                'user_id' => $request->user_id,
                'no_of_use' => $request->no_of_use,
                'valid_from' => $request->valid_from,
                'valid_to' => valid_to
            ]);

            return redirect()->back()->with('success', 'New Coupon created successfully.');
        } catch (\Exception $e) {
            return redirect()->back()->with('danger', $e->getMessage());
        }
    }

    public function edit($couponCodeId)
    {
        $couponCode = CouponCode::find($couponCodeId);

        return view('backend.pages.couponCodes.edit', compact('couponCode'));
    }

    public function update(Request $request, $couponCodeId)
    {
        $this->validate($request, [
            'code' => $request->code,
            'type' => $request->type * 100, // Converting to fucking floating integer
            'user_id' => $request->user_id,
            'no_of_use' => $request->no_of_use,
            'valid_from' => $request->valid_from,
            'valid_to' => valid_to
        ]);
        try {
            $couponCode = CouponCode::find($couponCodeId);
            $couponCode->update($request->except('_token'));

            return redirect()->route('admin.couponCodes.index')->with('success', 'Coupon updated successfully.');
        } catch (\Exception $e) {
            return redirect()->back()->with('danger', $e->getMessage());
        }
    }

    public function destroy($couponCodeId)
    {
        try {

            $couponCode = CouponCode::find($couponCodeId);
            $couponCode->delete();

            return redirect()->back()->with('success', 'Coupon deleted successfully.');

        } catch (\Exception $e) {
            return redirect()->back()->with('danger', $e->getMessage());
        }
    }
}
