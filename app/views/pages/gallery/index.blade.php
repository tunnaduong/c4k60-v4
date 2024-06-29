@extends('layouts.screen')

@section('title', 'Thư viện ảnh')
@section('background-color', '#ededed')
@section('content')
    <div style="display: flex;flex-direction: row;flex-wrap: wrap;gap: 10px;margin-right: -10px">
        @foreach ($albums as $album)
            <div class="w-[calc(50%-10px)] p-[10px] bg-white rounded-xl ripple shadow-md"
                goto="/gallery/album/{{ $album->id }}">
                <div class="relative pb-[70%]">
                    <img class="absolute h-full w-full object-cover" style="border-radius: 10px;"
                        src="{{ '/anhvavideo\/' . $album->bg_image }}">
                </div>
                <h2 style="font-weight: 600;font-size:19px;margin-top:10px">{{ $album->name }}</h2>
                <p>{{ $album->total_pic }} {{ $album->type }}</p>
            </div>
        @endforeach
    </div>
@endsection
@section('homeIcon', 'home')
@section('homeActive', 'active')
