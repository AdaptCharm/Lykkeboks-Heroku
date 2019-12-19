@extends('frontend.layouts.master')

@section('title', 'Reset password')
@section('content')
<div class="container my-5">
    <div class="row">
        <div class="col-md-5 m-auto">
            <h4 class="font-weight-normal">Reset password</h4>
            <hr>
            <form action="{{ route('password.update') }}" method="post">
                <input type="hidden" name="_token" value="{{ Session::token() }}">
                <input type="hidden" name="token" value="{{ request()->segments()[2] }}">
                <div class="form-group">
                    <label for="">Enter your email</label>
                    <input type="email" name="email" class="form-control" value="{{ request()->get('email') }}" required>
                    @if($errors->has_error)
                    <span class="invalid-feedback">{{ $errors->first('email') }}</span>
                    @endif
                </div>
                <div class="form-group">
                    <label for="">Type new password</label>
                    <input type="password" name="password" class="form-control {{ $errors->has('password') ? 'is-invalid' : ''}}" required>
                    @if($errors->has_error)
                    <span class="invalid-feedback">{{ $errors->first('password') }}</span>
                    @endif
                </div>
                <div class="form-group">
                    <label for="">Retype new password</label>
                    <input type="password" name="password_confirmation" class="form-control {{ $errors->has('password_confirmation') ? 'is-invalid' : ''}}" required>
                    @if($errors->has_error)
                    <span class="invalid-feedback">{{ $errors->first('password_confirmation') }}</span>
                    @endif
                </div>
                <button class="btn btn-dark btn-block">Reset password</button>
             </form>
        </div>
    </div>
</div>
@endsection
