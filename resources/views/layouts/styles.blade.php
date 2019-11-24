<link rel="stylesheet" href="{{ mix('css/front.css') }}">

@include('layouts.highlight.style')

<link rel="stylesheet" href="{{ asset('css/front/custom-without-mix.css?v=' . time()) }}">

@yield('styles')
