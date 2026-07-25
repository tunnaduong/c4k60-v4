@extends('layouts.default')

@section('title', 'Bảng tin')

@section('content')
    <div style="display: flex;flex-direction: row;align-items: center;padding: 10px;background-color: white;border-bottom: 8px solid #E6E6E6;"
        class="feed-composer">
        @if (isset($_SESSION['user']))
            <img src="{{ $_SESSION['user']->avatar }}"
                style="width: 40px;height: 40px;border-radius: 25px;object-fit: cover;">
        @else
            <img src="/assets/images/notify.png" style="width: 40px;height: 40px;border-radius: 25px;object-fit: cover;">
        @endif
        <div class="ripple" data-bs-toggle="modal" data-bs-target="#createPostModal"
            style="flex:1;border-radius: 10px;height: 40px;margin-right: 10px;margin-left: 5px;display:flex;align-items:center;background-color:#F6F6F6;padding-left:10px">
            <span style="font-size: 16px;color:#8B8D95">Bạn đang nghĩ gì?</span>
        </div>
        <div class="btn-hover" style="padding:6px;border-radius:8px" id="feed-pick-image-btn">
            <ion-icon name="images" style="font-size: 22px;color:#36BF2D"></ion-icon>
        </div>
        <input type="file" id="feed-pick-image-input" accept="image/*" style="display:none">
    </div>

    <div id="feed-list"></div>

    <div id="feed-empty" style="display:none;text-align:center;padding:60px 20px;color:#8B8D95">
        Chưa có bài viết nào trong bảng tin.
    </div>

    <div id="feed-loader" style="text-align:center;padding:25px">
        <div class="spinner-border" style="width:2rem;height:2rem;color:#636568" role="status"></div>
        <div style="margin-top:10px;color:#636568">Đang tải bảng tin...</div>
    </div>
@endsection

@section('modal')
    <div class="modal fade" id="createPostModal" tabindex="-1" aria-labelledby="createPostModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" style="max-width: 500px;">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="createPostModalLabel">Tạo bài viết</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" style="padding:0">
                    <div style="display:flex;align-items:center;padding:15px;gap:10px">
                        @if (isset($_SESSION['user']))
                            <img src="{{ $_SESSION['user']->avatar }}"
                                style="width: 50px;height: 50px;border-radius: 25px;object-fit: cover;">
                            <div style="font-weight:bold;font-size:16px;color:#333">{{ $_SESSION['user']->name }}</div>
                        @endif
                    </div>
                    <textarea id="createPostContent" placeholder="Bạn đang nghĩ gì?"
                        style="width:100%;min-height:150px;border:none;border-top:0.8px solid #DBDBDB;padding:15px;font-size:16px;outline:none;resize:none"></textarea>
                    <div id="createPostImagePreviewWrap" style="display:none;position:relative">
                        <img id="createPostImagePreview" style="width:100%;max-height:300px;object-fit:cover">
                        <div id="createPostImageRemove"
                            style="position:absolute;top:8px;right:8px;background:rgba(0,0,0,.5);color:white;border-radius:50%;width:26px;height:26px;display:flex;align-items:center;justify-content:center;cursor:pointer">
                            <ion-icon name="close-outline"></ion-icon>
                        </div>
                    </div>
                    <div style="border-top:0.8px solid #DBDBDB"></div>
                    <div id="createPostPickImageRow" style="display:flex;align-items:center;padding:15px;cursor:pointer">
                        <ion-icon name="images" style="font-size:22px;color:#36BF2D;margin-right:7px"></ion-icon>
                        <span style="font-size:16px">Thêm ảnh</span>
                    </div>
                    <input type="file" id="createPostImageInput" accept="image/*" style="display:none">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" id="createPostSubmitBtn">Đăng bài</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        initFeedIndex();
    </script>
@endsection

@section('feedActive', 'active')
@section('feedIcon', 'newspaper')
