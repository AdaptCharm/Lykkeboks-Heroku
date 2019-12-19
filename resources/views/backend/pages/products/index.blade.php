@extends('backend.layouts.master')
@section('title','Products')
@section('content')
    <div class="container">

        <div class="row">

            <div class="col-md-4">
                <!-- Account Navigation -->
                <div class="card">
                    <div class="card__content">
                        <nav class="df-account-navigation">
                            <ul>
                                <li class="df-account-navigation__link df-account-navigation__link">
                                    <a href="{{ route('admin.boxes.index') }}"><small>Admin</small>Boksoversikt</a>
                                </li>
                                <li class="df-account-navigation__link df-account-navigation__link--active">
                                    <a href="{{ route('admin.products.index') }}"><small>Admin</small>Produktoversikt</a>
                                </li>
                                <li class="df-account-navigation__link df-account-navigation__link">
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

                <!-- Existing products -->
                <div class="card card--has-table">
                    <div class="card__header card__header--has-btn">
                        <h4>Oversikt over produkter</h4>
                        <a href="{{ route('admin.products.create') }}"
                           class="btn btn-primary-turquoise btn-xs card-header__button">Opprett nytt produkt</a>
                    </div>
                    <div class="card__content">
                        <div class="table-responsive">
                            <table class="table table-hover box-details">
                                <thead>
                                <tr>
                                    <th class="box-details__created">Opprettet</th>
                                    <th class="box-details__name">Navn</th>
                                    <th class="box-details__price">Selg tilbake pris</th>
                                    <th class="box-details__action">Handling</th>
                                </tr>
                                </thead>
                                <tbody>

                                @foreach($products as $product)
                                    <tr>
                                        <td class="box-details__created">{{ $product->created_at }}</td>
                                        <td class="box-details__name">
                                            <div class="box-details">
                                                <figure class="box-details__logo">
                                                    <img src="{{ asset($product->image_path) }}"
                                                         alt="{{ $product->name }}">
                                                </figure>
                                                <div class="box-details__info">
                                                    <h6 class="box-details__name">{{ $product->name }}</h6>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="box-details__price">{{ $product->sell_back_price / 10 }},-</td>
                                        <td class="box-details__action">
                                            <a href="{{ route('admin.products.edit', $product->id) }}"
                                               class="btn btn-xs btn-warning mr-2">Endre</a>
                                            <a href="{{ route('admin.products.delete', $product->id) }}"
                                               class="btn btn-xs btn-primary-inverse">Slett</a>
                                        </td>
                                    </tr>
                                @endforeach

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- Existing products / End -->

                <!-- Pagination -->
                {{ $products->links() }}

            </div>

        </div>

    </div>
@endsection

@push('style')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.10/css/select2.min.css"
          integrity="sha256-FdatTf20PQr/rWg+cAKfl6j4/IY3oohFAJ7gVC3M34E=" crossorigin="anonymous"/>
    <style>
        .select2-container--default.select2-container--focus .select2-selection--multiple {
            outline: 0;
            color: #9e9caa;
            background-color: #383759;
            border: 1px solid rgba(255, 255, 255, 0.05);
        }

        .select2-container--default .select2-selection--multiple {
            background-color: #383759;
            border: 1px solid rgba(255, 255, 255, 0.05);
            border-radius: 4px;
            cursor: text;
        }

        .select2-container--default .select2-selection--multiple .select2-selection__rendered input::placeholder {
            color: #9e9caa;
        }

        .select2-container--default .select2-selection--multiple .select2-selection__rendered {
            padding: 10px;
        }

        .select2-container--default .select2-selection--multiple .select2-selection__choice {
            border: 1px solid #7f7e8c;
            color: #fff;
            cursor: pointer;
            float: left;
            margin: 0 5px 9px 0;
            padding: 5px 13px;
            font-size: 9px;
            border-radius: 2px;
            text-transform: uppercase;
            font-weight: bold;
        }

        .select2-container--default .select2-selection--multiple .select2-selection__choice__remove {
            display: none;
        }
    </style>
@endpush

@push('script')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.10/js/select2.full.min.js"
            integrity="sha256-vdvhzhuTbMnLjFRpvffXpAW9APHVEMhWbpeQ7qRrhoE=" crossorigin="anonymous"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#sizes").select2();
            $("#colors").select2();
        });
    </script>
@endpush
