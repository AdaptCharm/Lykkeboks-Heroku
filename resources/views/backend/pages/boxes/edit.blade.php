@extends('backend.layouts.master')
@section('title','Endre boks')
@section('content')
<div class="container">

  <div class="row">

    <div class="col-lg-12">
      @if ($errors->any())
      <div class="alert alert-dismissible">
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
    </div>

    <div class="content col-lg-12">

      <form action="{{ route('admin.boxes.update', $box->id) }}" method="post" enctype="multipart/form-data">
        <input type="hidden" name="_method" value="PUT">
        <input type="hidden" name="_token" value="{{ Session::token() }}">

        <!-- Create new products -->
        <div class="card card--has-table">
          <div class="card__header card__header--has-btn">
            <h4>Endre boks info</h4>
          </div>
          <div class="card__content">
            <div class="table-responsive">
              <table class="table table-hover box-details">
                <thead>
                  <tr>
                    <th class="box-details__name">Navn</th>
                    <th class="box-details__price">Pris</th>
                    <th class="box-details__status">Status</th>
                    <th class="box-details__image">Bilde (Korrekt størrelse: 300x300 i piksler)</th>
                  </tr>
                </thead>
                <tbody>

                  <tr>
                    <td class="box-details__name">
                      <input value="{{ $box->name }}" class="form-control" type="text" name="name" required>
                    </td>
                    <td class="box-details__price">
                      <input value="{{ $box->price / 100 }}" type="text" class="form-control" name="price" aria-describedby="basic-addon1" required>
                    </td>
                    <td class="box-details__status">
                      <select name="is_published" class="form-control">
                        <option {{ $box->is_published == 1 ? 'selected' : '' }} value="1">Publisert</option>
                        <option {{ $box->is_published == 0 ? 'selected' : '' }} value="0">Ikke publisert</option>
                      </select>
                    </td>
                    <td class="box-details__image">
                      <div class="input-group">
                          <div class="custom-file">
                              <input name="box_image" type="file" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
                              <label class="custom-file-upload" for="inputGroupFile01">Last opp fil</label>
                          </div>
                      </div>
                    </td>
                  </tr>

                </tbody>
              </table>
            </div>
          </div>
        </div>
        <!-- Create new products / End -->


        <!-- Box products -->
        <div class="card card--has-table">
          <div class="card__header card__header--has-btn">
            <h4>Endre boks produkter</h4>
            <button type="button" data-toggle="modal" data-target="#searchProductModal" class="btn btn-info btn-xs card-header__button">Legg til produkter</button>
          </div>
          <div class="card__content">
            <div class="table-responsive">
              <table class="table table-hover box-details">
                <thead>
                  <tr>
                    <th class="box-details__id">Nr.</th>
                    <th class="box-details__name">Navn</th>
                    <th class="box-details__price">Selg tilbake pris</th>
                    <th class="box-details__probability">Vinnersannsynlighet</th>
                    <th class="box-details__action">Handling</th>
                  </tr>
                </thead>
                <tbody>

                  @foreach($box->box_products as $box_product)
                  <tr>
                    <td class="box-details__id">{{ $box_product->product->id }}</td>
                    <td class="box-details__name">
                      <div class="box-details">
                        <figure class="box-details__logo">
                          <img src="{{ asset($box_product->product->image_path) }}" alt="">
                        </figure>
                        <div class="box-details__info">
                          <h6 class="box-details__name">{{ $box_product->product->name }}</h6>
                        </div>
                      </div>
                    </td>
                    <td class="box-details__price">{{ $box_product->product->sell_back_price }}</td>
                    <td class="box-details__probability"><input style="height: calc(1.5em + .75rem + 2px); width: 135px" value="{{ $box_product->wining_chance }}" name="products[{{ $box_product->product->id }}][wining_chance]" class="form-control" type="text" required></td>

                    <td class="box-details__action">
                      <a href="#" class="btn btn-xs btn-primary-inverse btn-block removeProductBTN">
                        Slett
                      </a>
                    </td>
                  </tr>
                  @endforeach

                </tbody>
              </table>
            </div>
          </div>
        </div>
        <!-- Box products / End -->

        <a href="{{ route('admin.boxes.index') }}" class="btn btn-success btn-outline btn-sm">Tilbake</a>
        <button class="btn btn-primary-turquoise btn-sm float-right">Lagre endringer</button>

      </form>

    </div>

  </div>

</div>

<div class="modal fade" id="searchProductModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal--interface modal-content">
            <div class="modal-header">
                <h4>Søk etter produkter</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label>Produkt navn</label>
                    <div class="input-group mb-3">
                        <input id="searchedProductName" type="text" class="form-control" placeholder="Skriv inn navnet på produktet...">
                        <div class="input-group-append">
                            <button type="button" class="btn btn-info" id="searchedProductBTN">Søk</button>
                        </div>
                    </div>
                </div>
                <hr>
                <div id="searchedProducts"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary-inverse" data-dismiss="modal">Lukk</button>
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
                                    '<div class="card card--has-table">' +
                                      '<div class="card__content">' +
                                        '<div class="table-responsive">' +
                                          '<table class="table table-hover box-details">' +
                                            '<thead>' +
                                              '<tr>' +
                                                '<th class="box-details__id">Nr.</th>' +
                                                '<th class="box-details__name">Navn</th>' +
                                                '<th class="box-details__price">Selg tilbake pris</th>' +
                                                '<th class="box-details__submit">Handling</th>' +
                                              '</tr>' +
                                            '</thead>' +
                                            '<tbody>' +
                                              '<tr>' +
                                                '<td class="box-details__id">' + product.id + '</td>' +
                                                '<td class="box-details__name">' +
                                                  '<div class="box-details">' +
                                                    '<figure class="box-details__logo">' +
                                                      '<img src="../../../' + product.image_path + '" alt="' + product.name + '">' +
                                                    '</figure>' +
                                                    '<div class="box-details__info">' +
                                                      '<h6 class="box-details__name">' + product.name + '</h6>' +
                                                    '</div>' +
                                                  '</div>' +
                                                '</td>' +
                                                '<td class="box-details__price">' + product.sell_back_price / 10 + ',-</td>' +
                                                '<td class="box-details__submit">' +
                                                  '<button data-id="' + product.id + '" class="btn btn-primary-turquoise btn-xs addProductBTN"><i class="fa fa-plus"></i></button>' +
                                                '</td>' +
                                              '</tr>' +
                                            '</tbody>' +
                                          '</table>' +
                                        '</div>' +
                                      '</div>' +
                                    '</div>'
                                );

                            });
                        }
                    },
                    "error"         : function(){

                    }
                });
            });

            $(".removeProductBTN").click(function() {
                $(this).parent().parent().remove();
            });

            $(document).on('click', '.addProductBTN', function(){
                $("#addedProducts").append(
                    '<tr>'+
                        '<td><img style="width: 32px;" src="../../../'+ products[$(this).attr('data-id')].image_path +'" alt=""></td>'+
                        '<td>'+ products[$(this).attr('data-id')].name +'</td>'+
                        '<td>$'+ products[$(this).attr('data-id')].sell_back_price +'</td>'+
                        '<td><input name="products['+$(this).attr('data-id')+'][wining_chance]" class="form-control" type="text" required></td>'+
                        '<td><button class="btn btn-danger btn-sm removeProductBTN">Slett</button></td>'+
                    '</tr>'
                );
                $(this).parent().parent().remove();
            });
        });
    </script>
@endpush
