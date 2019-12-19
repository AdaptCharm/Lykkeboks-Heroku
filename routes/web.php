<?php

Auth::routes();

Route::get('/auth/redirect/{provider}', 'Auth\SocialController@redirect');
Route::get('/callback/{provider}', 'Auth\SocialController@callback');

Route::group(['namespace' => 'Frontend'], function() {

    // Guest Routes
    Route::get('/', 'PageController@home')
            ->name('home');

    Route::get('eboxes', 'PageController@eboxes')
            ->name('eboxes');

    Route::get('faq', 'PageController@faq')
            ->name('faq');

    Route::get('box/details/{boxID}/{boxSlug?}', 'PageController@boxDetails')
            ->name('box-details');



    Route::group(['middleware' => 'auth'], function() {

        // Ajax Routes
        Route::post('redeem/initiate', 'PageController@initiateRedeem')
                ->name('initiateRedeem');

        Route::post('redeem/spin', 'PageController@spin');

        Route::post('redeem/sellBack', 'PageController@sellBack')
            ->name('sellBack');


        // User Routes
        Route::get('profile', 'PageController@profile')
                ->name('profile');

        Route::post('profile', 'PageController@updateProfile');

        Route::get('deposit', 'PageController@deposit')
                ->name('deposit');

        Route::post('deposit', 'PageController@checkout');

        Route::get('redeem/{boxID}', 'PageController@redeem')
                ->name('redeem');

        Route::get('order-this/{productID}', 'PageController@orderItem')
                ->name('order-this');

        Route::get('order-all', 'PageController@getOrderAll')
                ->name('order');

        Route::post('order', 'PageController@createOrder')
                ->name('createOrder');


    });
});





// Backend routes
Route::group(['prefix' => 'admin', 'namespace' => 'Backend', 'middleware' => 'auth'], function() {
    Route::name('admin.')->group(function () {

        Route::get('products/search', 'ProductController@search')
                ->name('products.search');

        Route::resource('products', 'ProductController');

        Route::get('products/delete/{productID}', 'ProductController@destroy')
                ->name('products.delete');

        Route::resource('boxes', 'BoxController');

        Route::get('boxes/delete/{boxID}', 'BoxController@destroy')
                ->name('boxes.delete');



        Route::get('orders', 'OrderController@index')
                ->name('orders.index');

        Route::get('orders/{orderID}/view', 'OrderController@view')
                ->name('orders.view');

        Route::get('orders/{orderID}/sent', 'OrderController@sent')
                ->name('orders.sent');



        Route::get('faqs/edit', 'FaqController@edit')
                ->name('faqs.edit');

        Route::post('faqs/edit', 'FaqController@update');



        Route::get('news/edit', 'NewsController@edit')
                ->name('news.edit');

        Route::post('news/edit', 'NewsController@update');



        Route::get('settings', 'PageController@settings')
                ->name('settings');

        Route::post('settings', 'PageController@updateSettings');


        Route::resource('couponCodes', 'CouponCodeController');

    });
});
