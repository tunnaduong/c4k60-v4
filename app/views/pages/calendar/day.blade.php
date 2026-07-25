@extends('layouts.screen')

@section('title', 'Sự kiện ngày ' . date('d/m/Y', strtotime($date)))

@section('content')
    <h2 style="font-weight: 600;font-size: 19px;margin-bottom: 20px">
        {{ date('d/m/Y', strtotime($date)) }}
    </h2>

    @if (count($dayEvents) == 0)
        <p style="color: gray">Không có sự kiện nào trong ngày này.</p>
    @else
        <div style="display: flex;gap: 20px;flex-direction: column">
            @foreach ($dayEvents as $event)
                <div style="display: flex;flex-direction:row;gap: 12px">
                    <div
                        style="display:flex;flex-direction: column;align-items:center;min-width: 55px;color: #166CFF;font-weight: 700">
                        <span>{{ date('H:i', strtotime($event->start)) }}</span>
                        <div style="flex:1;border-left: 2px solid #DBDBDB;margin: 4px 0"></div>
                        <span style="color: gray;font-weight: 400;font-size: 13px">{{ date('H:i', strtotime($event->end)) }}</span>
                    </div>
                    <div
                        style="flex: 1;background-color: #F2F2F2;border-radius: 12px;padding: 12px 15px;margin-bottom: 5px">
                        <span style="font-size: 17px;font-weight: 700;display:block;margin-bottom: 5px">{{ $event->title }}</span>
                        <span style="font-size: 14.5px;color: #434343">{{ $event->summary }}</span>
                    </div>
                </div>
            @endforeach
        </div>
    @endif
@endsection

@section('menuIcon', 'menu')
@section('menuActive', 'active')
