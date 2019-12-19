<?php

namespace App\Http\Controllers\Frontend;

use Auth;
use DB;
use \Stripe\Stripe as StripeCore;
use \Stripe\Charge as StripeCharge;
use App\Models\Box;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\User;
use App\Models\WonedProduct;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PageController extends Controller
{
    public function initiateRedeem(Request $request)
    {
        $this->validate($request, [
            'boxID' => 'required'
        ]);

        $box = Box::find($request->boxID);

        $products = DB::table('box_products')
            ->join('products', 'box_products.product_id', '=', 'products.id')
            ->where('box_products.box_id', $request->boxID)
            ->get();

        $spinnerItems = [];
        $boxProducts  = [];

        foreach ($products as $product) {
            array_push($boxProducts, [
                'product_id' => $product->id,
                'image_path' => asset($product->image_path),
                'name' => $product->name,
                'sell_back_price' => $product->sell_back_price
            ]);

            array_push($spinnerItems, [
                'background' => asset($product->image_path)
            ]);
        }

        $wonedItems = DB::table('woned_products')
            ->join('products', 'woned_products.product_id', '=', 'products.id')
            ->where('woned_products.user_id', auth()->user()->id)
            ->where('woned_products.status', 0)
            ->orderBy('woned_products.id', 'desc')
            ->get();

        foreach ($wonedItems as $p) {
            $p->image_path = asset($p->image_path);
        }

        $response = [
            'status' => true,
            'data' => [
                'wonedProducts' => $wonedItems,
                'boxProducts' => $boxProducts,
                'spinnerItems' => $spinnerItems
            ]
        ];

        return response()->json($response);
    }


    public function spin(Request $request)
    {
        $this->validate($request, [
            'boxID' => 'required',
        ]);

        $box = Box::find($request->boxID);

        if (auth()->user()->balance < $box->price) {
            return response()->json([
                'status'  => false,
                'message' => 'Insufficient balance. Please deposit your account.'
            ]);
        }

        $weights  = [];
        $products = [];

        $boxProducts = DB::table('box_products')
            ->join('products', 'box_products.product_id', '=', 'products.id')
            ->where('box_products.box_id', $request->boxID)
            ->get();

        $i = 0;

        foreach ($boxProducts as $product) {
            array_push($products, ['index' => $i++, 'product_id' => $product->product_id]);
            array_push($weights, $product->wining_chance);
        }

        auth()->user()->pay($box);


        $response = [
            'status' => true,
            'data' => [
                'balance'  => number_format(auth()->user()->balanceFloat , 0, '.', ' '),
                'result'   =>  $this->selectRadom($products, $weights)
            ]
        ];


        WonedProduct::create([
            'redeem_id' => uniqid(),
            'product_id' => $response['data']['result']['product_id'],
            'user_id' => auth()->user()->id
        ]);

        return response()->json($response);
    }


    public function selectRadom($items, $weights)
    {
        $rel_weight = [];
        $probs      = [];

        $totalWeight = (float) array_sum($weights);
        foreach ($weights as $w) {
            array_push($rel_weight, ($w / $totalWeight));
        }

        foreach ($rel_weight as $i => $value) {
            array_push($probs, array_sum(array_slice(array_reverse($rel_weight), $i)));
        }

        $probs = array_reverse($probs);
        $slot  = mt_rand() / mt_getrandmax();

        foreach ($items as $i => $item) {
            if ($slot <= $probs[$i]) {
                break;
            }
        }

        return $item ?? null; // Returns array
    }


    public function sellBack(Request $request)
    {
        $this->validate($request, [
            'productID' => 'required',
        ]);

        $product = WonedProduct::where('product_id', $request->productID)
                    ->where('user_id', auth()->user()->id)
                    ->first();

        if (!$product) {
            return response()->json([
                'status' => false,
                'message' => 'This item could\'nt find your in your wining list'
            ]);
        }


        auth()->user()->deposit($product->product->sell_back_price);
        $product->status = 0;
        $product->save();

        return response()->json([
            'status' => true,
            'data' => [
                'balance' => number_format(auth()->user()->balanceFloat , 0, '.', ' ')
            ]
        ]);
    }


    public function home()
    {
        $boxes = DB::table('boxes')
                    ->where('is_published', 1)
                    ->get();

        return view('frontend.pages.home.index', compact('boxes'));
    }


    public function boxDetails($boxID)
    {
        $box = DB::table('boxes')->where('id', $boxID)->first();

        $boxProducts = DB::table('box_products')
            ->join('products', 'box_products.product_id', '=', 'products.id')
            ->where('box_products.box_id', $boxID)
            ->get();

        return view('frontend.pages.box-details.index', compact('boxProducts', 'box'));
    }


    public function profile()
    {
        $wonedItems     = DB::table('woned_products')
            ->join('products', 'woned_products.product_id', '=', 'products.id')
            ->where('woned_products.user_id', auth()->user()->id)
            ->where('woned_products.status', 0)
            ->orderBy('woned_products.id', 'desc')
            ->get([
                'products.name',
                'products.image_path',
                'products.sell_back_price',
                'products.id as product_id',
            ]);

            $orders = Order::where('user_id', auth()->user()->id)
                ->orderBy('id', 'desc')
                ->get();

        return view('frontend.pages.profile.index', compact('wonedItems', 'orders'));
    }


    public function updateProfile(Request $request)
    {
        try {
           User::where('id', auth()->user()->id)
               ->update([
                    'name'     => $request->name,
                    'email'    => $request->email,
                    'country'  => $request->country,
                    'city'     => $request->city,
                    'phone'    => $request->phone,
                    'region'   => $request->region,
                    'zip_code' => $request->zip_code,
                    'address'  => $request->address,
                ]);

            if ($request->new_password) {
                User::where('id', auth()->user()->id)
                    ->update([
                        'password' => bcrypt($request->new_password)
                    ]);
            }

            return redirect()->back()->with('success', 'Profile updated successfully.');
        } catch (\Exception $e) {
            return redirect()->back()->with('danger', 'Something went wrong!' . $e->getMessage());
        }
    }


    public function deposit()
    {
        return view('frontend.pages.deposit.index');
    }


    public function checkout(Request $request)
    {
        try {
            StripeCore::setApiKey(env('STRIPE_SECRET'));

            $charge = StripeCharge::create([
                'amount'      => $request->amount,
                'currency'    => 'nok',
                'description' => 'eMysteryBox Deposit',
                'source'      => $request->tokenID,
            ]);

            auth()->user()->deposit($request->amount);

            return response()->json([
                'status' => true,
                'message' => 'Your account successfully deposited.'
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'status'  => false,
                'message' => $e->getMessage()
            ]);
        }
    }


    public function redeem($boxID)
    {
        if (auth()->user()->type !== 2) {
            return redirect()->route('home')->with('warning', 'Admin can not access this page.');
        }

        return view('frontend.pages.redeem.index', compact('boxID'));
    }


    public function faq()
    {
        $faq = DB::table('faqs')->where('id', 1)->first();

        return view('frontend.pages.faq', compact('faq'));
    }


    public function getOrderAll()
    {
        $wins = WonedProduct::where('user_id', auth()->user()->id)
            ->where('status', 0)
            ->get();

        return view('frontend.pages.order.details', compact('wins'));
    }


    public function createOrder(Request $request)
    {
        try {

            Auth::user()->update([
                'country'  => $request->country,
                'city'     => $request->city,
                'phone'    => $request->phone,
                'region'   => $request->region,
                'zip_code' => $request->zip_code,
                'address'  => $request->address
            ]);

            if ($request->delivery_fees > 0) {
                if ($request->delivery_fees > auth()->user()->balance) {
                    return redirect()->back()->with('danger', 'Insufficient balance for deliver.');
                }
                auth()->user()->withdraw($request->delivery_fees);
            }

            $order = Order::create([
                'user_id' => auth()->user()->id,
                'status' => 0
            ]);

            foreach ($request->items as $winID => $winDetails) {
                $winDetails = (object) $winDetails;

                $wonedItem = WonedProduct::where('user_id', auth()->user()->id)
                    ->where('product_id', $winDetails->product_id)
                    ->where('status', 0)
                    ->first();

                if (!$wonedItem) {
                    $order->delete();
                    return redirect()->back()->with('danger', 'Woned product isnt in your list.');
                }

                $newOrderDetail = new OrderDetail;
                $newOrderDetail->order_id = $order->id;
                $newOrderDetail->product_id = $winDetails->product_id;

                if (isset($winDetails->size)) {
                    $newOrderDetail->size = $winDetails->size;
                }

                if (isset($winDetails->color)) {
                    $newOrderDetail->color = $winDetails->color;
                }
                $newOrderDetail->save();

                $wonedItem->status = 1;
                $wonedItem->save();
            }

            return redirect()->route('home')->with('success', 'Your order has been received. You will see the shipping status in shiping tab.');

        } catch (\Exception $e) {
            return redirect()->back()->with('danger', $e->getMessage());
        }
    }


    public function orderItem($productID)
    {
        $wins = WonedProduct::where('user_id', auth()->user()->id)
            ->where('product_id', $productID)
            ->where('status', 0)
            ->get();

        return view('frontend.pages.order.details', compact('wins'));
    }

}
