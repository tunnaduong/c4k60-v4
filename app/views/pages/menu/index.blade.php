@extends('layouts.default')

@section('title', 'Đăng nhập')

@section('content')
    <div id="root">
        {{-- Menu screen --}}
        @if (isset($_SESSION['user']))
            <div style="display: flex;flex-direction: row;gap: 10px;align-items:center;margin-bottom: 13px"
                goto="/profile/{{ $_SESSION['user']->username }}">
                <img src={{ $_SESSION['user']->avatar }} width="50" style="border-radius: 50%">
                <div>
                    <h3 style="font-size: 20px;font-weight: 500">{{ $_SESSION['user']->name }}</h3>
                    <span style="font-size: 14px;color: gray">Xem trang cá nhân của bạn</span>
                </div>
            </div>
        @else
            <div style="display: flex;flex-direction: row;gap: 10px;align-items:center;margin-bottom: 13px" goto="/login">
                <img src="/assets/images/user.png" width="50" style="border-radius: 50%">
                <div>
                    <h3 style="font-size: 20px;font-weight: 500">Khách</h3>
                    <span style="font-size: 14px;color: gray">Đăng nhập để xem thông tin cá nhân</span>
                </div>
            </div>
        @endif
        <hr style="border-top: 1px solid gray">
        <div style="display:flex;flex-direction: row;align-items:center;padding: 10px 0;gap: 10px" goto="/gallery">
            <ion-icon name="images-outline" style="font-size: 24px;color: #ffa93c"></ion-icon>
            <span style="flex: 1">Ảnh và video</span>
            <ion-icon name="chevron-forward-outline" style="font-size: 24px;color: #9e9f9f"></ion-icon>
        </div>
        <div style="display:flex;flex-direction: row;align-items:center;padding: 10px 0;gap: 10px" goto="/birthdays">
            <ion-icon name="gift-outline" style="font-size: 24px;color: #fd6664"></ion-icon>
            <span style="flex: 1">Sinh nhật sắp tới</span>
            <ion-icon name="chevron-forward-outline" style="font-size: 24px;color: #9e9f9f"></ion-icon>
        </div>
        <div style="display:flex;flex-direction: row;align-items:center;padding: 10px 0;gap: 10px" goto="/profiles">
            <ion-icon name="people-outline" style="font-size: 24px;color: #009c00"></ion-icon>
            <span style="flex: 1">Hồ sơ thành viên</span>
            <ion-icon name="chevron-forward-outline" style="font-size: 24px;color: #9e9f9f"></ion-icon>
        </div>
        <div style="display:flex;flex-direction: row;align-items:center;padding: 10px 0;gap: 10px" goto="/friends-near-me">
            <ion-icon name="location-outline" style="font-size: 24px;color: #de0092"></ion-icon>
            <span style="flex: 1">Bạn bè quanh đây</span>
            <ion-icon name="chevron-forward-outline" style="font-size: 24px;color: #9e9f9f"></ion-icon>
        </div>
        <div style="display:flex;flex-direction: row;align-items:center;padding: 10px 0;gap: 10px" goto="/listen-together">
            <ion-icon name="musical-notes-outline" style="font-size: 24px;color: #00b7b4"></ion-icon>
            <span style="flex: 1">Nghe nhạc cùng nhau</span>
            <ion-icon name="chevron-forward-outline" style="font-size: 24px;color: #9e9f9f"></ion-icon>
        </div>
        <div style="display:flex;flex-direction: row;align-items:center;padding: 10px 0;gap: 10px" goto="/calendar">
            <ion-icon name="calendar-outline" style="font-size: 24px;color: #9b0041"></ion-icon>
            <span style="flex: 1">Lịch & Sự kiện</span>
            <ion-icon name="chevron-forward-outline" style="font-size: 24px;color: #9e9f9f"></ion-icon>
        </div>
        <div style="display:flex;flex-direction: row;align-items:center;padding: 10px 0;gap: 10px" goto="/feedback">
            <ion-icon name="chatbox-ellipses-outline" style="font-size: 24px;color: #216bfe"></ion-icon>
            <span style="flex: 1">Đóng góp ý kiến</span>
            <ion-icon name="chevron-forward-outline" style="font-size: 24px;color: #9e9f9f"></ion-icon>
        </div>
        <div style="display:flex;flex-direction: row;align-items:center;padding: 10px 0;gap: 10px" goto="/report-a-problem">
            <ion-icon name="warning-outline" style="font-size: 24px;color: #bea500"></ion-icon>
            <span style="flex: 1">Báo cáo sự cố</span>
            <ion-icon name="chevron-forward-outline" style="font-size: 24px;color: #9e9f9f"></ion-icon>
        </div>
        <div style="display:flex;flex-direction: row;align-items:center;padding: 10px 0;gap: 10px" goto="/settings">
            <ion-icon name="settings-outline" style="font-size: 24px;color: black"></ion-icon>
            <span style="flex: 1">Cài đặt</span>
            <ion-icon name="chevron-forward-outline" style="font-size: 24px;color: #9e9f9f"></ion-icon>
        </div>
        @if (isset($_SESSION['user']))
            <button style="width: 100%;height: 40px;background-color:#dadada;border-radius: 7px;margin-top:10px"
                data-bs-toggle="modal" data-bs-target="#logoutConfirmModal">Đăng
                xuất</button>
        @else
            <button style="width: 100%;height: 40px;background-color:#dadada;border-radius: 7px;margin-top:10px"
                goto="/login">Đăng
                nhập</button>
        @endif
    </div>
    <div class="modal fade" id="logoutConfirmModal" tabindex="-1" aria-labelledby="logoutConfirmModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="logoutConfirmModalLabel">Đăng xuất khỏi tài khoản</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    Bạn có chắc chắn muốn đăng xuất không?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy bỏ</button>
                    <a goto="/logout" class="btn btn-danger">Đăng xuất</a>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('menuIcon', 'menu')
@section('menuActive', 'active')
