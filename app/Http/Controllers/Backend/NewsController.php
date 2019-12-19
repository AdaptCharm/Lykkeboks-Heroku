<?php

namespace App\Http\Controllers\Backend;

use Auth;
use DB;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class NewsController extends Controller
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
        $news = DB::table('news')
                ->where('id', 1)
                ->first();

        return view('backend.pages.news.edit', compact('news'));
    }


    public function update(Request $request)
    {
        try {
            DB::table('news')
                ->where('id', 1)
                ->update([
                    'content' => $request->news
                ]);

            return redirect()->back()->with('success', 'News updated successfully.');

        } catch (\Exception $e) {

            return redirect()->back()->with('danger', $e->getMessage());

        }
    }
}
