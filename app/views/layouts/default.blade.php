<!DOCTYPE html>
<html>

<head>
    <title>@yield('title') - C4K60</title>
    @include('includes.head')
</head>

<body>
    @include('includes.menu')
    <div id="screen">
        @yield('content')
    </div>
    @php($home_outline = '----s')

    @include('includes.navbar')
    <script src="/assets/js/script.js"></script>
</body>

</html>
