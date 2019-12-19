@extends('frontend.layouts.master')

@section('title', 'Reset password')
@section('content')
<div class="container my-5">
    <div class="row">
        <div class="col-md-5 m-auto">
            <h4 class="font-weight-normal">Reset password</h4>
            <hr>
            <form action="{{ route('password.email') }}" method="post">
                <input type="hidden" name="_token" value="{{ Session::token() }}">
                <div class="form-group">
                    <label for="">Email</label>
                    <input type="email" name="email" class="form-control {{ $errors->has('email') ? 'is-invalid' : ''}}" required>
                    @if($errors->has_error)
                    <span class="invalid-feedback">{{ $errors->first('email') }}</span>
                    @endif
                </div>
                <button class="btn btn-dark btn-block">Get password reset link</button>
             </form>
        </div>
    </div>
</div>
@endsection
