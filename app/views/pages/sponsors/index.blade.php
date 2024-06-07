@extends('layouts.screen')

@section('title', 'Nhà tài trợ')

@section('content')
    <p class="timeline--noti-title" style="font-size: 15px;margin-bottom: 10px">C4K60 Web và C4K60 Mobile có thể
        đã không được
        tồn tại mà không có sự hỗ trợ
        từ các mạnh thường quân
        sau:</p>
    <ul style="padding: 0 25px;margin-bottom: 10px">
        @foreach ($donators as $donator)
            <li class="timeline--noti-title" style="font-size: 15px">
                <span @class(['link' => $donator->social_link != null])
                    {{ $donator->social_link != null ? 'goto=' . $donator->social_link : '' }}>{{ $donator->name }}</span>
                <span> - {{ $donator->amount }}</span>
            </li>
        @endforeach
    </ul>
    <p class="timeline--noti-title" style="margin-bottom: 10px;font-size: 15px">Bạn muốn ủng hộ cho dự án này? Mình rất cảm ơn
        tấm lòng của
        bạn. Dưới đây là các kênh
        thanh toán mình đang mở:</p>
    <ol style="list-style:decimal;padding: 0 25px;margin-bottom: 10px">
        <li class="timeline--noti-title" style="font-size: 15px">Techcombank: 8821112003</li>
        <li class="timeline--noti-title" style="font-size: 15px">MoMo: 0707006421</li>
        <li class="timeline--noti-title" style="font-size: 15px">Viettel Money: 9704229245853309</li>
        <li class="timeline--noti-title" style="font-size: 15px">MSB: 03801017934767</li>
        <li class="timeline--noti-title" style="font-size: 15px">PayPal: paypal.me/techup</li>
    </ol>
    <p class="timeline--noti-title" style="margin-bottom: 10px;font-size: 15px">Chủ tài khoản: Dương Tùng Anh</p>

    <p class="timeline--noti-title" style="font-size: 15px">Cảm ơn các bạn một lần nữa vì đã quan tâm và ủng hộ dự án này
        của mình! Nó có ý nghĩa về
        mặt tinh thần rất lớn đối
        với mình!</p>
@endsection
@section('homeIcon', 'home')
@section('homeActive', 'active')
