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
    <div style="display: flex;flex-direction:row;justify-content:space-between;margin-top: 15px;align-content:center;margin-bottom: 15px;position:sticky;top:2.8em;background-color:white;z-index:99;height:40px;flex-wrap:wrap"
        class="bcs-lop">
        <div class="text-zoom" style="font-size: 18px;font-weight:600">Từ ban cán sự lớp</div>
        <div class="text-zoom" style="line-height: 30px;color:#5489f0" goto>Xem tất cả</div>
    </div>
    <div class="flex flex-col gap-3">
        @foreach ($notifications as $notification)
            <div style="display:flex;flex-direction:row; gap: 15px">
                <div class="relative" goto="/notifications/{{ $notification->id }}">
                    @if ($notification->image == 'no')
                        <img src="/assets/images/notify.png" class="aspect-square w-16 h-16 rounded-full min-w-16" />
                    @else
                        <img src="{{ explode(',', $notification->image)[0] }}"
                            class="aspect-square w-16 h-16 rounded-full min-w-16" />
                    @endif
                    <div class="absolute bg-slate-600 rounded-full top-10 left-10 shadow-md"
                        style="padding: 5px 5px 0px 5px">
                        <ion-icon name="notifications" class="text-white" style="font-size: 18px"></ion-icon>
                    </div>
                </div>
                <div class="flex-1" goto="/notifications/{{ $notification->id }}">
                    <div class="font-bold text-zoom">{{ $notification->title }}</div>
                    <div style="font-size: 15px" class="texttruncate text-zoom">{{ $notification->content }}
                    </div>
                </div>
                <div class="flex items-center mr-2 btn-hover cursor-pointer">
                    <ion-icon name="ellipsis-horizontal" class="text-2xl"></ion-icon>
                </div>
            </div>
        @endforeach
    </div>
@endsection

@section('notiIcon', 'notifications')
@section('notiActive', 'active')
