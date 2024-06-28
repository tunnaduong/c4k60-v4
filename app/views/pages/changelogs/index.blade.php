@extends('layouts.screen')

@section('title', 'Những thay đổi')

@section('content')
    @foreach ($changelogs as $changelog)
        <p class="timeline--noti-title" style="font-size: 15.5px">Phiên bản
            {{ $changelog->version }}</p>
        <div class="timeline--noti-title" style="font-size: 14px;font-weight:300;margin-bottom:10px">Ngày phát hành:
            {{ date_format(date_create($changelog->release_date), 'd/m/Y') }}</div>
        <ul style="padding: 0 25px;margin-bottom: 10px">
            @php
                $lines = preg_split("/\r\n|\n/", $changelog->changelogs);
            @endphp
            @foreach ($lines as $line)
                <li class="timeline--noti-title" style="font-size: 15px">
                    {{ $line }}
                </li>
            @endforeach
        </ul>
    @endforeach
    <hr>
    <center>
        <img src="/assets/images/easter-eggs.png" width="100" alt="Easter Eggs nè" style="margin-top:15px">
    </center>
    <center class="text-zoom" style="font-size: 15px;margin-top: 15px">Oops... Cảm ơn vì bạn đã lướt xuống đến tận
        đây.<br>Và cũng xin chúc mừng bạn đã tìm thấy Easter Egg ẩn!<br>Chắc hẳn các bạn rất tò mò về website nhỉ?<br>
        Dưới
        đây là món quà nhỏ
        của
        mình: <a href="https://github.com/tunnaduong/c4k60-v4" class="link">Mã nguồn
            C4K60</a><br>
        <div style="font-size: 12px;color:gray;margin-top:15px">Đây là một dự án mã nguồn mở, mọi người được phép tự chỉnh
            sửa trang web này
            mà
            không cần phải xin phép từ tác giả, vì vậy hãy đừng ngại ngùng mày mò nghiên cứu và thay đổi! Đừng quên ghi
            nguồn từ C4K60.com để tôn trọng công sức của những người đã đóng góp cho dự án.</div>
    </center>
@endsection
@section('homeIcon', 'home')
@section('homeActive', 'active')
