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
                $lines = explode("\r\n", $changelog->changelogs);
            @endphp
            @foreach ($lines as $line)
                <li class="timeline--noti-title" style="font-size: 15px">
                    {{ $line }}
                </li>
            @endforeach
        </ul>
    @endforeach
@endsection
@section('homeIcon', 'home')
@section('homeActive', 'active')
