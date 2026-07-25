@extends('layouts.screen')

@section('title', 'Hồ sơ thành viên')

@section('content')
    <div style="display: flex;gap: 15px;flex-direction: column">
        @foreach ($members as $member)
            <div href="/profile/{{ $member->username }}"
                style="display: flex;flex-direction:row;gap: 10px;align-items:center">
                <img src="{{ $member->avatar }}" style="width: 50px;height: 50px;border-radius: 50%;object-fit: cover" />
                <div style="flex: 1;display:flex;flex-direction: column">
                    <div style="display: flex;flex-direction:row;align-items:center;gap: 4px">
                        <span class="text-zoom" style="font-size: 17.5px">{{ $member->name }}</span>
                        @if ($member->verified == 1)
                            <ion-icon name="checkmark-circle" style="font-size: 16px;color: #166cff"></ion-icon>
                        @endif
                    </div>
                    <span class="text-zoom" style="font-size: 14px;color:gray">{{ $member->address }}</span>
                </div>
                <ion-icon name="chevron-forward-outline" style="font-size: 24px;color: #9e9f9f"></ion-icon>
            </div>
        @endforeach
    </div>
@endsection

@section('menuIcon', 'menu')
@section('menuActive', 'active')
