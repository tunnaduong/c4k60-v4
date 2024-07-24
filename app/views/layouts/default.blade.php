<!DOCTYPE html>
<html>

<head>
    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-YZG381JXWG"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
    
      gtag('config', 'G-YZG381JXWG');
    </script>
    <title>@yield('title') - C4K60</title>
    @include('includes.head')
</head>

<body>
    @include('includes.menu')
    <div id="screen">
        @yield('content')
    </div>
    @include('includes.navbar')
    <script src="/assets/js/script.js"></script>
</body>

</html>
