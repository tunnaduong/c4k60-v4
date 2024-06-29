@extends('layouts.screen')

@section('title', $albumName)
@section('background-color', '#ededed')
@section('content')
    @if (isset($images))
        <div style="display: flex;flex-direction: row;flex-wrap: wrap;gap: 10px;margin-right:-10px">
            @foreach ($images as $image)
                <div class="relative pb-[calc(33.3%-10px)] w-[calc(33.3%-10px)] overflow-hidden ripple" data-bs-toggle="modal"
                    data-bs-target="#imageViewer" data-img-src="{{ '/anhvavideo\/' . $image->path }}">
                    <img class="absolute h-full w-full object-cover" src="{{ '/anhvavideo\/' . $image->thumb_path }}">
                </div>
            @endforeach
        </div>
    @else
        <div>
            <div style="display: flex;flex-direction:row;">
                <span style="font-weight:700;font-size:20px;color: #C0BFBC;padding-right: 15px;line-height: 50px">Video
                    YouTube</span>
                <span style="align-self:center;height: 1px;flex:1;background-color:#C0BFBC"></span>
            </div>
            <div style="display: flex;flex-direction: row;flex-wrap: wrap;gap: 10px;margin-right: -10px">
                @php
                    $video_youtube = array_filter($videos, function ($value) {
                        return $value->type == 'youtube';
                    });
                @endphp
                @foreach ($video_youtube as $video)
                    <div class="relative pb-[calc(33.3%-10px)] w-[calc(33.3%-10px)] overflow-hidden ripple"
                        data-bs-toggle="modal" data-bs-target="#youtubeVideoViewer"
                        data-video-id="{{ $video->link_youtube }}">
                        <img class="absolute h-full w-full object-cover" src="{{ '/anhvavideo/' . $video->thumb_path }}">
                    </div>
                @endforeach
            </div>
            <div style="display: flex;flex-direction:row;margin-top:10px">
                <span style="font-weight:700;font-size:20px;color: #C0BFBC;padding-right: 15px;line-height: 50px">Video đã
                    tải lên</span>
                <span style="align-self:center;height: 1px;flex:1;background-color:#C0BFBC"></span>
            </div>
            <div style="display: flex;flex-direction: row;flex-wrap: wrap;gap: 10px;margin-right: -10px">
                @php
                    $video_html5 = array_filter($videos, function ($value) {
                        return $value->type == 'html5';
                    });
                @endphp
                @foreach ($video_html5 as $video)
                    <div class="relative pb-[calc(33.3%-10px)] w-[calc(33.3%-10px)] overflow-hidden ripple"
                        data-bs-toggle="modal" data-bs-target="#videoViewer"
                        data-video-src="{{ '/anhvavideo/' . $video->path }}">
                        <img class="absolute h-full w-full object-cover" src="{{ '/anhvavideo/' . $video->thumb_path }}">
                    </div>
                @endforeach
            </div>
        </div>
        </div>
    @endif
@endsection

