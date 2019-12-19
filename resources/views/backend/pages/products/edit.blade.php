@extends('backend.layouts.master')
@section('title','Edit Product')
@section('content')
<div class="container my-5">
    <form action="{{ route('admin.products.update', $product->id) }}" method="post" enctype="multipart/form-data">
        <div class="row">
            <div class="col-12">
                <h4>Edit Product</h4>
                <hr>
                <input type="hidden" name="_method" value="PUT">
                <input type="hidden" name="_token" value="{{ Session::token() }}">
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Product Name</label>
                            <input value="{{ $product->name }}" class="form-control" type="text" name="name" required>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="">Sell Back Price</label>
                            <div class="input-group mb-3">
                                <input value="{{ $product->sell_back_price / 100 }}" type="text" class="form-control" name="sell_back_price" aria-describedby="basic-addon1" required>
                                <div class="input-group-append">
                                    <span class="input-group-text" id="basic-addon1">{{ getCurrencySymbol('USD') }}</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="">Delivery Fee</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="delivery_fee" aria-describedby="basic-addon1" value="{{ $product->delivery_fee }}">
                                <div class="input-group-append">
                                    <span class="input-group-text" id="basic-addon1">{{ getCurrencySymbol('USD') }}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>New Image(Appropiate Size: 220x220 in pixels)</label>
                            <div class="input-group">
                                <div class="custom-file">
                                    <input name="image" type="file" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
                                    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="">Sizes</label>
                            <select style="width: 100%" multiple data-tags="true" data-placeholder="Add sizes" data-allow-clear="true" name="sizes[]" id="sizes" class="form-control">
                                @if($product->sizes != NULL)
                                    @foreach(explode(',', $product->sizes) as $size)
                                        <option selected>{{ $size }}</option>
                                    @endforeach
                                @endif
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="">Colors</label>
                            <select style="width: 100%" multiple data-tags="true" data-placeholder="Add colors" data-allow-clear="true" name="colors[]" id="colors" class="form-control">
                                @if($product->colors != NULL)
                                    @foreach(explode(',', $product->colors) as $color)
                                        <option selected>{{ $color }}</option>
                                    @endforeach
                                @endif
                            </select>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <p>Current Image</p>
                        <img src="{{ asset($product->image_path) }}" style="width: 64px">
                    </div>
                </div>
            </div>
            <div class="col-md-2 mt-5 text-right">
                <button class="btn btn-success btn-block">Save</button>
            </div>
        </div>
    </form>
</div>
@endsection

@push('style')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.10/css/select2.min.css" integrity="sha256-FdatTf20PQr/rWg+cAKfl6j4/IY3oohFAJ7gVC3M34E=" crossorigin="anonymous" />
@endpush

@push('script')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.10/js/select2.full.min.js" integrity="sha256-vdvhzhuTbMnLjFRpvffXpAW9APHVEMhWbpeQ7qRrhoE=" crossorigin="anonymous"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#sizes").select2();
            $("#colors").select2();
        });
    </script>
@endpush
