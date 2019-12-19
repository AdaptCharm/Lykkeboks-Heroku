@extends('frontend.layouts.master')

@section('title', 'Find Physical Goods inside Online Boxes')
@section('content')
<div class="container">
    <div class="row">

        @foreach($boxes as $box)
        <div class="col-md-4">
          <!-- Widget: Match Announcement -->
          <aside class="widget widget--sidebar card widget-preview">
            <div class="widget__title card__header">
              <h4>{{ $box->name }}</h4>
            </div>
            <div class="widget__content card__content">

              <!-- Match Preview -->
              <div class="match-preview">
                <section class="match-preview__body">

                  <div class="match-preview__match-info match-preview__match-info--header">
                    <div class="match-preview__match-place">Sist oppdatert: </div>
                    <?php if ($box->updated_at == NULL): ?>
                      <time class="match-preview__match-time">{{ $box->created_at }}</time>
                    <?php else: ?>
                      <time class="match-preview__match-time">{{ $box->updated_at }}</time>
                    <?php endif; ?>
                  </div>

                  <div class="match-preview__content">

                    <div class="match-preview__vs">
                      <div class="match-preview__conj">
                        <div class="match-preview__conj" style="position: relative; left: 50%; transform: translateX(-50%);">
                          <img src="{{ asset($box->image_path) }}" class="card-img-top p-3">
                        </div>
                      </div>
                    </div>

                  </div>
                </section>
                <div class="match-preview__action match-preview__action--ticket">
                  <a href="{{ route('box-details', [$box->id, Str::slug($box->name, '-')]) }}" class="btn btn-primary-turquoise btn-lg btn-block">Se innhold</a>
                </div>
              </div>
              <!-- Match Preview / End -->

            </div>
          </aside>
        </div>
        @endforeach
    </div>

    <div id="UnboxingProcess" class="row mt-5" style="display: none">
        <div class="col-12 mb-5">
            <h1 class="text-center">Unboxing Process</h1>
        </div>
        <div class="col-md-4 text-center">
            <div class="card border-0 pb-5 processItem">
                <h4>Transparent</h4>
                <i class="fa fa-search"></i>
                <hr>
                <p class="about-text">All goods and their probabilities are <strong>always visible</strong> for major transparency</p>
            </div>
        </div>
        <div class="col-md-4 text-center">
            <div class="card border-0 pb-5 processItem">
                <h4>Easy</h4>
                <i class="fa fa-thumbs-up"></i>
                <hr>
                <p class="about-text">Purchase your first eBox in <strong>a few easy steps</strong></p>
            </div>
        </div>
        <div class="col-md-4 text-center">
            <div class="card border-0 pb-5 processItem">
                <h4>Reliable</h4>
                <i class="fa fa-shield-alt"></i>
                <hr>
                <p class="about-text">100% of purchases are made on verified websites. <strong>All goods are original and with warranty</strong>    </p>
            </div>
        </div>
    </div>
</div>
@endsection
