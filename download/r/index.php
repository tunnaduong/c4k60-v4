<?php
// Lấy thông tin liên kết app store và CH Play
$android_app_id = 'com.c4k60.mobile';
$ios_app_id = 'c4k60/id6471649935';

// Phân chia nền tảng tải về
if (isset($_SERVER['HTTP_USER_AGENT'])) {
    if (strpos($_SERVER['HTTP_USER_AGENT'], 'Android') !== false) {
        $download_url = "https://play.google.com/store/apps/details?id=$android_app_id";
    } else if (strpos($_SERVER['HTTP_USER_AGENT'], 'iPhone') !== false) {
        $download_url = "https://apps.apple.com/vn/app/$ios_app_id";
    } else {
        $download_url = '';
    }
}

// Hiển thị nút tải xuống hoặc liên kết chuyển hướng
if ($download_url != '') {
    if (strpos($download_url, 'play.google.com') !== false) {
        //gg play
        header("Location: $download_url");
    } else {
        //app store
        header("Location: $download_url");
    }
} else {
    // echo "Ứng dụng không khả dụng cho thiết bị của bạn.";
    header("Location: ../");
}