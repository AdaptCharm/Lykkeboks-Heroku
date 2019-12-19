<!DOCTYPE html>
<html lang="en">
    <head>
        <title>@yield('title') - Lykkeboks</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=0">
        <meta name="csrf-token" value="{{ csrf_token() }}">

        @if(array_key_exists(Route::current()->getName(), config()->get('meta')))
            @foreach(config()->get('meta')[Route::current()->getName()] as $name => $content)
                <meta name="{{ $name }}" value="{{ $content }}">
            @endforeach
        @endif

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Exo+2:400,700,700i,800|Roboto:400,400i">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="{{ asset('frontend/css/style.css') }}">
        <link rel="stylesheet" type="text/css" href="{{ asset('frontend/css/responsive.css') }}">
        @stack('style')
    </head>
    <body>
        <div class="site-wrapper clearfix">
            <div class="site-overlay"></div>

            <!-- Include POST modals -->
            @include('frontend.layouts.partials.modals')

            <!-- Include header and navigation -->
            @include('frontend.layouts.partials.header')

            <!-- Include breadcrumb -->
            @include('frontend.layouts.partials.breadcrumb')

            <div class="site-content">

                <!-- Include alerts -->
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            @include('frontend.layouts.partials.alerts')
                        </div>
                    </div>
                </div>

                <!-- Include content -->
                @yield('content')

            </div>

            <!-- Include footer -->
            @include('frontend.layouts.partials.footer')

            <!-- Include widgets -->
            @include('frontend.layouts.partials.widgets')


        </div>
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.3.1/dist/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-migrate@3.0.1/dist/jquery-migrate.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/svg4everybody@2.1.9/dist/svg4everybody.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-countdown@2.2.0/dist/jquery.countdown.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/instafeed.js/1.4.1/instafeed.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery.marquee@1.5.0/jquery.marquee.min.js"></script>
        <script src="{{ asset('frontend/js/validator.js') }}"></script>
        <script src="{{ asset('frontend/js/app.js') }}"></script>
        <script>
            $(document).ready(function () {
                $("form#register-form").submit(function (event) {
                    event.preventDefault();
                    var this_ = $(this);
                    var name = this_.find("input[name=name]").val();
                    var email = this_.find("input[name=email]").val();
                    var password = this_.find("input[name=password]").val();
                    var _token = this_.find("input[name=_token]").val();
                    if (email === "" && password === "" && name === "") {
                        $(this).submit();
                    } else {
                        var invalid_password = $("span#invalid-password");
                        var invalid_name = $("span#invalid-name");
                        var invalid_email= $("span#invalid-email");
                        var valid_register_feedback = $("span#valid-register-feedback");
                        var invalid_register_feedback = $("span#invalid-register-feedback");

                        invalid_password.hide().html('');
                        invalid_name.hide().html('');
                        invalid_email.hide().html('');
                        valid_register_feedback.hide().html('');
                        invalid_register_feedback.hide().html('');
                        $.ajax({
                            url: '{{ url('register') }}',
                            method: 'POST',
                            data: {
                                name: name,
                                email: email,
                                password: password,
                                _token: _token
                            },
                            success: function (response) {
                                if (response.errors) {
                                    $.each(response.errors, function (index, value) {
                                        if (index === 'password') {
                                            invalid_password.show().html(value[0]);
                                        }
                                        if (index === 'name') {
                                            invalid_name.show().html(value[0]);
                                        }
                                        if (index === 'email') {
                                            invalid_email.show().html(value[0]);
                                        }
                                    });
                                    return false;
                                } else if (response.status === true) {
                                    valid_register_feedback.show().html(response.message);
                                    this_.find("input[name=name]").val('');
                                    this_.find("input[name=email]").val('');
                                    this_.find("input[name=password]").val('');
                                    setTimeout(function () {
                                        location.reload();
                                    }, 1000);
                                } else {
                                    invalid_register_feedback.show().html(response.message);
                                }
                            },
                            error: function (err) {
                                invalid_register_feedback.show().html('Something went wrong!');
                            }
                        });
                    }
                });



                $("form#login-form").submit(function (event) {
                    event.preventDefault();
                    var email = $(this).find("input[name=email]").val();
                    var password = $(this).find("input[name=password]").val();
                    var remember = $(this).find("input[name=remember]").prop("checked");
                    var _token = $(this).find("input[name=_token]").val();
                    if (email === "" && password === "") {
                        $(this).submit();
                    } else {
                        $.ajax({
                            url: '{{ url('login') }}',
                            method: 'POST',
                            data: {
                                email: email,
                                password: password,
                                remember: remember,
                                _token: _token
                            },
                            success: function (response) {
                                if (response.success === true) {
                                    $("span#valid-login-feedback").show().html(response.message);
                                    $("span#invalid-login-feedback").hide();
                                    setTimeout(function () {
                                        location.reload();
                                    }, 2000);
                                } else {
                                    $("span#valid-login-feedback").hide();
                                    $("span#invalid-login-feedback").show().html(response.message);
                                }
                                // $("span#invalid-email-feedback").html(response.message);
                            },
                            error: function (err) {
                                $("span#valid-login-feedback").hide();
                                $("span#invalid-login-feedback").show().html('Something went wrong!');
                                // $("#span#invalid-email-feedback").html('something went wrong!');
                            }
                        });
                    }
                });



                $("form#forget-password").submit(function (event) {
                    event.preventDefault();
                    var email = $("#forgetEmail").val();
                    var _token = $(this).find("input[name=_token]").val();
                    if (email === "") {
                        $(this).submit();
                    } else {
                        $.ajax({
                            url: '{{ route('password.email') }}',
                            method: 'POST',
                            data: {
                                email: email,
                                _token: _token
                            },
                            success: function (response) {
                                $("span#invalid-email-feedback").html(response.message);
                            },
                            error: function (err) {
                                $("#span#invalid-email-feedback").html('something went wrong!');
                            }
                        });
                    }
                })
            });



            $("#new-user").click(function() {
              $('#loginModal').modal("toggle");
              $('#registerModal').modal("toggle");
            });

            $("#existing-user").click(function() {
              $('#registerModal').modal("toggle");
              $('#loginModal').modal("toggle");
            });

            $("#forgot-password").click(function() {
              $('#loginModal').modal("toggle");
              $('#forgotPasswordModal').modal("toggle");
            });

            $("#back-to-login").click(function() {
              $('#forgotPasswordModal').modal("toggle");
              $('#loginModal').modal("toggle");
            });
        </script>
        @stack('script')
    </body>
</html>
