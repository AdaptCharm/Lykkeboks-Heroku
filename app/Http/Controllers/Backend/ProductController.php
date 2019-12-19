<?php

namespace App\Http\Controllers\Backend;

use Auth;
use App\Models\Product;
use App\Models\BoxProduct;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ProductController extends Controller
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
            'name' => 'required'
        ]);

        try {
            $products = Product::where('name', 'LIKE', '%'.$request->name.'%')
                        ->get();

            return response()->json([
                'status' => true,
                'data' => $products
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
        $products = Product::orderBy('id', 'DESC')->paginate(10);

        return view('backend.pages.products.index', compact('products'));
    }

    public function create()
    {
        return view('backend.pages.products.create');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'sell_back_price' => 'required',
            'image' => 'required|image'
        ]);

        try {
            $image_path = imageUpload($request->image, 'images/products');
            Product::create([
                'name' => $request->name,
                'sell_back_price' => $request->sell_back_price * 100, // Converting to fucking floating integer
                'delivery_fee' => $request->delivery_fee,
                'image_path' => $image_path,
                'sizes' => ($request->sizes != null || $request->sizes != '') ? implode(',', $request->sizes) : null,
                'colors' => ($request->colors != null || $request->colors != '') ? implode(',', $request->colors) : null
            ]);

            return redirect()->back()->with('success', 'New product created successfully.');
        } catch (\Exception $e) {
            return redirect()->back()->with('danger', $e->getMessage());
        }
    }

    public function edit($productID)
    {
        $product = Product::find($productID);

        return view('backend.pages.products.edit', compact('product'));
    }

    public function update(Request $request, $productID)
    {
        $this->validate($request, [
            'name' => 'required',
            'sell_back_price' => 'required',
        ]);
        try {
            $product = Product::find($productID);

            $product->name = $request->name;

            if ($request->sizes != null || $request->sizes != '') {
                $product->sizes = implode(',', $request->sizes);
            }else{
                $product->sizes = null;
            }

            if ($request->colors != null || $request->colors != '') {
                $product->colors = implode(',', $request->colors);
            }else{
                $product->colors = null;
            }

            $product->sell_back_price = $request->sell_back_price * 100; // Converting to fucking floating integer;
            $product->delivery_fee = $request->delivery_fee;

            if ($request->image) {
                $image_path = imageUpload($request->image, 'images/products');
                if (file_exists(public_path($product->image_path))) {
                    unlink(public_path($product->image_path));
                }
                $product->image_path = $image_path;
            }
            $product->save();

            return redirect()->route('admin.products.index')->with('success', 'Product updated successfully.');
        } catch (\Exception $e) {
            return redirect()->back()->with('danger', $e->getMessage());
        }
    }

    public function destroy($productID)
    {
        try {

            BoxProduct::where('product_id', $productID)->delete();
            $product = Product::find($productID);

            if (file_exists(public_path($product->image_path))) {
                unlink(public_path($product->image_path));
            }
            $product->delete();

            return redirect()->back()->with('success', 'Product deleted successfully.');

        } catch (\Exception $e) {

            return redirect()->back()->with('danger', $e->getMessage());

        }
    }
}
