/* Tính năng Bảng tin (Feed) - gọi trực tiếp API production https://api.c4k60.com/v2.0
   dùng chung dữ liệu với app mobile. */
(function () {
  var FEED_API = "https://api.c4k60.com/v2.0";
  var PAGE_SIZE = 7;

  var indexState = null;
  var detailState = null;
  var createPostState = { imageFile: null };

  function escapeHtml(str) {
    if (str === null || str === undefined) return "";
    return String(str)
      .replace(/&/g, "&amp;")
      .replace(/</g, "&lt;")
      .replace(/>/g, "&gt;")
      .replace(/"/g, "&quot;")
      .replace(/'/g, "&#039;");
  }

  function timeAgo(dateStr) {
    if (!dateStr) return "";
    return moment(dateStr, "YYYY-MM-DD HH:mm:ss").fromNow();
  }

  function avatarOr(url) {
    return url ? url : "/assets/images/notify.png";
  }

  function isLikedByCurrentUser(post) {
    var user = window.CURRENT_USER;
    if (!user || !post.likes) return false;
    return post.likes.some(function (l) {
      return l.liked_username === user.username;
    });
  }

  // ---------- Feed list (trang /feed) ----------

  function renderStatsRow(postId, likeCount, commentCount) {
    var hidden = likeCount === 0 && commentCount === 0;
    var html = "";
    html +=
      '<div class="feed-stats" data-post-id="' +
      postId +
      '" data-like-count="' +
      likeCount +
      '" data-comment-count="' +
      commentCount +
      '" style="margin:0 12px;padding:12px 0;border-bottom:1px solid #E6E6E6;display:' +
      (hidden ? "none" : "flex") +
      ';align-items:center">';
    html +=
      '  <span class="feed-stats-likes" style="display:' +
      (likeCount > 0 ? "inline-flex" : "none") +
      ';align-items:center">';
    html +=
      '    <ion-icon name="heart" style="font-size:22px;color:#FC6D6C;margin-right:5px"></ion-icon>';
    html +=
      '    <span class="feed-like-count-text" style="font-size:14px;color:#8E9098">' +
      likeCount +
      "</span>";
    html += "  </span>";
    html += '  <div style="flex:1"></div>';
    html +=
      '  <span class="feed-stats-comments" style="display:' +
      (commentCount > 0 ? "inline" : "none") +
      ';font-size:14px;color:#8E9098">' +
      commentCount +
      " bình luận</span>";
    html += "</div>";
    return html;
  }

  function renderLikeCommentActions(postId, liked) {
    var html = "";
    html +=
      '<div style="display:flex;align-items:center;justify-content:space-around;background:white;padding:4px;gap:4px">';
    html +=
      '  <div class="btn-hover feed-like-btn" data-post-id="' +
      postId +
      '" data-liked="' +
      (liked ? 1 : 0) +
      '" style="padding:5px;flex:1;display:flex;align-items:center;justify-content:center;border-radius:6px;cursor:pointer">';
    html +=
      '    <ion-icon name="' +
      (liked ? "heart" : "heart-outline") +
      '" style="font-size:22px;color:' +
      (liked ? "#FC6D6C" : "#8B8D95") +
      ';margin-right:7px"></ion-icon>';
    html +=
      '    <span style="color:' +
      (liked ? "#FC6D6C" : "#8B8D95") +
      '">Thích</span>';
    html += "  </div>";
    html +=
      '  <div class="btn-hover cursor-pointer feed-comment-nav-btn" href="/feed/' +
      postId +
      '" style="padding:5px;flex:1;display:flex;align-items:center;justify-content:center;border-radius:6px">';
    html +=
      '    <ion-icon name="chatbox-ellipses-outline" style="font-size:22px;color:#8B8D95;margin-right:7px"></ion-icon>';
    html += '    <span style="color:#8B8D95">Bình luận</span>';
    html += "  </div>";
    html += "</div>";
    return html;
  }

  function renderPostCard(post) {
    var liked = isLikedByCurrentUser(post);
    var likeCount = post.likes ? post.likes.length : 0;
    var commentCount = post.comments ? post.comments.length : 0;

    var html = "";
    html +=
      '<div class="feed-card" data-post-id="' +
      post.id +
      '" style="border-bottom:8px solid #E6E6E6;background:white">';
    html +=
      '  <div class="cursor-pointer" href="/feed/' + post.id + '">';
    html += '    <div style="display:flex;align-items:center;padding:10px">';
    html +=
      '      <img src="' +
      avatarOr(post.author.avatar) +
      '" style="width:40px;height:40px;border-radius:20px;object-fit:cover">';
    html += '      <div style="margin-left:10px">';
    html +=
      '        <div style="font-weight:bold;font-size:16px;color:#333">' +
      escapeHtml(post.author.name) +
      "</div>";
    html +=
      '        <div style="font-size:14px;color:#A9A9A9">' +
      timeAgo(post.timeofpost) +
      "</div>";
    html += "      </div>";
    html += "    </div>";
    if (post.content) {
      html +=
        '    <div style="font-size:17px;margin:0 10px 10px;white-space:pre-wrap">' +
        escapeHtml(post.content) +
        "</div>";
    }
    if (post.image) {
      html +=
        '    <img src="https://api.c4k60.com/storage/feed/' +
        post.image +
        '" style="width:100%;max-height:400px;object-fit:cover;display:block">';
    }
    html += renderStatsRow(post.id, likeCount, commentCount);
    html += "  </div>";
    html += renderLikeCommentActions(post.id, liked);
    html += "</div>";
    return html;
  }

  function showNavbar(visible) {
    // Bảng điều hướng dưới cùng được render SAU nội dung trang trong HTML (ở full page
    // load), nên phải đợi nó tồn tại trong DOM trước khi ẩn/hiện.
    $(function () {
      $(".site-navbar").toggle(visible);
    });
  }

  window.initFeedIndex = function () {
    showNavbar(true);

    indexState = { page: 1, hasMore: true, loading: false, total: 0 };

    $("#feed-list").empty();
    $("#feed-empty").hide();
    $("#feed-loader").show();

    $("#feed-list")
      .off("click", ".feed-like-btn")
      .on("click", ".feed-like-btn", onLikeClick);

    $("#feed-pick-image-btn")
      .off("click")
      .on("click", function () {
        $("#feed-pick-image-input").trigger("click");
      });
    $("#feed-pick-image-input")
      .off("change")
      .on("change", function (e) {
        var file = e.target.files[0];
        $(this).val("");
        if (!file) return;
        openCreatePostModal(file);
      });

    bindCreatePostModal();

    $(window).off("scroll.feed").on("scroll.feed", onFeedScroll);

    loadFeedPage(true);
  };

  function onFeedScroll() {
    if (!indexState || !indexState.hasMore || indexState.loading) return;
    var scrollTop = $(window).scrollTop();
    var winHeight = $(window).height();
    var docHeight = $(document).height();
    if (scrollTop + winHeight >= docHeight - 300) {
      indexState.page += 1;
      loadFeedPage(false);
    }
  }

  function loadFeedPage(isFirst) {
    indexState.loading = true;
    $("#feed-loader").show();

    $.getJSON(FEED_API + "/feed/list?page=" + indexState.page)
      .done(function (res) {
        var items = res.items || [];
        indexState.loading = false;

        if (items.length === 0) {
          indexState.hasMore = false;
          $("#feed-loader").hide();
          if (isFirst && indexState.total === 0) {
            $("#feed-empty").show();
          }
          return;
        }

        indexState.total += items.length;
        var html = items.map(renderPostCard).join("");
        $("#feed-list").append(html);
        $("#feed-loader").toggle(indexState.hasMore);
      })
      .fail(function () {
        indexState.loading = false;
        $("#feed-loader").html(
          '<div style="color:#c0392b">Không tải được bảng tin. Vui lòng thử lại.</div>'
        );
      });
  }

  // ---------- Thích bài viết (dùng chung cho feed + chi tiết) ----------

  function setLikeBtnUI($btn, liked) {
    $btn.attr("data-liked", liked ? 1 : 0);
    $btn
      .find("ion-icon")
      .attr("name", liked ? "heart" : "heart-outline")
      .css("color", liked ? "#FC6D6C" : "#8B8D95");
    $btn.find("span").css("color", liked ? "#FC6D6C" : "#8B8D95");
  }

  function setLikeStatsUI($stats, count) {
    if (!$stats || $stats.length === 0) return;
    $stats.attr("data-like-count", count);
    $stats.find(".feed-like-count-text").text(count);
    $stats.find(".feed-stats-likes").toggle(count > 0);
    var commentCount = parseInt($stats.attr("data-comment-count") || "0", 10);
    $stats.toggle(count > 0 || commentCount > 0);
  }

  function onLikeClick(e) {
    e.preventDefault();
    var user = window.CURRENT_USER;
    if (!user) {
      alert("Vui lòng đăng nhập để sử dụng tính năng này.");
      return;
    }

    var $btn = $(this);
    var postId = $btn.attr("data-post-id");
    var wasLiked = $btn.attr("data-liked") == "1";
    var nowLiked = !wasLiked;

    var $stats = $btn
      .closest(".feed-card, #feed-detail-content")
      .find('.feed-stats[data-post-id="' + postId + '"]');
    var count = parseInt($stats.attr("data-like-count") || "0", 10);
    var newCount = Math.max(0, count + (nowLiked ? 1 : -1));

    setLikeBtnUI($btn, nowLiked);
    setLikeStatsUI($stats, newCount);

    $.ajax({
      url: FEED_API + "/feed/likes/add",
      method: wasLiked ? "DELETE" : "POST",
      contentType: "application/json",
      data: JSON.stringify({
        liked_post_id: postId,
        liked_username: user.username,
      }),
    }).fail(function () {
      setLikeBtnUI($btn, wasLiked);
      setLikeStatsUI($stats, count);
    });
  }

  // ---------- Tạo bài viết (modal) ----------

  function bindCreatePostModal() {
    $("#createPostImageInput")
      .off("change")
      .on("change", function (e) {
        var file = e.target.files[0];
        if (!file) return;
        setCreatePostImage(file);
      });

    $("#createPostPickImageRow")
      .off("click")
      .on("click", function () {
        $("#createPostImageInput").trigger("click");
      });

    $("#createPostImageRemove")
      .off("click")
      .on("click", function () {
        createPostState.imageFile = null;
        $("#createPostImageInput").val("");
        $("#createPostImagePreviewWrap").hide();
        $("#createPostContent").attr("placeholder", "Bạn đang nghĩ gì?");
      });

    $("#createPostSubmitBtn").off("click").on("click", submitCreatePost);

    $("#createPostModal")
      .off("hidden.bs.modal")
      .on("hidden.bs.modal", function () {
        createPostState.imageFile = null;
        $("#createPostContent").val("").attr("placeholder", "Bạn đang nghĩ gì?");
        $("#createPostImageInput").val("");
        $("#createPostImagePreviewWrap").hide();
      });
  }

  function setCreatePostImage(file) {
    createPostState.imageFile = file;
    var reader = new FileReader();
    reader.onload = function (ev) {
      $("#createPostImagePreview").attr("src", ev.target.result);
      $("#createPostImagePreviewWrap").show();
    };
    reader.readAsDataURL(file);
    $("#createPostContent").attr("placeholder", "Nói gì đó về bức ảnh này...");
  }

  function openCreatePostModal(prefillFile) {
    if (!window.CURRENT_USER) {
      alert("Vui lòng đăng nhập để đăng bài.");
      return;
    }
    if (prefillFile) {
      setCreatePostImage(prefillFile);
    }
    var modalEl = document.getElementById("createPostModal");
    var modal = bootstrap.Modal.getOrCreateInstance(modalEl);
    modal.show();
  }

  function submitCreatePost() {
    var user = window.CURRENT_USER;
    if (!user) {
      alert("Vui lòng đăng nhập để đăng bài.");
      return;
    }
    var content = $.trim($("#createPostContent").val());
    var file = createPostState.imageFile;
    if (!content && !file) return;

    var formData = new FormData();
    formData.append("username", user.username);
    formData.append("content", content);
    if (file) formData.append("image", file, file.name);

    $("#createPostSubmitBtn").prop("disabled", true).text("Đang đăng...");

    $.ajax({
      url: FEED_API + "/feed/add",
      method: "POST",
      data: formData,
      processData: false,
      contentType: false,
    }).always(function () {
      $("#createPostSubmitBtn").prop("disabled", false).text("Đăng bài");
      var modalEl = document.getElementById("createPostModal");
      var modal = bootstrap.Modal.getOrCreateInstance(modalEl);
      modal.hide();

      setTimeout(function () {
        if (indexState) {
          indexState.page = 1;
          indexState.hasMore = true;
          indexState.total = 0;
          $("#feed-list").empty();
          loadFeedPage(true);
        }
      }, 700);
    });
  }

  // ---------- Chi tiết bài viết (trang /feed/{id}) ----------

  function fetchPostById(id, done) {
    id = parseInt(id, 10);

    $.getJSON(FEED_API + "/feed/list?page=1")
      .done(function (firstPage) {
        var items = firstPage.items || [];
        var found = items.filter(function (p) {
          return p.id === id;
        })[0];
        if (found) return done(found);

        var latestId = items.length ? items[0].id : id;
        var guess = Math.max(1, Math.floor((latestId - id) / PAGE_SIZE) + 1);

        var candidates = [];
        for (var p = Math.max(2, guess - 2); p <= guess + 3; p++) {
          candidates.push(p);
        }

        tryPages(candidates, 0, function (post) {
          if (post) return done(post);
          sequentialScan(2, 80, done);
        });
      })
      .fail(function () {
        done(null);
      });

    function tryPages(pages, idx, cb) {
      if (idx >= pages.length) return cb(null);
      $.getJSON(FEED_API + "/feed/list?page=" + pages[idx])
        .done(function (res) {
          var items = res.items || [];
          var found = items.filter(function (p) {
            return p.id === id;
          })[0];
          if (found) return cb(found);
          tryPages(pages, idx + 1, cb);
        })
        .fail(function () {
          tryPages(pages, idx + 1, cb);
        });
    }

    function sequentialScan(page, maxPage, cb) {
      if (page > maxPage) return cb(null);
      $.getJSON(FEED_API + "/feed/list?page=" + page)
        .done(function (res) {
          var items = res.items || [];
          if (items.length === 0) return cb(null);
          var found = items.filter(function (p) {
            return p.id === id;
          })[0];
          if (found) return cb(found);
          sequentialScan(page + 1, maxPage, cb);
        })
        .fail(function () {
          cb(null);
        });
    }
  }

  function renderComment(comment) {
    var avatar = avatarOr(comment.user && comment.user.avatar);
    var name = comment.user ? comment.user.name : comment.username;
    var html = "";
    html +=
      '<div style="display:flex;padding:10px" data-comment-id="' +
      comment.id +
      '">';
    html +=
      '  <img src="' +
      avatar +
      '" style="width:40px;height:40px;border-radius:20px;object-fit:cover;flex-shrink:0">';
    html += '  <div style="margin-left:10px">';
    html += '    <div style="border-radius:15px;background:#F6F6F6;padding:10px">';
    html +=
      '      <div style="font-size:14px;font-weight:bold">' +
      escapeHtml(name) +
      "</div>";
    if (comment.content) {
      html +=
        '      <div style="font-size:16px;white-space:pre-wrap">' +
        escapeHtml(comment.content) +
        "</div>";
    }
    if (comment.image) {
      html +=
        '      <img src="https://api.c4k60.com/storage/comments/' +
        comment.image +
        '" style="width:200px;height:150px;border-radius:5px;margin-top:10px;object-fit:cover">';
    }
    html += "    </div>";
    html +=
      '    <div style="font-size:12px;color:#A9A9A9;margin-left:20px;margin-top:5px">' +
      timeAgo(comment.created_at) +
      "</div>";
    html += "  </div>";
    html += "</div>";
    return html;
  }

  function renderDetailContent(post) {
    var liked = isLikedByCurrentUser(post);
    var likeCount = post.likes ? post.likes.length : 0;
    var comments = post.comments || [];

    var html = "";
    if (post.content) {
      html +=
        '<div style="padding:10px 15px;font-size:17px;white-space:pre-wrap">' +
        escapeHtml(post.content) +
        "</div>";
    }
    if (post.image) {
      html +=
        '<img src="https://api.c4k60.com/storage/feed/' +
        post.image +
        '" style="width:100%;max-height:420px;object-fit:cover;display:block">';
    }
    html += renderStatsRow(post.id, likeCount, comments.length);
    html += renderLikeCommentActionsDetail(post.id, liked);
    html += '<div id="feed-comments-list">' + comments.map(renderComment).join("") + "</div>";
    return html;
  }

  function renderLikeCommentActionsDetail(postId, liked) {
    var html = "";
    html +=
      '<div style="display:flex;align-items:center;justify-content:space-around;background:white;padding:4px;gap:4px">';
    html +=
      '  <div class="btn-hover feed-like-btn" data-post-id="' +
      postId +
      '" data-liked="' +
      (liked ? 1 : 0) +
      '" style="padding:5px;flex:1;display:flex;align-items:center;justify-content:center;border-radius:6px;cursor:pointer">';
    html +=
      '    <ion-icon name="' +
      (liked ? "heart" : "heart-outline") +
      '" style="font-size:22px;color:' +
      (liked ? "#FC6D6C" : "#8B8D95") +
      ';margin-right:7px"></ion-icon>';
    html +=
      '    <span style="color:' +
      (liked ? "#FC6D6C" : "#8B8D95") +
      '">Thích</span>';
    html += "  </div>";
    html +=
      '  <div class="btn-hover" id="feed-detail-focus-comment" style="padding:5px;flex:1;display:flex;align-items:center;justify-content:center;border-radius:6px;cursor:pointer">';
    html +=
      '    <ion-icon name="chatbox-ellipses-outline" style="font-size:22px;color:#8B8D95;margin-right:7px"></ion-icon>';
    html += '    <span style="color:#8B8D95">Bình luận</span>';
    html += "  </div>";
    html += "</div>";
    return html;
  }

  window.initFeedDetail = function (postId) {
    showNavbar(false);

    detailState = { postId: postId, commentImageFile: null };

    $("#feed-detail-loader").show();
    $("#feed-detail-notfound").hide();
    $("#feed-detail-content").hide().empty();
    $("#feed-comment-image-preview-wrap").hide();
    $("#feed-comment-input").val("");

    fetchPostById(postId, function (post) {
      $("#feed-detail-loader").hide();
      if (!post) {
        $("#feed-detail-notfound").show();
        return;
      }
      $("#feed-detail-content").html(renderDetailContent(post)).show();
    });

    bindDetailEvents();
  };

  function bindDetailEvents() {
    $("#feed-detail-content")
      .off("click", ".feed-like-btn")
      .on("click", ".feed-like-btn", onLikeClick);

    $("#feed-detail-root")
      .off("click", "#feed-detail-focus-comment")
      .on("click", "#feed-detail-focus-comment", function () {
        $("#feed-comment-input").focus();
      });

    $("#feed-comment-pick-image-btn")
      .off("click")
      .on("click", function () {
        $("#feed-comment-image-input").trigger("click");
      });

    $("#feed-comment-image-input")
      .off("change")
      .on("change", function (e) {
        var file = e.target.files[0];
        if (!file) return;
        detailState.commentImageFile = file;
        var reader = new FileReader();
        reader.onload = function (ev) {
          $("#feed-comment-image-preview").attr("src", ev.target.result);
          $("#feed-comment-image-preview-wrap").show();
        };
        reader.readAsDataURL(file);
        $("#feed-comment-input").focus();
      });

    $("#feed-comment-image-remove")
      .off("click")
      .on("click", function () {
        detailState.commentImageFile = null;
        $("#feed-comment-image-input").val("");
        $("#feed-comment-image-preview-wrap").hide();
      });

    $("#feed-comment-send-btn").off("click").on("click", submitComment);
    $("#feed-comment-input")
      .off("keypress")
      .on("keypress", function (e) {
        if (e.which === 13) {
          e.preventDefault();
          submitComment();
        }
      });
  }

  function prependComment(comment) {
    var name = comment.user.name;
    var avatar = avatarOr(comment.user.avatar);
    var html = "";
    html += '<div style="display:flex;padding:10px">';
    html +=
      '  <img src="' +
      avatar +
      '" style="width:40px;height:40px;border-radius:20px;object-fit:cover;flex-shrink:0">';
    html += '  <div style="margin-left:10px">';
    html += '    <div style="border-radius:15px;background:#F6F6F6;padding:10px">';
    html +=
      '      <div style="font-size:14px;font-weight:bold">' +
      escapeHtml(name) +
      "</div>";
    if (comment.content) {
      html +=
        '      <div style="font-size:16px;white-space:pre-wrap">' +
        escapeHtml(comment.content) +
        "</div>";
    }
    if (comment._localImage) {
      html +=
        '      <img src="' +
        comment._localImage +
        '" style="width:200px;height:150px;border-radius:5px;margin-top:10px;object-fit:cover">';
    }
    html += "    </div>";
    html +=
      '    <div style="font-size:12px;color:#A9A9A9;margin-left:20px;margin-top:5px">Vừa xong</div>';
    html += "  </div>";
    html += "</div>";
    $("#feed-comments-list").prepend(html);

    var $stats = $('.feed-stats[data-post-id="' + detailState.postId + '"]');
    var newCount = parseInt($stats.attr("data-comment-count") || "0", 10) + 1;
    $stats.attr("data-comment-count", newCount);
    $stats.find(".feed-stats-comments").text(newCount + " bình luận").show();
    $stats.show();
  }

  function submitComment() {
    var user = window.CURRENT_USER;
    if (!user) {
      alert("Vui lòng đăng nhập để bình luận.");
      return;
    }
    var text = $.trim($("#feed-comment-input").val());
    var file = detailState.commentImageFile;
    if (!text && !file) return;

    var formData = new FormData();
    formData.append("content", text);
    formData.append("post_id", detailState.postId);
    formData.append("username", user.username);
    if (file) formData.append("image", file, file.name);

    var previewSrc = file ? $("#feed-comment-image-preview").attr("src") : null;

    $("#feed-comment-input").val("");
    $("#feed-comment-image-preview-wrap").hide();
    detailState.commentImageFile = null;
    $("#feed-comment-image-input").val("");

    $.ajax({
      url: FEED_API + "/feed/comments/add",
      method: "POST",
      data: formData,
      processData: false,
      contentType: false,
    })
      .done(function () {
        prependComment({
          content: text || null,
          user: { name: user.name, avatar: user.avatar },
          _localImage: previewSrc,
        });
      })
      .fail(function () {
        alert("Không gửi được bình luận. Vui lòng thử lại.");
      });
  }
})();
