$body = $("#screen");
NProgress.configure({ showSpinner: false });
$(document).on({
  ajaxStart: function () {
    NProgress.start();
  },
  ajaxStop: function () {
    NProgress.done();
  },
});
NProgress.start();
$(document).ready(function () {
  NProgress.done();
});

$("html").on("click", "[goto]", function (e) {
  e.preventDefault(); // cancel click
  var url = $(this).attr("goto");

  window.history.pushState({}, "", url.replace("index.php", ""));
  // $body.load(url);
  setTimeout(() => {
    $.ajax({
      url: url + "?t=n",
      error: function (jqXHR, textStatus, errorThrown) {
        $body.load("/error_handle.php", function () {
          $("#error-code").html(jqXHR.status);
          if (errorThrown == "Not Found") var err = "Page Not Found";
          else var err = errorThrown;
          $("#error-detail").html(err);
        });
        console.log(jqXHR);
        console.log(textStatus);
        console.log(errorThrown);
      },
      success: function (data) {
        $("#screen").html(data);
      },
    });
  }, 200);
});

function go(url) {
  setTimeout(() => {
    window.location.href = url;
  }, 200);
}

if (!window.location.pathname.indexOf(".php") != -1) {
  var url = window.location.pathname + "index.php";
} else {
  var url = window.location.pathname;
}
$.ajax({
  url: url + "?t=n",
  error: function (jqXHR, textStatus, errorThrown) {
    $body.load("/error_handle.php", function () {
      $("#error-code").html(jqXHR.status);
      if (errorThrown == "Not Found") var err = "Page Not Found";
      else var err = errorThrown;
      $("#error-detail").html(err);
    });
  },
  success: function (data) {
    $("#screen").html(data);
  },
});
