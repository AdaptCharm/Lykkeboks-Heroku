@extends('frontend.layouts.master')

@section('title', 'Redeem & Win')
@section('content')
<div id="app">
    <input type="hidden" id="boxID" value="{{ $boxID }}">
    <redeem></redeem>
</div>
@endsection

@push('style')
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/css/spinner.css') }}">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/prismjs@1.16.0/themes/prism.css">
<style type="text/css">
    #wonedProducts table tbody{ overflow-y: auto; height: 100px; }
</style>

@endpush

@push('script')
<script src="https://cdn.jsdelivr.net/npm/jquery-ui-dist@1.12.1/jquery-ui.min.js"></script>
<script src="{{ asset('frontend/js/spinner.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/prismjs@1.16.0/prism.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
<script src="{{ asset('frontend/js/redeem.js') }}" type="text/javascript"></script>
@endpush
