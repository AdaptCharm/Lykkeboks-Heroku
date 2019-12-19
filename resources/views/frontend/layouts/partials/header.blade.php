<!-- Header Mobile -->
<div class="header-mobile clearfix" id="header-mobile">
    <div class="header-mobile__logo">
        <span class="main-nav__back"></span>
        <a href="{{ route('home') }}">
            <img src="{{ asset('logo.svg') }}" alt="Lykkeboks logo" class="header-mobile__logo-img">
        </a>
    </div>
    <div class="header-mobile__inner">
        <a id="header-mobile__toggle" class="burger-menu-icon"><span class="burger-menu-icon__line"></span></a>
    </div>
</div>
<!-- Header Mobile / End -->

<!-- Header Desktop -->
<header class="header header--layout-3">

    <!-- Header Top Bar -->
    <div class="header__top-bar clearfix">
        <div class="container">
            <div class="header__top-bar-inner">

                <!-- Social Links -->
                <ul class="social-links social-links--inline social-links--main-nav social-links--top-bar">
                    <li class="social-links__item">
                        <a href="#" class="social-links__link" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Facebook">
                            <i class="fab fa-facebook-square"></i>
                        </a>
                    </li>
                    <li class="social-links__item">
                        <a href="#" class="social-links__link" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Instagram">
                            <i class="fab fa-instagram"></i>
                        </a>
                    </li>
                </ul>
                <!-- Social Links / End -->

                <!-- Account Navigation -->
                <ul class="nav-account">

                    @auth
                        @if(Auth::user()->type == 2)

                            <li class="nav-account__item"><a>Velkommen tilbake, <span class="highlight">{{ Auth::user()->name }}</span></a></li>
                            <li class="nav-account__item main-nav__sub-title"><a href="#">Min konto</a>
                                <ul class="main-nav__sub">
                                    <li><a href="{{ route('profile') }}">Min profil</a></li>
                                    <li><a href="{{ route('deposit') }}">Gjør et innskudd</a></li>
                                </ul>
                            </li>
                            <form action="{{ route('logout') }}" method="post">
                                <input type="hidden" name="_token" value="{{ Session::token() }}">
                                <button class="nav-account__item nav-account__item--logout">Logg ut</button>
                            </form>

                        @else

                            <li class="nav-account__item"><a>Velkommen tilbake, <span class="highlight">{{ Auth::user()->name }}</span></a></li>
                            <li class="nav-account__item"><a>Språk: <span class="highlight">Norsk</span></a></li>
                            <li class="nav-account__item"><a href="#">Min konto</a>
                                <ul class="main-nav__sub">
                                    <li><a href="{{ route('admin.orders.index') }}">Ordreoversikt</a></li>
                                    <li><a href="{{ route('admin.boxes.index') }}">Boksoversikt</a></li>
                                    <li><a href="{{ route('admin.products.index') }}">Produktoversikt</a></li>
                                    <li><a href="{{ route('admin.faqs.edit') }}">Endre ofte stilte spørsmål</a>
                                    </li>
                                    <li><a href="{{ route('admin.settings') }}">Innstillinger</a></li>
                                </ul>
                            </li>
                            <form action="{{ route('logout') }}" method="post">
                                <input type="hidden" name="_token" value="{{ Session::token() }}">
                                <button class="nav-account__item nav-account__item--logout">Logg ut</button>
                            </form>

                        @endif

                        @else

                        <li class="nav-account__item nav-account__item--wishlist"><a>Utgivelsesnotater &nbsp; <span class="label label-danger extra-small">Kommer snart</span></a></li>
                        <li class="nav-account__item"><a>Språk: <span class="highlight">Norsk</span></a></li>
                        <li class="nav-account__item"><a href="#loginModal" role="button" data-toggle="modal">Logg inn</a></li>
                        <li class="nav-account__item"><a href="#registerModal" role="button" data-toggle="modal">Opprett en konto</a></li>

                    @endauth
                </ul>
                <!-- Account Navigation / End -->

            </div>
        </div>
    </div>
    <!-- Header Top Bar / End -->


    <!-- Header Primary -->
    <div class="header__primary">
        <div class="container">
            <div class="header__primary-inner">

                <!-- Header Logo -->
                <div class="header-logo">
                    <a href="{{ route('home') }}"><img src="{{ asset('logo.svg') }}" alt="Lykkeboks logo" class="header-logo__img"></a>
                </div>
                <!-- Header Logo / End -->

                <!-- Main Navigation -->
                <nav class="main-nav clearfix">
                    <ul class="main-nav__list">
                        <li class=""><a href="/">Hjem</a></li>
                        <li class=""><a href="/how-it-works">Bruksanvisning &nbsp; <span class="label label-new small">Nytt</span></a></li>
                    </ul>
                </nav>
                <!-- Main Navigation / End -->

                <div class="header__primary-spacer"></div>

                @auth
                    @if(Auth::user()->type == 2)

                        <!-- Header Info Block -->
                        <ul class="info-block info-block--header">
                            <li class="info-block__item info-block__item--shopping-cart js-info-block__item--onclick has-children">
                                <a href="/" class="info-block__link-wrapper">
                                    <svg role="img" class="df-icon df-icon--shopping-cart">
                                        <use xlink:href="{{ asset('images/icons.svg#cart') }}"></use>
                                    </svg>
                                    <h6 class="info-block__heading">Lommebok</h6>
                                    <div class="info-block__cart-wrapper">
                                        @auth
                                            <span class="info-block__cart-sum total-balance" id="balance">
                                                {{ number_format(auth()->user()->balanceFloat , 0, '.', ' ') }}
                                            </span>
                                        @endauth
                                        <span class="info-block__cart-currency">NOK</span>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <!-- Header Info Block / End -->

                    @endif
                @endauth

            </div>
        </div>
    </div>
    <!-- Header Primary / End -->
</header>
