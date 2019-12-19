@extends('frontend.layouts.master')

@section('title','Order Details')
@section('content')
<form action="{{ route('createOrder') }}" method="POST">
    <input type="hidden" name="_token" value="{{ Session::token() }}">
    <div class="container my-5">
        <div class="row">
            <div class="col-12">
                <h5>Delivery Address</h5>
                <hr>
                <div class="row">
                    <div class="form-group col-md-4 col-sm-6">
                        <label for="">Country</label>
                        <input value="{{ auth()->user()->country }}" type="text" name="country" class="form-control" required>
                    </div>
                    <div class="form-group col-md-4 col-sm-6">
                        <label for="">City</label>
                        <input value="{{ auth()->user()->city }}" type="text" name="city" class="form-control" required>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="">Phone number</label>
                        <input value="{{ auth()->user()->phone }}" type="text" name="phone" class="form-control" required>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="">Region</label>
                        <input value="{{ auth()->user()->region }}" type="text" name="region" class="form-control" required>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="">Zip code</label>
                        <input value="{{ auth()->user()->zip_code }}" type="text" name="zip_code" class="form-control" required>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="">Address</label>
                        <input value="{{ auth()->user()->address }}" type="text" name="address" class="form-control" required>
                    </div>
                </div>
                <hr>
                <h5>Products</h5>
                <div class="row">
                    <div class="col-12">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Size</th>
                                    <th>Color</th>
                                    <th>Delivery Fee</th>
                                </tr>
                            </thead>
                            <tbody id="addedProducts">
                                @php $delivery_fees = 0; @endphp
                                @if($wins)
                                    @foreach($wins as $win)
                                        <input type="hidden" name="items[{{ $win->id }}][product_id]" value="{{ $win->product->id }}">
                                        <tr>
                                            <td>{{ $win->product->name }}</td>
                                            <td>
                                                @if($win->product->sizes != NULL)
                                                    <select name="items[{{ $win->id }}][size]" class="form-control">
                                                        @foreach(explode(',', $win->product->sizes) as $size)
                                                            <option>{{ $size }}</option>
                                                        @endforeach
                                                    </select>
                                                @else
                                                Not Available
                                                @endif
                                            </td>
                                            <td>
                                                @if($win->product->colors != NULL)
                                                    <select name="items[{{ $win->id }}][color]" class="form-control">
                                                        @foreach(explode(',', $win->product->colors) as $size)
                                                            <option>{{ $size }}</option>
                                                        @endforeach
                                                    </select>
                                                @else
                                                Not Available
                                                @endif
                                            </td>
                                            <td>${{ $win->product->delivery_fee }}</td>
                                            @php $delivery_fees += $win->product->delivery_fee; @endphp
                                        </tr>
                                        @endforeach
                                @endif
                                <tr>
                                    <td colspan="3" class="text-right font-weight-bold table-warning">Total Delivery Fees <small>(will be deducted from your account)</small></td>
                                    <td class="font-weight-bold table-warning">${{ $delivery_fees }}</td>
                                    <input type="hidden" name="delivery_fees" value="{{ $delivery_fees * 100 }}">
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-12 my-3 text-right">
                        <hr>
                        <button class="btn btn-success">Save Delivery Details & Order</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
@endsection
