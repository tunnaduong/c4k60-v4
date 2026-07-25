@extends('layouts.screen')

@section('title', 'Thông báo lớp')

@section('content')
    <div class="flex flex-col gap-3">
        <div class="font-bold text-zoom" style="font-size: 22px">{{ $notification->title }}</div>

        <div style="display:flex;flex-direction:row;align-items:center;gap:6px;color:#6b7280;font-size:14px">
            <ion-icon name="time-outline"></ion-icon>
            <span>{{ date('d/m/Y H:i', strtotime($notification->date)) }}</span>
        </div>

        <div style="display:flex;flex-direction:row;align-items:center;gap:6px;color:#6b7280;font-size:14px">
            <ion-icon name="person-outline"></ion-icon>
            <span>Người đăng: {{ $notification->createdBy }}</span>
        </div>

        <div class="text-zoom" style="font-size:16px;line-height:1.6;white-space:pre-line">{{ $notification->content }}</div>

        @if ($notification->image != 'no' && $notification->image != '')
            <div class="flex flex-col gap-3" style="margin-top:10px">
                @foreach (explode(',', $notification->image) as $image)
                    @if (trim($image) != '')
                        <img src="{{ $image }}" class="w-full rounded-lg" style="object-fit:cover" />
                    @endif
                @endforeach
            </div>
        @endif
    </div>
@endsection

@section('notiIcon', 'notifications')
@section('notiActive', 'active')
