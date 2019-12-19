@extends('frontend.layouts.master')

@section('title', 'Update profile')
@section('content')
<div class="container mt-5">
    <ul class="nav nav-tabs" id="profileTabs" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="true">Profile</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="items-tab" data-toggle="tab" href="#items" role="tab" aria-controls="items" aria-selected="false">Items</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="shipments-tab" data-toggle="tab" href="#shipments" role="tab" aria-controls="shipments" aria-selected="false">Shipments</a>
        </li>
    </ul>
    <div class="tab-content mt-4 mb-5" id="prfoileTabContent">
        <div class="tab-pane fade show active" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            @include('frontend.pages.profile.partials.profile-tab')
        </div>
        <div class="tab-pane fade" id="items" role="tabpanel" aria-labelledby="items-tab">
            @include('frontend.pages.profile.partials.items-tab')
        </div>
        <div class="tab-pane fade" id="shipments" role="tabpanel" aria-labelledby="shipments-tab">
            @include('frontend.pages.profile.partials.shipments-tab')
        </div>
    </div>
</div>
@endsection

@push('script')
    <script type="text/javascript">
        $(document).ready(function(){
            var hash = window.location.hash;
            if (hash) {
                $('.nav-item a[href="' + hash + '"]').click();
            }

            $('.nav-item a').click(function (e) {
                window.location.hash = this.hash;
            });
            $(".sellBackBTN").click(function(e) {
                e.preventDefault();
                var elm = this;
                $("#preloader").show();
                $.ajax({
                    url         : "{{ route('sellBack') }}",
                    type        : "POST",
                    dataType    : "JSON",
                    data          : {
                        productID : $(this).attr('data-id'),
                        _token : '{{ csrf_token() }}'
                    },
                    "success"    : function(response){
                        if(response.status == true){
                            $("#preloader").hide();
                            $(".info-block__cart-sum.total-balance").html('$' + response.data.balance);
                            $(elm).parent().parent().remove();
                        }else{
                            $("#preloader").hide();
                            alert(response.message);
                        }
                    }
                });
            });
        });
    </script>
@endpush
