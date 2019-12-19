<footer id="footer" class="footer">

    <!-- Footer Info -->
    <div class="footer-info">
        <div class="container">

            <div class="footer-info__inner">

                <!-- Info Block -->
                <div class="info-block info-block--horizontal">
                    <div class="info-block__item info-block__item--helmet">
                        <h6 class="info-block__heading">Bli med i teamet vårt!</h6>
                        <a class="info-block__link" href="mailto:team@lykkeboks.no">team@lykkeboks.no</a>
                    </div>
                    <div class="info-block__item">
                        <h6 class="info-block__heading">Kontakt oss</h6>
                        <a class="info-block__link" href="mailto:kontakt@lykkeboks.no">kontakt@lykkeboks.no</a>
                    </div>
                </div>
                <!-- Info Block / End -->

            </div>
        </div>
    </div>
    <!-- Footer Info / End -->

    <!-- Footer Widgets -->
    <div class="footer-widgets">
        <div class="footer-widgets__inner">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-lg-3">
                        <div class="footer-col-inner">

                            <!-- Footer Logo -->
                            <div class="footer-logo">
                                <a href="{{ route('home') }}">
                                    <img src="{{ asset('logo.svg') }}" alt="Lykkeboks logo" class="footer-logo__img">
                                </a>
                            </div>
                            <!-- Footer Logo / End -->

                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-3">
                        <div class="footer-col-inner">
                            <!-- Widget: Contact Info -->
                            <div class="widget widget--footer widget-contact-info">
                                <h4 class="widget__title">Forbehold om feil</h4>
                                <div class="widget__content">
                                    <div class="widget-contact-info__desc">
                                        <p>
                                            Vi tar forbehold om eventuelle feil og mangler på dette nettstedet.
                                            Mer utdypende kan det være feil med priser eller andre forhold som
                                            innebærer at vi ikke kan levere i henhold til gitt informasjon.
                                            Ved slike situasjoner vil du som kunde få melding om dette, samt
                                            eventuelt informasjon om hva vi kan tilby i stedet. Du vil da få
                                            mulighet til å akseptere vårt nye tilbud med endringene som er
                                            angitt eller kansellere bestillingen dersom du ønsker dette.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!-- Widget: Contact Info / End -->
                        </div>
                    </div>
                    <div class="clearfix visible-sm"></div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="footer-col-inner">

                            <!-- Widget: Instagram -->
                            <div class="widget widget--footer widget-instagram">
                                <h4 class="widget__title">Instagram Profil</h4>
                                <div class="widget__content">
                                    <ul id="instagram-feed" class="widget-instagram__list"></ul>
                                    <a href="#" class="btn btn-sm btn-instagram btn-icon-right">Følg vår instagram &nbsp; <i class="fas fa-arrow-right"></i></a>
                                </div>
                            </div>
                            <!-- Widget: Instagram / End -->

                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="footer-col-inner">

                            <!-- Widget: Contact / End -->
                            <div class="widget widget--footer widget-contact">
                                <h4 class="widget__title">Kontaktskjema</h4>
                                <div class="widget__content">
                                    <form action="#" class="contact-form">
                                        <div class="form-group form-group--xs">
                                            <input type="email" class="form-control input-sm" id="contact-form-email" placeholder="Skriv inn e-postadressen din...">
                                        </div>
                                        <div class="form-group form-group--xs">
                                            <textarea class="form-control input-sm" name="contact-form-message" rows="6" placeholder="Din melding..."></textarea>
                                        </div>
                                        <button type="submit" class="btn btn-primary-turquoise btn-sm btn-block">Send melding</button>
                                    </form>
                                </div>
                            </div>
                            <!-- Widget: Contact / End -->

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- Footer Widgets / End -->

    <!-- Footer Secondary -->
    <div class="footer-secondary footer-secondary--has-decor">
        <div class="container">
            <div class="footer-secondary__inner">
                <div class="row">
                    <div class="col-md-10 offset-md-1">
                        <div class="footer-copyright">© Opphavsrett {{ date('Y') }} <a href="/">Lykkeboks</a> &nbsp; | &nbsp; Med enerett. &nbsp; Alle rettigheter forbeholdes.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer Secondary / End -->
</footer>
