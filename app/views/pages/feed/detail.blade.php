@extends('layouts.screen')

@section('title', 'Bài viết')

@section('content')
    <div id="feed-detail-root" data-post-id="{{ $id }}">
        <div id="feed-detail-loader" style="text-align:center;padding:60px 20px">
            <div class="spinner-border" style="width:2rem;height:2rem;color:#636568" role="status"></div>
            <div style="margin-top:10px;color:#636568">Đang tải bài viết...</div>
        </div>
        <div id="feed-detail-notfound" style="display:none;text-align:center;padding:60px 20px;color:#8B8D95">
            Không tìm thấy bài viết này.
        </div>
        <div id="feed-detail-content" style="display:none;padding-bottom:80px"></div>
    </div>

    <div id="feed-comment-image-preview-wrap" style="display:none">
        <div style="display:flex;align-items:center;justify-content:center;padding:15px;border-top:0.7px solid #ccc;background-color:#f9f9f9;position:fixed;bottom:64px;left:0;right:0;max-width:600px;margin:0 auto;z-index:101">
            <div style="position:relative">
                <img id="feed-comment-image-preview" style="width:80px;height:80px;border-radius:5px;object-fit:cover">
                <div id="feed-comment-image-remove"
                    style="position:absolute;top:-8px;right:-8px;background:rgba(0,0,0,.5);color:white;border-radius:50%;width:22px;height:22px;display:flex;align-items:center;justify-content:center;cursor:pointer">
                    <ion-icon name="close-outline"></ion-icon>
                </div>
            </div>
        </div>
    </div>

    <div id="feed-comment-bar"
        style="position:fixed;bottom:0;left:0;right:0;max-width:600px;margin:0 auto;background:white;border-top:1px solid #E6E6E6;z-index:100;display:flex;align-items:center;gap:8px;padding:8px 10px">
        @if (isset($_SESSION['user']))
            <img src="{{ $_SESSION['user']->avatar }}"
                style="width: 32px;height: 32px;border-radius: 16px;object-fit: cover;flex-shrink:0">
        @endif
        <div class="btn-hover" id="feed-comment-pick-image-btn" style="border-radius:50%;padding:6px">
            <ion-icon name="camera-outline" style="font-size:22px;color:#8B8D95"></ion-icon>
        </div>
        <input type="text" id="feed-comment-input" placeholder="Nhập bình luận..."
            style="flex:1;border:1px solid #E6E6E6;border-radius:20px;padding:8px 15px;font-size:15px;outline:none">
        <div class="btn-hover" id="feed-comment-send-btn" style="border-radius:50%;padding:6px">
            <ion-icon name="send" style="font-size:20px;color:#5489f0"></ion-icon>
        </div>
        <input type="file" id="feed-comment-image-input" accept="image/*" style="display:none">
    </div>

    <script>
        initFeedDetail({{ $id }});
    </script>
@endsection
