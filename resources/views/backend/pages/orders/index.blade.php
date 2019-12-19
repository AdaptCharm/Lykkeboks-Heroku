@extends('backend.layouts.master')
@section('title','Ordreoversikt')
@section('content')
<div class="container">
    <div class="row">

      <div class="col-md-4" style="display: none">
        <!-- Account Navigation -->
        <div class="card">
          <div class="card__content">
            <nav class="df-account-navigation">
              <ul>
                <li class="df-account-navigation__link df-account-navigation__link">
                  <a href="{{ route('admin.boxes.index') }}"><small>Admin</small>Boksoversikt</a>
                </li>
                <li class="df-account-navigation__link df-account-navigation__link">
                  <a href="{{ route('admin.products.index') }}"><small>Admin</small>Produktoversikt</a>
                </li>
                <li class="df-account-navigation__link df-account-navigation__link--active">
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


      <div class="col-md-12">
          <!-- Box products -->
          <div class="card">
            <div class="card__header card__header--has-btn">
              <h4>Oversikt over ordre</h4>
            </div>
            <div class="card__content">
              <div class="table-responsive">
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <th class="box-details__id">Ordre nr.</th>
                      <th class="box-details__name">Brukernavn</th>
                      <th class="box-details__status">Status</th>
                      <th class="box-details__ordered">Bestilt for</th>
                      <th class="box-details__action">Handling</th>
                    </tr>
                  </thead>

                  <tbody>
                    @foreach($orders as $order)
                    <tr>
                      <td class="box-details__id">{{ $loop->iteration }}</td>
                      <td class="box-details__name">
                        <div class="box-details">
                          <figure class="box-details__logo">
                            <img src="{{ asset($order->image_path) }}" alt="{{ $order->user->name }}">
                          </figure>
                          <div class="box-details__info">
                            <h6 class="box-details__name">{{ $order->user->name }}</h6>
                          </div>
                        </div>
                      </td>
                      <td class="box-details__status">
                        @if($order->status == 0)
                          <i class="fas fa-check-circle"></i>
                        @else
                          <i class="fas fa-times-circle"></i>
                        @endif
                      </td>
                      <td class="box-details__ordered">
                        {{ $order->created_at->diffForHumans() }}
                      </td>
                      <td class="box-details__action">
                        <a href="{{ route('admin.orders.view', $order->id) }}" class="btn btn-xs btn-info">Detaljer</a>
                        @if($order->status == 0)
                            <a href="{{ route('admin.orders.sent', $order->id) }}" class="btn btn-xs btn-success">Marker som sendt</a>
                        @endif
                      </td>
                    </tr>
                    @endforeach
                  </tbody>
                </table>
              </div>
            </div>
            {{ $orders->links() }}
          </div>
          <!-- Box products / End -->
      </div>

    </div>
</div>
@endsection
