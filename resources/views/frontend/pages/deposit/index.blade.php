@extends('frontend.layouts.master')

@section('title', 'Deposit to your account')
@section('content')
<div class="container my-5">

    <!-- Checkout Form -->
    <form action="#" class="df-checkout bootstrap-form needs-validation" novalidate>

      <div class="row">
        <div class="col-lg-6">
          <!-- Billing Details -->
          <div class="card">
            <div class="card__header card__header--has-checkbox">
              <h4>Gjør et innskudd</h4>
            </div>
            <div class="card__content">
              <div class="df-billing-fields">

                <div class="row">

                  <div class="col-md-12">
                    <div class="form-group">
                      <label for="billing_first_name">Beløp <abbr class="required" title="required">*</abbr></label>
                      <input type="number" id="amount" class="form-control" onkeydown="return event.keyCode !== 69" placeholder="Skriv inn ønsket beløp..." autocomplete="off" required>
                      <div class="valid-feedback">
                        Ser bra ut!
                      </div>
                      <div class="invalid-feedback">
                        Huff da! :(
                      </div>
                    </div>
                  </div>

                </div>

              </div>
            </div>
          </div>
          <!-- Billing Details / End -->
        </div>


        <div class="col-lg-6">

        <div class="card card--no-paddings">
            <div class="card__header">
              <h4>Betalingsmetoder</h4>
            </div>
            <div class="card__content">
              <!-- Checkout Payment -->
              <div class="df-checkout-payment">
                <ul class="df_payment_methods" id="df_payment_methods" role="tablist" aria-multiselectable="true">

                  <li class="df_payment_method panel">
                    <label class="radio radio-inline" for="payment_method_basc" data-toggle="collapse" data-target="#payment_method_basc_panel" id="headingOne">
                      <input type="radio" id="payment_method_basc" name="payment_method" value="cheque" checked> Visa/Mastercard
                      <span class="radio-indicator"></span>
                    </label>
                    <div id="payment_method_basc_panel" class="payment_box collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#df_payment_methods">
                      <p>Betal med VISA eller Mastercard. Her kan du betale enten med bankkort eller kredittkort.</p>
                    </div>
                  </li>

                </ul>
              </div>
              <!-- Checkout Payment / End -->

              <div class="df-checkout-payment">
                <div class="place-order pt-0">
                  <input type="button" id="pay" class="btn btn-primary-turquoise btn-lg btn-block" value="Fortsett til betaling">
                </div>
              </div>

            </div>
          </div>
        </div>
      </div>
    </form>
    <!-- Checkout Form / End -->
</div>
</div>
@endsection
@push('script')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
<script src="https://checkout.stripe.com/checkout.js"></script>
<script>
    $(document).ready(function() {
    function pay(amount) {
        var handler = StripeCheckout.configure({
            key: '{{ env('STRIPE_KEY') }}',
            locale: 'auto',
            token: function(token) {
                $("#preloader").show();
                $.ajax({
                    url: '{{ route("deposit") }}',
                    method: 'post',
                    data: {
                        _token: '{{ csrf_token() }}',
                        tokenID: token.id,
                        amount: amount * 100
                    },
                    success: (response) => {
                        if(response.status == true) {
                            $('#amount').val('');
                            $("#preloader").hide();
                            Swal.fire('Congrats!', response.message, 'success').then(function() {
                                window.location.replace("{{ route('home') }}");
                            });
                        } else {
                            $("#preloader").hide();
                            Swal.fire('Opps!', response.message, 'error');
                        }
                    },
                    error: (error) => {
                        $("#preloader").hide();
                        Swal.fire('Opps!', 'Something went wrong!', 'error');
                    }
                });
            }
        });
        handler.open({
            email: '{{ auth()->user()->email }}',
            name: 'eMysteryBox Deposit',
            description: 'Deposit to your wallet and open the boxes.',
            amount: amount * 100
        });
    }

    $("#pay").click(function(e) {
        e.preventDefault();
        var amount = $('#amount').val();
        if(amount != '') {
            pay(amount);
        } else {
          $(".form-control").addClass('is-invalid');
          $("div.invalid-feedback").show().html('Vennligst skriv inn et gyldig beløp.');
        }
    });
});

</script>
@endpush
