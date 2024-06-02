<!DOCTYPE html>
<html>

<head>
    <title>@yield('title') - C4K60</title>
    @include('includes.head')
</head>

<body>
    @include('includes.menu')
    <div id="screen">
        <div id="root" style="background-color: @yield('background-color', 'white')">
            <div
                style="display: flex;flex-direction:row;align-items:center;background: rgba(255, 255, 255, 0.75);backdrop-filter: blur(18px);margin: -15px -15px 10px;padding: 15px;border-bottom: 1px solid #e5e5e5;position:sticky;top:-15px;z-index: 99">
                <ion-icon name="arrow-back-outline" style="position: absolute;font-size: 24px;top: 18px"
                    onclick="history.back()"></ion-icon>
                <span class="default-panel--title" style="flex: 1;text-align:center">@yield('title')</span>
            </div>
            @yield('content')
        </div>
    </div>
    @include('includes.navbar')
    <script src="/assets/js/script.js"></script>
</body>

</html>
