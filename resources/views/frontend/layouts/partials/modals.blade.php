<!-- Login modal -->
<div id="loginModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4>Logg inn</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <form action="{{ route('login') }}" method="post" id="login-form">
                    @csrf
                    <div class="form-group">
                        <span class="user-reminder float-right">Ny bruker? <a href="#"
                                                                              id="new-user">Klikk her</a></span>
                        <label for="">E-postadresse</label>
                        <input type="email" name="email" id="email"
                               class="form-control {{ $errors->has('email') ? 'is-invalid' : ''}}"
                               placeholder="Skriv inn e-postadressen din..." required>
                        <span id="invalid-login-feedback" class="invalid-feedback"></span>
                        <span id="valid-login-feedback" class="text-success"></span>
                    </div>
                    <div class="form-group">
                        <label for="">Passord</label>
                        <input type="password" name="password" id="password"
                               class="form-control {{ $errors->has('password') ? 'is-invalid' : ''}}"
                               placeholder="Skriv inn passordet ditt..." required>
                        @if($errors->has_error)
                            <span class="invalid-feedback">{{ $errors->first('password') }}</span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label class="checkbox checkbox-inline">
                            <input name="remember" type="checkbox" id="customCheck1"> Husk meg <span
                                    class="checkbox-indicator"></span>
                        </label>
                        <span class="password-reminder float-right">Glemt passord? <a href="#" id="forgot-password">Klikk her</a></span>
                    </div>
                    <div class="form-group form-group--sm">
                        <button class="btn btn-primary-turquoise btn-lg btn-block">Logg inn</button>
                    </div>
                    <div class="form-group form-group--sm">
                        <a href="{{ url('/auth/redirect/facebook') }}" class="btn btn-facebook btn-lg btn-block">Logg
                            inn with Facebook</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>



<!-- Register modal -->
<div id="registerModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4>Opprett en konto</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <form action="{{ route('register') }}" method="post" id="register-form">
                    <input type="hidden" name="_token" value="{{ Session::token() }}">
                    <div class="form-group">
                        <p><span id="valid-register-feedback" class="text-success invalid-feedback"></span></p>
                        <p><span id="invalid-register-feedback" class="text-danger invalid-feedback"></span></p>
                        <span class="user-reminder float-right">Eksisterende bruker? <a href="#" id="existing-user">Klikk her</a></span>
                        <label for="">Fullt navn</label>
                        <input type="text" name="name"
                               class="form-control {{ $errors->has('name') ? 'is-invalid' : ''}}"
                               placeholder="Skriv inn navnet dit..." required>
                        <span id="invalid-name" class="invalid-feedback"></span>
                    </div>
                    <div class="form-group">
                        <label for="">Email</label>
                        <input type="email" name="email"
                               class="form-control {{ $errors->has('email') ? 'is-invalid' : ''}}"
                               placeholder="Skriv inn e-postadressen din..." required>
                        <span id="invalid-email" class="invalid-feedback">{{ $errors->first('email') }}</span>
                    </div>
                    <div class="form-group">
                        <label for="">Passord</label>
                        <input type="password" name="password"
                               class="form-control {{ $errors->has('password') ? 'is-invalid' : ''}}"
                               placeholder="Skriv inn passordert ditt..." required>
                        <span id="invalid-password" class="invalid-feedback">{{ $errors->first('email') }}</span>
                    </div>
                    <div class="form-group form-group--sm">
                        <button class="btn btn-primary-turquoise btn-lg btn-block">Opprett en konto</button>
                    </div>
                    <div class="form-group form-group--sm">
                        <a href="{{ url('/auth/redirect/facebook') }}" class="btn btn-facebook btn-lg btn-block">Opprett
                            en konto with Facebook</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>



<!-- Forgot password modal -->
<div id="forgotPasswordModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4>Tilbakestill passord</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <form action="{{ route('password.email') }}" method="post" id="forget-password">
                    <input type="hidden" name="_token" value="{{ Session::token() }}">
                    <div class="form-group">
                        <label for="">E-postadresse</label>
                        <input id="forgetEmail" type="email" name="email"
                               class="form-control {{ $errors->has('email') ? 'is-invalid' : ''}}"
                               placeholder="Skriv inn e-postadressen din..." required>
                        {{--                        @if($errors->has_error)--}}
                        <span id="invalid-email-feedback" style="display: block !important;"
                              class="invalid-feedback"></span>
                        {{--                            <span class="invalid-feedback">{{ $errors->first('email') }}</span>--}}
                        {{--                        @endif--}}
                    </div>
                    <div class="form-group">
                        <span class="user-reminder">Tilbake? <a href="#" id="back-to-login">Klikk her</a></span>
                    </div>
                    <div class="form-group form-group--sm">
                        <button class="btn btn-primary-turquoise btn-lg btn-block">Tilbakestill passord</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
