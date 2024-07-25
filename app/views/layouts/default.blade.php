<!DOCTYPE html>
<html>
@php
    $rel = isset($_GET['rel']) ? $_GET['rel'] : null;
@endphp

@if ($rel != 'page')

    <head>
        @include('includes.head')
    </head>
@endif

<body>
    @if ($rel != 'page')
        <!-- Preloader -->
        <div id="preloader" class="preloader">
            <img src="/assets/images/text-logo.png" alt="C4K60 Logo">
        </div>
        @include('includes.menu')
        <div id="screen">
    @endif
    <title>@yield('title') - C4K60</title>
    @yield('content')
    @if ($rel != 'page')
        </div>
        @include('includes.navbar')
        <script src="/assets/js/script.js"></script>
    @endif
</body>

</html>
