@extends('layouts.screen')

@section('title', 'Sinh nhật sắp tới')

@section('content')
    <div style="display: flex;gap: 15px;flex-direction: column">
        @foreach ($birthdays as $birthday)
            @if ($daysLeft[$birthday->id] == 0)
                <div style="position: relative;">
                    <img src="/assets/images/balloons.jpeg"
                        style="width: 100%;height: 300px;object-fit: cover;border-radius: 15px" />
                    <div
                        style="position: absolute;top: 60px; left:0; right:0;display:flex;align-items:center;justify-content:center">
                        <img src="{{ $birthday->avatar }}" style="width: 80px;height: 80px;border-radius: 50%" />
                    </div>
                    <span
                        style="position: absolute;top: 150px;left: 0;right: 0;text-align: center;font-size: 25px;font-weight: 800;padding: 0 40px;color: white">
                        Hôm nay là sinh nhật của {{ $birthday->name }} 🥳!
                    </span>
                </div>
            @else
                <div style="display: flex;flex-direction:row;gap: 10px;align-items:center">
                    <img src="{{ $birthday->avatar }}" style="width: 45px;height: 45px;border-radius: 50%" />
                    <div style="flex: 1;display:flex;flex-direction: column">
                        <span class="text-zoom" style="font-size: 17.5px">{{ $birthday->name }}</span>
                        <span class="text-zoom"
                            style="font-size: 14px;color:gray">{{ $birthday->dayofbirth . '/' . $birthday->monthofbirth . '/' . $birthday->yearofbirth }}</span>
                    </div>
                    <div
                        style="display:flex;flex-direction: column; background-color: rgb(230, 230, 230);padding: 5px 10px;border-radius: 10px;align-items:center">
                        <span class="text-zoom"
                            style="font-size: 20px;line-height: 23px;font-weight:700;margin-top: 2px;color: #ff4b66">{{ $daysLeft[$birthday->id] }}</span>
                        <span class="text-zoom" style="font-size: 12.5px;line-height: 17px;">ngày nữa</span>
                    </div>
                </div>
            @endif
        @endforeach
    </div>
@endsection

@section('homeActive', 'active')
