@extends('backend.layouts.master')
@section('title','Create New E-Box')
@section('content')
<div class="container my-5">
    <div class="row">
        <div class="col-12">
            <h4>Create New E-Box</h4>
            <hr>
            @if ($errors->any())
            <div class="alert alert-danger">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                <span class="sr-only">Close</span>
                </button>
                <ul>
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
            @endif
            <form action="{{ route('admin.boxes.store') }}" method="post" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{ Session::token() }}">
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Box Name</label>
                            <input value="{{ old('name') }}" class="form-control" type="text" name="name" required>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label for="">Box Price</label>
                            <div class="input-group mb-3">
                                <input value="{{ old('price') }}" type="text" class="form-control" name="price" aria-describedby="basic-addon1" required>
                                <div class="input-group-append">
                                    <span class="input-group-text" id="basic-addon1">{{ getCurrencySymbol('USD') }}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label for="">Box Status</label>
                            <select name="is_published" class="form-control" required>
                                <option value="1">Published</option>
                                <option value="0">Not Published</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Box Image(Appropiate Size: 300x300 in pixels)</label>
                            <div class="input-group">
                                <div class="custom-file">
                                    <input name="box_image" type="file" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
                                    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <hr>
                        <div class="row">
                            <div class="col-6">
                                <h4>Box Products</h4>
                            </div>
                            <div class="col-6 text-right">
                                <button type="button" data-toggle="modal" data-target="#searchProductModal" class="btn btn-success">Search Products</button>
                            </div>
                        </div>
                        <hr>
                        <table class="table table-hover table-inverse">
                            <thead>
                                <tr>
                                    <th>Image</th>
                                    <th>Name</th>
                                    <th>Sell Back Price</th>
                                    <th>Wining Chance</th>
                                </tr>
                            </thead>
                            <tbody id="addedProducts">
                            </tbody>
                        </table>
                    </div>
                    <div class="col-12">
                        <button class="btn btn-dark">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="searchProductModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Search Products</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label>Product name</label>
                    <div class="input-group mb-3">
                        <input id="searchedProductName" type="text" class="form-control" aria-label="Recipient's username" aria-describedby="button-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-outline-secondary" type="button" id="searchedProductBTN">Search</button>
                        </div>
                    </div>
                </div>
                <hr>
                <div id="searchedProducts"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
@endsection

@push('script')
    <script type="text/javascript">
        $(document).ready(function(){

            var products = [];
            $("#searchedProductBTN").click(function(e) {
                e.preventDefault();
                $.ajax({
                    url         : "{{ route('admin.products.search') }}",
                    type        : "GET",
                    dataType    : "JSON",
                    data          : {
                        name : $("#searchedProductName").val()
                    },
                    "beforeSend" : function(){

                    },
                    "success"    : function(reponse){
                        if(reponse.status == true){
                            $("#searchedProducts").empty();
                            reponse.data.forEach(function(product) {
                                products[product.id] = product;
                                $("#searchedProducts").append(
                                    '<div class="row my-1">'+
                                        '<div class="col-1"><button data-id="'+product.id+'" class="addProductBTN mt-3 btn btn-sm btn-info"><i class="fa fa-plus"></i></button></div>'+
                                        '<div class="col-11">'+
                                            '<div class="media">'+
                                                '<img style="width: 64px;" src="../../' + product.image_path +'" class="mr-3">'+
                                                '<div class="media-body">'+
                                                    '<h5 class="mt-0">'+product.name+'</h5>'+
                                                    'Sell back price: <span class="text-danger">$'+product.sell_back_price / 100+'</span>'+
                                                '</div>'+
                                            '</div>'+
                                        '</div>'+
                                    '</div>'
                                );

                            });
                        }
                    },
                    "error"         : function(){

                    }
                });
            });

            $(document).on('click', '.addProductBTN', function(){
                $("#addedProducts").append(
                    '<tr>'+
                        '<td><img style="width: 32px;" src="../../'+ products[$(this).attr('data-id')].image_path +'" alt=""></td>'+
                        '<td>'+ products[$(this).attr('data-id')].name +'</td>'+
                        '<td>$'+ products[$(this).attr('data-id')].sell_back_price / 100 +'</td>'+
                        '<td><input name="products['+$(this).attr('data-id')+'][wining_chance]" class="form-control" type="text" required></td>'+
                    '</tr>'
                );
                $(this).parent().parent().remove();
            });
        });
    </script>
@endpush
