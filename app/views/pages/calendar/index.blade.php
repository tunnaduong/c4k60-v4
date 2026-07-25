@extends('layouts.screen')

@section('title', 'Lịch & Sự kiện')

@section('content')
    @php
        $weekdayLabels = ['CN', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7'];
    @endphp

    <div style="display: flex;flex-direction:row;align-items:center;margin-bottom: 15px">
        <ion-icon name="chevron-back-outline"
            href="/calendar?month={{ $prevMonth }}&year={{ $prevYear }}"
            style="font-size: 22px;padding: 5px"></ion-icon>
        <span style="flex: 1;text-align:center;font-size: 18px;font-weight: 700">
            Tháng {{ $month }}, {{ $year }}
        </span>
        <ion-icon name="chevron-forward-outline"
            href="/calendar?month={{ $nextMonth }}&year={{ $nextYear }}"
            style="font-size: 22px;padding: 5px"></ion-icon>
    </div>

    <div style="display: grid;grid-template-columns: repeat(7, 1fr);text-align:center;margin-bottom: 5px">
        @foreach ($weekdayLabels as $label)
            <span style="font-size: 13px;color: gray;font-weight: 600;padding: 6px 0">{{ $label }}</span>
        @endforeach
    </div>

    @foreach ($weeks as $week)
        <div style="display: grid;grid-template-columns: repeat(7, 1fr);text-align:center;margin-bottom: 4px">
            @foreach ($week as $day)
                @php
                    $dateStr = $day ? sprintf('%04d-%02d-%02d', $year, $month, $day) : null;
                    $hasEvents = $dateStr && isset($eventDates[$dateStr]);
                    $isToday = $dateStr === $today;
                @endphp
                @if ($day)
                    <div href="/calendar/{{ $dateStr }}"
                        style="display:flex;flex-direction:column;align-items:center;padding: 8px 0;border-radius: 10px;{{ $isToday ? 'background-color:#166CFF;color:#fff;' : '' }}">
                        <span style="font-size: 15px;{{ $isToday ? 'font-weight:700' : '' }}">{{ $day }}</span>
                        <span
                            style="width: 5px;height: 5px;border-radius: 50%;margin-top: 3px;background-color: {{ $hasEvents ? ($isToday ? '#fff' : '#166CFF') : 'transparent' }}"></span>
                    </div>
                @else
                    <div></div>
                @endif
            @endforeach
        </div>
    @endforeach

    <div style="border-top: 10px solid rgb(190, 190, 190);margin: 20px -15px"></div>

    <h2 style="font-weight: 600;font-size: 19px;margin-bottom: 15px">Sự kiện sắp tới</h2>

    @if (count($upcoming) == 0)
        <p style="color: gray">Chưa có sự kiện nào sắp diễn ra.</p>
    @else
        <div style="display: flex;gap: 15px;flex-direction: column">
            @foreach ($upcoming as $event)
                <div href="/calendar/{{ date('Y-m-d', strtotime($event->start)) }}"
                    style="display: flex;flex-direction:row;gap: 10px;align-items:center">
                    <div
                        style="display:flex;flex-direction: column;background-color: rgb(230, 230, 230);padding: 5px 10px;border-radius: 10px;align-items:center;min-width: 50px">
                        <span class="text-zoom"
                            style="font-size: 18px;line-height: 20px;font-weight:700;color: #166CFF">{{ date('d/m', strtotime($event->start)) }}</span>
                        <span class="text-zoom" style="font-size: 12px;line-height: 15px;color:gray">{{ date('Y', strtotime($event->start)) }}</span>
                    </div>
                    <div style="flex: 1;display:flex;flex-direction: column">
                        <span class="text-zoom" style="font-size: 17.5px;font-weight:600">{{ $event->title }}</span>
                        <span class="text-zoom" style="font-size: 14px;color:gray">{{ date('H:i', strtotime($event->start)) }} - {{ date('H:i', strtotime($event->end)) }}</span>
                    </div>
                    <ion-icon name="chevron-forward-outline" style="font-size: 24px;color: #9e9f9f"></ion-icon>
                </div>
            @endforeach
        </div>
    @endif
@endsection

@section('menuIcon', 'menu')
@section('menuActive', 'active')
