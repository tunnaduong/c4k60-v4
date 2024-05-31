<?php
require_once $_SERVER['DOCUMENT_ROOT'] . '/app/requires/serverconnect.php';
require_once $_SERVER['DOCUMENT_ROOT'] . '/app/requires/credits.php';
require_once $_SERVER['DOCUMENT_ROOT'] . '/app/requires/serverconnect.php';
$title = 'C4K60';
include_once $_SERVER['DOCUMENT_ROOT'] . '/app/includes/head.php';
include_once $_SERVER['DOCUMENT_ROOT'] . '/app/includes/menu.php';
?>
<div id="screen">
    <div id="root">
        {{-- Login Form --}}
        <div class="card" style="margin: -15px">
            <div class="card-header">
                <br>
                <h3 class="h4">Chào mừng bạn trở lại!</h3>
            </div>
            <div class="card-body">
                <form action="/login" method="POST">
                    <div class="mb-3">
                        <label for="username" class="form-label">Tên đăng nhập</label>
                        <input type="text" class="form-control" id="username" name="username" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Mật khẩu</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Đăng nhập</button>
                </form>
            </div>
            <!-- if error then show -->
            @unless (empty($error))
                <div class="alert alert-danger mx-3" role="alert">
                    {{ $error }}
                </div>
            @endunless
        </div>
    </div>
</div>
<?php
require_once $_SERVER['DOCUMENT_ROOT'] . '/app/includes/navbar.php'; ?>
<script src="/assets/js/script.js"></script>
