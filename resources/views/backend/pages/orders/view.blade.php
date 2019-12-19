@extends('backend.layouts.master')
@section('title','Order Details')
@section('content')
<div class="container my-5">
    <div class="row">
        <div class="col-12">
            <div class="row">
                <div class="col-6">
                    <h5>Order Details</h5>
                </div>
                <div class="col-6 text-right">
                    @if($order->status == 0)
                        <a href="{{ route('admin.orders.sent', $order->id) }}" class="btn btn-sm btn-success">Mark As Sent</a>
                    @endif
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-6">
                    <strong>Sender Name</strong>
                    <p>{{ $order->user->name }}</p>
                    <strong>Order Status</strong>
                    <p>
                        @if($order->status == 0)
                            <span class="badge badge-warning">Pending</span>
                        @else
                            <span class="badge badge-success">Sent</span>
                        @endif
                    </p>
                </div>
                <div class="col-6">
                    <strong>Ordered At</strong>
                    <p>{{ $order->created_at->diffForHumans() }}</p>
                    <strong>Delivery Address</strong>
                    <p>{{ $order->user->full_address }}</p>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <table class="table table-hover table-inverse">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Size</th>
                                <th>Color</th>
                            </tr>
                        </thead>
                        <tbody id="addedProducts">
                            @foreach($order->products as $orderedProduct)
                            <tr>
                                <td>{{ $orderedProduct->product->name }}</td>
                                <td>{{ $orderedProduct->size ?? 'No available' }}</td>
                                <td>{{ $orderedProduct->color ?? 'No available' }}</td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
