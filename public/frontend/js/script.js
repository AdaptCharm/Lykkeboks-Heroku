$(document).ready(function() {
    function pay(amount) {
        var handler = StripeCheckout.configure({
            key: 'pk_test_XgeQxMRQMW2boifqH5bbwCQI',
            locale: 'auto',
            token: function(token) {
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
                            Swal.fire('Congrats!', response.message, 'success').then(function() {
                                window.location.replace("{{ route('home') }}");
                            });
                        } else {
                            Swal.fire('Opps!', response.message, 'error');
                        }
                    },
                    error: (error) => {
                        Swal.fire('Opps!', 'Something went wrong!', 'error');
                    }
                });
            }
        });
        handler.open({
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
        }
    });
});
