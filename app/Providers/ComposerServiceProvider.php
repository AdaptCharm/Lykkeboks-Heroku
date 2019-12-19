<?php

namespace App\Providers;

use DB;
use Illuminate\Support\ServiceProvider;

class ComposerServiceProvider extends ServiceProvider
{

    public function boot()
    {

        // Using Closure based composers
        view()->composer('frontend.layouts.partials.breadcrumb', function ($view) {
            $news = DB::table('news')->where('id', 1)->first();
            $view->news = $news;
        });
    }

    public function register()
    {
        //
    }
}
