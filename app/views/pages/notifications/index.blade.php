@extends('layouts.screen')

@section('title', 'Thông báo lớp')

@section('content')
    <div style="display: flex;flex-direction:row;gap:10px">
        <div style="background-color: #dbeafe;color:#5489f0;padding: 5px 10px;border-radius:25px;font-weight: 500"
            class="text-zoom" goto>Tất cả
        </div>
        <div style="background-color: #f3f4f6;padding: 5px 10px;border-radius: 25px;font-weight: 500" class="text-zoom" goto>
            Chưa
            đọc</div>
    </div>
    <div style="display: flex;flex-direction:row;justify-content:space-between;margin-top: 15px;align-content:center">
        <div class="text-zoom" style="font-size: 18px;font-weight:600">Từ ban cán sự lớp</div>
        <div class="text-zoom" style="line-height: 30px;color:#5489f0" goto>Xem tất cả</div>
    </div>
@endsection

@section('notiIcon', 'notifications')
@section('notiActive', 'active')
