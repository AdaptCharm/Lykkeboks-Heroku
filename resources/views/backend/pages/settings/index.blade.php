@extends('backend.layouts.master')
@section('title','Website Settings')
@section('content')
<div class="container my-5">
    <div class="row">
        <div class="col-12">
            <h4>Website Settings</h4>
            <hr>
            <form action="{{ route('admin.settings') }}" method="post">
                <input type="hidden" name="_token" value="{{ Session::token() }}">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Stripe Public Key</label>
                            <input value="{{ $settings['stripe_public_key'] }}" class="form-control" type="text" name="stripe_public_key">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Stripe Secret Key</label>
                            <input value="{{ $settings['stripe_secret_key'] }}" class="form-control" type="text" name="stripe_secret_key">
                        </div>
                    </div>
                    <div class="col-12">
                        <button class="btn btn-dark">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
