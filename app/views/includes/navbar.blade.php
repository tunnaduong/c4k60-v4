<nav class="site-navbar">
    <div class="site-navbar--item @yield('homeActive')" goto="/">
        <ion-icon name="@yield('homeIcon', 'home-outline')"></ion-icon>
        <span class="site-navbar--item-title">Trang chủ</span>
    </div>
    <div class="site-navbar--item @yield('feedActive')" goto="/feed">
        <ion-icon name="@yield('feedIcon', 'newspaper-outline')"></ion-icon>
        <span class="site-navbar--item-title">Bảng tin</span>
    </div>
    <div class="site-navbar--item @yield('chatActive')" goto="/chat">
        <ion-icon name="@yield('chatIcon', 'chatbubble-outline')"></ion-icon>
        <span class="site-navbar--item-title">Chat</span>
    </div>
    <div class="site-navbar--item @yield('notiActive')" goto="/notifications">
        <ion-icon name="@yield('notiIcon', 'notifications-outline')"></ion-icon>
        <span class="site-navbar--item-title">Thông báo</span>
    </div>
    <div class="site-navbar--item @yield('menuActive')" goto="/menu">
        <ion-icon name="@yield('menuIcon', 'menu-outline')"></ion-icon>
        <span class="site-navbar--item-title">Menu</span>
    </div>
</nav>
