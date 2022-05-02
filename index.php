<?php
require $_SERVER['DOCUMENT_ROOT'] . "/requires/credits.php";
require $_SERVER['DOCUMENT_ROOT'] . "/requires/serverconnect.php";
$title = 'C4K60';
include $_SERVER['DOCUMENT_ROOT'] . "/includes/head.php";
include $_SERVER['DOCUMENT_ROOT'] . "/includes/menu.php";
?>
<div id="root">
    <div id="homeSlideshow" class="carousel carousel-dark slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#homeSlideshow" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#homeSlideshow" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#homeSlideshow" data-bs-slide-to="2" aria-label="Slide 3"></button>
            <button type="button" data-bs-target="#homeSlideshow" data-bs-slide-to="3" aria-label="Slide 4"></button>
            <button type="button" data-bs-target="#homeSlideshow" data-bs-slide-to="4" aria-label="Slide 5"></button>
        </div>
        <div class="carousel-inner curve">
            <div class="carousel-item active" data-bs-interval="3000">
                <div id="slideshow--1" class="d-block w-100" alt="Slideshow Image #1">
                    <div class="fade-to-black"></div>
                </div>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Chào mừng đến với C4K60</h5>
                    <p>Cổng thông tin điện tử lớp 12 chuyên Nga Khóa 60 Trung học Phổ thông Chuyên Biên Hòa.</p>
                </div>
            </div>
            <div class="carousel-item" data-bs-interval="3000">
                <div id="slideshow--2" class="d-block w-100" alt="Slideshow Image #2">
                    <div class="fade-to-black"></div>
                </div>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Nhanh, gọn, tiện lợi</h5>
                    <p>Đó là những từ có thể miêu tả trang web này.</p>
                </div>
            </div>
            <div class="carousel-item" data-bs-interval="3000">
                <div id="slideshow--3" class="d-block w-100" alt="Slideshow Image #3">
                    <div class="fade-to-black"></div>
                </div>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Không bao giờ bỏ lỡ thông tin</h5>
                    <p>Không phải mất thời gian lục lọi thông tin trong nhóm lớp là lợi ích mà trang web này mang lại.
                    </p>
                </div>
            </div>
            <div class="carousel-item" data-bs-interval="2000">
                <div id="slideshow--4" class="d-block w-100" alt="Slideshow Image #4">
                    <div class="fade-to-black"></div>
                </div>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Kết nối thầy cô và bạn bè</h5>
                    <p>Gắn kết mọi người trong tập thể lớp và giáo viên với nhau, dù ở bất kỳ nơi đâu. Đó là tiêu chí
                        hoạt động của web C4K60.</p>
                </div>
            </div>
            <div class="carousel-item" data-bs-interval="3000">
                <div id="slideshow--5" class="d-block w-100" alt="Slideshow Image #5">
                    <div class="fade-to-black"></div>
                </div>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Và còn nhiều tính năng khác...</h5>
                    <p>Hãy tự mình khám phá nhé! Chúc bạn có một trải nghiệm thú vị.</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#homeSlideshow" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Trước</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#homeSlideshow" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Tiếp</span>
        </button>
    </div>
    <div class="full-width user-greeting root-element" onclick="go('/login')">
        <div class="user-greeting--avatar-wrapper">
            <img src="/assets/images/user.png" class="user-greeting--avatar" alt="Unloggedin User Avatar">
        </div>
        <div class="user-greeting--greeting">
            <h5>Bạn chưa đăng nhập!</h5>
            <p>Hãy đăng nhập để trải nghiệm đầy đủ các tính năng tuyệt vời của trang web.</p>
        </div>
        <div class="user-greeting--icon-wrapper">
            <ion-icon name="chevron-forward-outline"></ion-icon>
        </div>
    </div>
    <div class="shortcuts full-width root-element mt-3 grid-container">
        <div class="shortcuts--button grid-item" onclick="go('/photos')">
            <div class="shortcuts--button-icon btn-photos">
                <ion-icon name="images"></ion-icon>
            </div>
            <div class="shortcuts--button-title">Thư viện ảnh</div>
        </div>
        <div class="shortcuts--button grid-item" onclick="go('/birthdays')">
            <div class="shortcuts--button-icon btn-birthdays">
                <ion-icon name="gift"></ion-icon>
            </div>
            <div class="shortcuts--button-title">Sinh nhật sắp tới</div>
        </div>
        <div class="shortcuts--button grid-item" onclick="go('/profile.php')">
            <div class="shortcuts--button-icon btn-profile">
                <ion-icon name="people"></ion-icon>
            </div>
            <div class="shortcuts--button-title">Hồ sơ thành viên</div>
        </div>
        <div class="shortcuts--button grid-item" onclick="go('/friends-near-me')">
            <div class="shortcuts--button-icon btn-near-here">
                <ion-icon name="location"></ion-icon>
            </div>
            <div class="shortcuts--button-title">Bạn bè gần đây</div>
        </div>
        <div class="shortcuts--button grid-item" onclick="go('/listen-together')">
            <div class="shortcuts--button-icon btn-listen">
                <ion-icon name="musical-notes"></ion-icon>
            </div>
            <div class="shortcuts--button-title">Nghe nhạc cùng nhau</div>
        </div>
        <div class="shortcuts--button grid-item" onclick="go('/calendar')">
            <div class="shortcuts--button-icon btn-calendar">
                <ion-icon name="calendar-number"></ion-icon>
            </div>
            <div class="shortcuts--button-title">Lịch</div>
        </div>
    </div>
</div>
<script src="/assets/js/script.js"></script>
<script>
Waves.attach('.user-greeting');
Waves.attach('.menu--search');
Waves.attach('.shortcuts--button');
Waves.init();
</script>