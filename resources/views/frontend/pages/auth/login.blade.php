@extends('frontend.layouts.master')

@section('title', 'Login')
@section('content')
<div class="container my-5">
    <div class="row">
        <div class="col-md-5 m-auto">
            <h4 class="font-weight-normal">Login</h4>
            <hr>
            <form action="{{ route('login') }}" method="post">
                <input type="hidden" name="_token" value="{{ Session::token() }}">
                <div class="form-group">
                    <label for="">Email</label>
                    <input type="email" name="email" class="form-control {{ $errors->has('email') ? 'is-invalid' : ''}}" required>
                    @if($errors->has_error)
                    <span class="invalid-feedback">{{ $errors->first('email') }}</span>
                    @endif
                </div>
                <div class="form-group">
                    <label for="">Password</label>
                    <input type="password" name="password" class="form-control {{ $errors->has('password') ? 'is-invalid' : ''}}" required>
                    @if($errors->has_error)
                    <span class="invalid-feedback">{{ $errors->first('password') }}</span>
                    @endif
                </div>
                <div class="form-group">
                    <div class="custom-control custom-checkbox">
                        <input name="remember" type="checkbox" class="custom-control-input" id="customCheck1">
                        <label class="custom-control-label" for="customCheck1">Remember me</label>
                    </div>
                </div>
                <button class="btn btn-dark btn-block">Login</button>
                <a href="{{ URL::to('password/reset') }}" class="btn btn-secondary btn-block">Forgot password?</a>
                <hr>
                <a href="{{ route('register') }}" class="btn btn-light border-dark btn-block">Create an account</a>
            </form>
        </div>
    </div>
</div>
@endsection
