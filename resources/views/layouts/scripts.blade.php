<script type="text/javascript" src="{{ mix('js/front/front.js') }}"></script>

@include('layouts.highlight.script')

<script type="text/javascript" src="{{ asset('js/front/custom-without-mix.js?v=' . time()) }}"></script>

@yield('scripts')