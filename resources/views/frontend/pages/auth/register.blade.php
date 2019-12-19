@extends('frontend.layouts.master')

@section('title', 'Register')
@section('content')
<div class="container my-5">
    <div class="row">
        <div class="col-md-5 m-auto">
            <h4 class="font-weight-normal">Register</h4>
            <hr>
            <form action="{{ route('register') }}" method="post">
                <input type="hidden" name="_token" value="{{ Session::token() }}">
                <div class="form-group">
                    <label for="">Full name</label>
                    <input type="text" name="name" class="form-control {{ $errors->has('name') ? 'is-invalid' : ''}}" required>
                    @if($errors->has_error)
                    <span class="invalid-feedback">{{ $errors->first('name') }}</span>
                    @endif
                </div>
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
                <button class="btn btn-dark btn-block">Register</button>
                <hr>
                <a href="{{ route('login') }}" class="btn btn-light border-dark btn-block">Already have an account? Login</a>
            </form>
        </div>
    </div>
</div>
@endsection
