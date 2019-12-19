<div class="row">
    <div class="col-12 mt-2">
        @if(count($wonedItems) > 0)
        <table class="table">
            <thead>
                <tr>
                    <th>Image</th>
                    <th>Product Name</th>
                    <th>Sell Back Price</th>
                    <th><a href="{{ route('order') }}" class="btn btn-sm btn-success">Order All Items</a></th>
                </tr>
            </thead>
            <tbody>
                @forelse($wonedItems as $product)
                    <tr id="tr{{ $product->product_id }}">
                        <td><img style="width: 32px" src="{{ $product->image_path }}" alt=""></td>
                        <td>{{ $product->name }}</td>
                        <td>${{ number_format($product->sell_back_price / 100, 2) }}</td>
                        <td>
                            <button data-id="{{ $product->product_id }}" class="btn btn-sm btn-warning sellBackBTN">Sell Back</button>
                            <a href="{{ route('order-this', $product->product_id) }}" class="btn btn-sm btn-success">Order</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        @else
        <div class="row my-5 text-center">
            <div class="col-12">
                <h1 class="font-weight-normal">You will see the prizes you have won here</h1>
                <a href="{{ route('home') }}" class="btn btn-dark mt-3">Open an eBox and Win a Prize</a>
            </div>
        </div>
        @endif
    </div>
</div>
