@extends('backend.layouts.master')
@section('title','Opprett nytt produkt')
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

      <form action="{{ route('admin.products.store') }}" method="post" enctype="multipart/form-data">
        <input type="hidden" name="_token" value="{{ Session::token() }}">

        <!-- Create new products -->
        <div class="card card--has-table">
          <div class="card__header card__header--has-btn">
            <h4>Opprett et produkt</h4>
          </div>
          <div class="card__content">
            <div class="table-responsive">
              <table class="table table-hover box-details">
                <thead>
                  <tr>
                    <th class="box-details__name">Navn</th>
                    <th class="box-details__price">Selg tilbake pris</th>
                    <th class="box-details__delivery-fee">Leveringsgebyr</th>
                    <th class="box-details__sizes">Størrelser</th>
                    <th class="box-details__colors">Farger</th>
                    <th class="box-details__image">Bilde (220x220)</th>
                  </tr>
                </thead>
                <tbody>

                  <tr>
                    <td class="box-details__name">
                      <input class="form-control" type="text" name="name" required>
                    </td>
                    <td class="box-details__price">
                      <input type="text" class="form-control" name="sell_back_price" aria-describedby="basic-addon1" required>
                    </td>
                    <td class="box-details__delivery-fee">
                      <input type="text" class="form-control" name="delivery_fee" aria-describedby="basic-addon1" required>
                    </td>
                    <td class="box-details__sizes">
                      <select style="width: 100%" multiple data-tags="true" data-placeholder="Add sizes" data-allow-clear="true" name="sizes[]" id="sizes" class="form-control"></select>
                    </td>
                    <td class="box-details__colors">
                      <select style="width: 100%" multiple data-tags="true" data-placeholder="Add colors" data-allow-clear="true" name="colors[]" id="colors" class="form-control"></select>
                    </td>
                    <td class="box-details__image">
                      <div class="input-group">
                          <div class="custom-file">
                              <input class="btn btn-info btn-xs" style="cursor: pointer" name="image" type="file" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
                              <label class="btn-xs custom-file-upload" for="inputGroupFile01">Last opp fil</label>
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

        <a href="{{ route('admin.products.index') }}" class="btn btn-success btn-outline btn-sm">Tilbake</a>
        <button class="btn btn-primary-turquoise btn-sm float-right">Lagre endringer</button>

      </form>

    </div>

  </div>

</div>
@endsection
