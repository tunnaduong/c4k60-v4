@extends('layouts.screen')

@section('title', 'Sinh nhật sắp tới')

@section('content')
    <div style="display: flex;gap: 15px;flex-direction: column">
        @foreach ($birthdays as $birthday)
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
        @endforeach
    </div>
@endsection

@section('homeActive', 'active')
