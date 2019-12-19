<div class="row">
    <div class="col-12 mt-2">
        @if(count($orders) > 0)
        <table class="table">
            <thead>
                <tr>
                    <th>Items</th>
                    <th>Status</th>
                    <th>Ordered At</th>
                </tr>
            </thead>
            <tbody>
                @foreach($orders as $order)
                    <tr>
                        <td>
                            @foreach(\App\Models\Order::find($order->id)->products as $product)
                                <li>{{ $product->product->name }}</li>

                            @endforeach
                        </td>
                        <td>
                            @if($order->status == 0)
                                <span class="badge badge-warning">Pending</span>
                            @else
                                <span class="badge badge-success">Sent</span>
                            @endif
                        </td>
                        <td>{{ $order->created_at->diffForHumans() }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        @else
        <div class="row my-5 text-center">
            <div class="col-12">
                <h1 class="font-weight-normal">You will see the prizes you have ordered here</h1>
                <a href="{{ route('home') }}" class="btn btn-dark mt-3">Open an eBox and Win a Prize</a>
            </div>
        </div>
        @endif
    </div>
</div>
