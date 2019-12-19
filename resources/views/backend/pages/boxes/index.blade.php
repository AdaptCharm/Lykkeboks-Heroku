@extends('backend.layouts.master')
@section('title','Boksoversikt')
@section('content')
<div class="container">
  <div class="row">

    <div class="col-md-4">
      <!-- Account Navigation -->
      <div class="card">
        <div class="card__content">
          <nav class="df-account-navigation">
            <ul>
                <li class="df-account-navigation__link {{ (request()->is('admin/boxes*')) ? 'active' : '' }}">
                <a href="{{ route('admin.boxes.index') }}"><small>Admin</small>Boksoversikt</a>
              </li>
              <li class="df-account-navigation__link {{ (request()->is('admin/products*')) ? 'active' : '' }}">
                <a href="{{ route('admin.products.index') }}"><small>Admin</small>Produktoversikt</a>
              </li>
              <li class="df-account-navigation__link {{ (request()->is('admin/orders*')) ? 'active' : '' }}">
                <a href="{{ route('admin.orders.index') }}"><small>Admin</small>Ordreoversikt</a>
              </li>
              <li class="df-account-navigation__link df-account-navigation__link">
                <a href="{{ route('admin.couponCodes.index') }}"><small>Admin</small>Coupon Code</a>
              </li>
            </ul>
          </nav>
        </div>
      </div>
      <!-- Account Navigation / End -->
    </div>

    <div class="content col-md-8">
        <!-- Box products -->
        <div class="card card--has-table">
          <div class="card__header card__header--has-btn">
            <h4>Oversikt over bokser</h4>
            <a href="{{ route('admin.boxes.create') }}" class="btn btn-primary-turquoise btn-xs card-header__button">Opprett ny boks</a>
          </div>
          <div class="card__content">
            <div class="table-responsive">
              <table class="table table-hover box-details">
                <thead>
                  <tr>
                    <th class="box-details__id">Nr.</th>
                    <th class="box-details__name">Boks navn</th>
                    <th class="box-details__price">Pris</th>
                    <th class="box-details__status">Publisert</th>
                    <th class="box-details__action">Handling</th>
                  </tr>
                </thead>

                <tbody>
                  @foreach($boxes as $box)
                  <tr>
                    <td class="box-details__id">{{ $loop->iteration }}</td>
                    <td class="box-details__name">
                      <div class="box-details">
                        <figure class="box-details__logo">
                          <img src="{{ asset($box->image_path) }}" alt="{{ $box->name }}">
                        </figure>
                        <div class="box-details__info">
                          <h6 class="box-details__name">{{ $box->name }}</h6>
                        </div>
                      </div>
                    </td>
                    <td class="box-details__price">{{ $box->price / 10 }},-</td>
                    <td class="box-details__status">
                      @if($box->is_published == 1)
                        <i class="fas fa-check-circle"></i>
                      @else
                        <i class="fas fa-times-circle"></i>
                      @endif
                    </td>
                    <td class="box-details__action">
                      <a href="{{ route('admin.boxes.edit', $box->id) }}" class="btn btn-xs btn-warning mr-2">Endre</a>
                      <a href="{{ route('admin.boxes.delete', $box->id) }}" class="btn btn-xs btn-primary-inverse">Slett</a>
                    </td>
                  </tr>
                  @endforeach
                </tbody>
              </table>
            </div>
          </div>
          {{ $boxes->links() }}
        </div>
        <!-- Box products / End -->
    </div>

  </div>
</div>
@endsection
