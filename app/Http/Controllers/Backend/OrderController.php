<?php

namespace App\Http\Controllers\Backend;

use Auth;
use DB;
use App\Models\Order;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class OrderController extends Controller
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
    public function index()
    {
        $orders = Order::orderBy('id', 'desc')->paginate(20);
        return view('backend.pages.orders.index', compact('orders'));
    }
    public function view($orderID)
    {
        $order = Order::find($orderID);
        if (!$order) {
            return redirect()->back()->with('danger', 'Order doesn\'t exits.');
        }
        return view('backend.pages.orders.view', compact('order'));
    }
    public function sent($orderID)
    {
        try {
            $order = Order::find($orderID);
            $order->status = 1;
            $order->save();
            return redirect()->back()->with('success', 'Order marked as sent.');
        } catch (\Exception $e) {
            return redirect()->back()->with('danger', $e->getMessage());
        }
    }
}
