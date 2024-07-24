<!DOCTYPE html>
<html>
@php
    $rel = isset($_GET['rel']) ? $_GET['rel'] : null;
@endphp

@if ($rel != 'page')

    <head>
        <title>@yield('title') - C4K60</title>
        @include('includes.head')
    </head>
@endif

<body>
    @if ($rel != 'page')
        @include('includes.menu')
        <div id="screen">
    @endif
    @yield('content')
    @if ($rel != 'page')
        </div>
        @include('includes.navbar')
        <script src="/assets/js/script.js"></script>
    @endif
</body>

</html>
