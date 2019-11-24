{{-- Highlight type available options --}}
{{--{{ $type = 'default' }}--}}
{{--{{ $type = 'idea' }}--}}

@php
    $type = 'dracula';
    $pathHighlightType = 'css/front/highlight/' . $type . '.css?v=' . time();
@endphp

<link rel="stylesheet" href="{{ asset($pathHighlightType) }}">