@section('modal')
    <div class="modal fade" id="imageViewer" tabindex="-1" aria-labelledby="imageViewerLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 100%;max-width: 600px;">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="imageViewerLabel">Xem ảnh</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    {{-- image here --}}
                    <img id="modalImage" goto="" src="" style="width: 100%; height: auto;">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" id="prevImage">{{ '<' }}</button>
                    <button type="button" class="btn btn-primary" id="nextImage">></button>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function() {
            var currentImageIndex = -1;
            var images = $('.ripple').map(function() {
                return $(this).attr('data-img-src');
            }).get();

            $('.ripple').click(function() {
                currentImageIndex = $('.ripple').index(this);
                updateModalImage();
            });

            $('#nextImage').click(function() {
                if (currentImageIndex < images.length - 1) {
                    currentImageIndex++;
                } else {
                    // Optionally wrap to the first image
                    currentImageIndex = 0;
                }
                updateModalImage();
            });

            $('#prevImage').click(function() {
                if (currentImageIndex > 0) {
                    currentImageIndex--;
                } else {
                    // Optionally wrap to the last image
                    currentImageIndex = images.length - 1;
                }
                updateModalImage();
            });

            function updateModalImage() {
                $('#modalImage').attr('src', images[currentImageIndex]);
                $('#modalImage').attr('goto', images[currentImageIndex]);
            }
        });
    </script>
    <div class="modal fade" id="videoViewer" tabindex="-1" aria-labelledby="videoViewerLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 100%;max-width: 600px;">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="videoViewerLabel">Xem video</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    {{-- video here --}}
                    <video id="modalVideo" controls style="width: 100%; height: auto;">
                        <source src="" type="video/mp4">
                        Your browser does not support the video tag.
                    </video>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" id="prevVideo">{{ '<' }}</button>
                    <button type="button" class="btn btn-primary" id="nextVideo">></button>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function() {
            var currentVideoIndex = -1;
            var videos = $('.ripple[data-video-src]').map(function() {
                return $(this).attr('data-video-src');
            }).get();

            $('.ripple[data-video-src]').click(function() {
                currentVideoIndex = $('.ripple[data-video-src]').index(this);
                updateModalVideo(videos[currentVideoIndex]);
            });

            $('#nextVideo').click(function() {
                if (currentVideoIndex < videos.length - 1) {
                    currentVideoIndex++;
                } else {
                    // Optionally wrap to the first video
                    currentVideoIndex = 0;
                }
                updateModalVideo(videos[currentVideoIndex]);
            });

            $('#prevVideo').click(function() {
                if (currentVideoIndex > 0) {
                    currentVideoIndex--;
                } else {
                    // Optionally wrap to the last video
                    currentVideoIndex = videos.length - 1;
                }
                updateModalVideo(videos[currentVideoIndex]);
            });

            $('#videoViewer').on('hide.bs.modal', function() {
                var videoElement = $('#modalVideo')[0]; // Get the native HTML video element
                videoElement.pause(); // Pause the video
                videoElement.currentTime = 0; // Optionally reset the video to start
            });

            function updateModalVideo(src) {
                var videoElement = $('#modalVideo');
                videoElement.find('source').attr('src', src);
                videoElement[0].load(); // Reload the video element to update the source
                videoElement[0].play(); // Optionally play the video automatically
            }
        });
    </script>
    <!-- YouTube Video Viewer Modal -->
    <div class="modal fade" id="youtubeVideoViewer" tabindex="-1" aria-labelledby="youtubeVideoViewerLabel"
        aria-hidden="true">
        <div class="modal-dialog" style="width: 100%;max-width: 600px;">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="videoViewerLabel">YouTube Video</h5>
                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <iframe id="youtubeVideoIframe" width="100%" height="360" src="" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary prevVideo" id="prevVideo">{{ '<' }}</button>
                    <button type="button" class="btn btn-primary nextVideo" id="nextVideo">></button>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function() {
            var videoIds = $('.ripple').map(function() {
                return $(this).data('video-id'); // Assuming this is the YouTube video ID or URL
            }).get();
            var currentVideoIndex = 0;

            // Function to update the video in the modal
            function updateVideo(index) {
                var videoId = videoIds[index];
                // If videoId is a URL, extract the ID
                videoId = videoId.includes('youtu') ? youtube_parser(videoId) : videoId;
                var iframeUrl = `https://www.youtube.com/embed/${videoId}?autoplay=1&rel=0`;
                $('#youtubeVideoIframe').attr('src', iframeUrl);
            }

            // Function to parse YouTube video ID from URL
            function youtube_parser(url) {
                var regExp = /^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#&?]*).*/;
                var match = url.match(regExp);
                return (match && match[7].length == 11) ? match[7] : false;
            }

            // Click event for opening the modal and setting the first video
            $('.ripple').click(function() {
                currentVideoIndex = $('.ripple').index(this);
                updateVideo(currentVideoIndex);
            });

            // Next button functionality
            $('.nextVideo').click(function() {
                currentVideoIndex = (currentVideoIndex + 1) % videoIds
                    .length; // Loop back to the first video
                updateVideo(currentVideoIndex);
            });

            // Previous button functionality
            $('.prevVideo').click(function() {
                currentVideoIndex = (currentVideoIndex - 1 + videoIds.length) % videoIds
                    .length; // Loop back to the last video
                updateVideo(currentVideoIndex);
            });

            // Clear the video when the modal is closed
            $('#youtubeVideoViewer').on('hide.bs.modal', function() {
                $('#youtubeVideoIframe').attr('src', '');
            });
        });
    </script>
@endsection
@section('homeIcon', 'home')
@section('homeActive', 'active')
