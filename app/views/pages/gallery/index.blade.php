@extends('layouts.screen')

@section('title', 'Thư viện ảnh')
@section('background-color', '#ededed')
@section('content')
    <div style="display: flex;flex-direction: row;flex-wrap: wrap;gap: 10px">
        @foreach ($albums as $album)
            <div class="w-[49%] h-auto p-[10px] bg-white rounded-xl ripple shadow-md"
                goto="/gallery/album/{{ $album->id }}">
                <img style="height: 180px;width: 100%;border-radius: 10px;object-fit:cover"
                    src="{{ '/anhvavideo\/' . $album->bg_image }}">
                <h2 style="font-weight: 600;font-size:19px;margin-top:10px">{{ $album->name }}</h2>
                <p>{{ $album->total_pic }} {{ $album->type }}</p>
            </div>
        @endforeach
    </div>
@endsection
@section('homeIcon', 'home')
@section('homeActive', 'active')
