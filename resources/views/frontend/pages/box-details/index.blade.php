@extends('frontend.layouts.master')

@section('title')
Open {{ $box->name }}
@endsection

@section('content')
<!-- Content
================================================== -->
<div class="container" style="margin-top: -60px">

    <div class="row text-center" style="display: none">
        <div class="col-12">
            @if(auth()->user())
                @if(auth()->user()->type == 2)
                    <a href="{{ route('redeem', [$box->id]) }}" class="mt-2 btn btn-lg btn-danger text-white text-uppercase font-weight-bold {{ (auth()->user()->balance < $box->price) ? 'disabled' : '' }}">Åpne for ${{ number_format($box->price / 10, 0, '.', ' ') }}</a>
                    @if(auth()->user()->balance < $box->price)
                        <a href="{{ route('deposit') }}" class="mt-2 btn btn-lg text-uppercase border font-weight-bold">Add Deposit</a>
                    @endif
                @endif
            @else
                <a href="#loginModal" role="button" data-toggle="modal" class="btn btn-primary-turquoise btn-lg btn-block">Login to open the box</a>
            @endif

        </div>
    </div>

    <!-- Team Roster Navigation -->
    <div class="team-roster-nav js-team-roster-nav">

      <div class="team-roster-nav__item">
        <div class="hexagon">
          <img src="{{ asset($box->image_path) }}" alt="">
            <div class="hex">
                <div></div>
                <div></div>
                <div></div>
            </div>
            <div class="hex">
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
      </div>

      <div class="team-roster-nav__meta float_right">
          <h6 class="team-roster-nav__firstname">{{ $box->name }}</h6>
          <h5 class="team-roster-nav__nickname mb-2">{{ $box->price / 10 }},- NOK</h5>
          @if(auth()->user())
              @if(auth()->user()->type == 2)
              <div style="cursor: not-allowed">
                  <a href="{{ route('redeem', [$box->id]) }}" class="btn btn-primary-turquoise btn-sm {{ (auth()->user()->balance < $box->price) ? 'disabled' : '' }}">Åpne for {{ number_format($box->price / 10, 0, '.', ' ') }},- NOK</a>
              </div>
              @if(auth()->user()->balance < $box->price)
                  <a href="{{ route('deposit') }}" class="btn btn-primary-turquoise btn-sm mt-2" style="display: block">Gjør et innskudd</a>
              @endif

          @endif
          @else
              <a class="btn btn-primary-turquoise btn-sm mt-2" href="#loginModal" role="button" data-toggle="modal">Logg inn for å åpne boksen</a>
          @endif
      </div>

    </div>
    <!-- Team Roster Navigation / End -->

    <!-- Shop Grid -->
    <div class="card card--clean">
      <header class="card__header card__header--shop-filter">

        <div class="shop-filter">

          <h5 class="shop-filter__result">Viser {{ $boxProducts->count() }} av {{ $boxProducts->count() }} produkter</h5>
          <ul class="shop-filter__params">
            <li class="shop-filter__control">
              <a>
                <button class="btn btn-primary-turquoise btn-single-icon btn-circle toggleChances" data-toggle="tooltip" data-placement="top" title="" data-original-title="Viser vinnersannsynlighet"><i class="fa fa-eye"></i></button>
              </a>
            </li>
          </ul>
          <div class="shop-filter__layout">
            <a href="_football_shop-grid.html" class="shop-filter__grid-layout icon-grid-layout icon-grid-layout--active">
              <span class="icon-grid-layout__inner">
                <span class="icon-grid-layout__item"></span>
                <span class="icon-grid-layout__item"></span>
                <span class="icon-grid-layout__item"></span>
              </span>
            </a>
            <a href="_football_shop-list.html" class="shop-filter__list-layout icon-list-layout ">
              <span class="icon-list-layout__inner">
                <span class="icon-list-layout__item"></span>
                <span class="icon-list-layout__item"></span>
                <span class="icon-list-layout__item"></span>
              </span>
            </a>
          </div>
        </div>

      </header>
      <div class="card__content">

        <!-- Products -->
        <ul class="products products--grid products--grid-4 products--grid-overlay">

          @foreach($boxProducts as $boxProduct)
          <!-- Product # -->
          <li class="product__item card">

            <div class="product__img">
              <div class="product__img-holder">
                <div class="product__slider">
                  <div class="product__slide">
                    <div class="product__slide-img" style="max-width: 180px;">
                      <img src="{{ asset($boxProduct->image_path) }}" alt="">
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="product__content card__content">

              <header class="product__header">
                <div class="product__header-inner">
                  <h2 class="product__title"><a>{{ $boxProduct->name }}</a></h2>
                  <span class="product__category">

                    @if($boxProduct->wining_chance >= 100)
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star empty"></i>
                    <i class="fa fa-star empty"></i>
                    <i class="fa fa-star empty"></i>
                    <i class="fa fa-star empty"></i>
                    @elseif($boxProduct->wining_chance >= 80)
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star empty"></i>
                    <i class="fa fa-star empty"></i>
                    <i class="fa fa-star empty"></i>
                    @elseif($boxProduct->wining_chance >= 60)
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star empty"></i>
                    <i class="fa fa-star empty"></i>
                    @elseif($boxProduct->wining_chance >= 40)
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star empty"></i>
                    @else($boxProduct->wining_chance >= 20)
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    @endif

                  </span>
                  <div class="product__probability" style="display: none">
                      <a data-toggle="tooltip" data-placement="top" title="Vinnersannsynlighet">{{ $boxProduct->wining_chance }}%</a>
                  </div>
                  <div class="product__price">
                      {{ number_format($boxProduct->sell_back_price / 100, 0, '.', ' ') }},- NOK
                  </div>
                </div>
              </header>
            </div>
          </li>
          <!-- Product # / End -->
          @endforeach

        </ul>
        <!-- Products / End -->
      </div>
    </div>
    <!-- Shop Grid / End -->

  </div>
@endsection

@push('script')
    <script type="text/javascript">
        $(document).ready(function(){
            $(".toggleChances").click(function() {
                $('.itemChance').each(function(i, el) {
                    $(el).toggle();
                });
                if ($(this).children('i').attr('class').search('slash') == -1) {
                    $(this).children('i').attr('class', 'fa fa-eye-slash');
                } else {
                    $(this).children('i').attr('class', 'fa fa-eye');
                }
            });

            $('.toggleChances').click(function() {
              $('.product__probability').toggle();
            });

            var gradientColors = [
              'linear-gradient(to left top, #fe2b00, #f7d500)',
              'linear-gradient(to left top, #003e78, #33fff3)',
              'linear-gradient(to left top, #00adbd, #7cffd0)',
              'linear-gradient(to left top, #3f1464, #dd2f8d)',
              'linear-gradient(to left top, #140078, #4dcbff)',
              'linear-gradient(to left top, #006f3f, #bdff3d)'
            ];

            var productItem = document.querySelectorAll(".product__item");

            for (i = 0; i < productItem.length; i++) {
                productItem[i].style.backgroundImage = gradientColors[i % 5];
            }
        });
    </script>
@endpush
