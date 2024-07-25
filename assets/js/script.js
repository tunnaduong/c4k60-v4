$body = $("#screen");

function loadAll() {
  const subjects = document.querySelectorAll(".texttruncate");

  subjects.forEach((subject) => {
    let text = subject.textContent;
    if (text.length > 87) {
      subject.textContent = `${text.slice(0, 90)}...`;
    }
  });

  let today = new Date();
  let hours = today.getHours();
  let minutes = today.getMinutes();

  if ((hours >= 5 && hours < 10) || (hours === 10 && minutes < 30)) {
    $("#loiChuc").html("Chúc bạn có một ngày mới năng động và hiệu quả.");
  } else if ((hours >= 11 && hours < 13) || (hours == 10 && minutes >= 30)) {
    $("#loiChuc").html(
      "Chúc bạn có một buổi trưa thật vui vẻ, ngập tràn năng lượng."
    );
  } else if ((hours >= 13 && hours < 18) || (hours === 18 && minutes < 30)) {
    $("#loiChuc").html(
      "Chúc bạn có một buổi chiều vui vẻ và cả ngày hạnh phúc!"
    );
  } else if ((hours >= 18 && hours < 22) || (hours === 22 && minutes < 30)) {
    $("#loiChuc").html(
      "Chúc cậu có một buổi tối an lành, vui vẻ nhé. Good night!"
    );
  } else {
    $("#loiChuc").html(
      "Nằm xuống giường đi và mơ những giấc mơ ngọt ngào nhất bạn nhé!"
    );
  }
}

function initWaves() {
  Waves.attach(".user-greeting");
  Waves.attach(".menu--search");
  Waves.attach(".shortcuts--button");
  Waves.attach(".ripple");
  Waves.init();
}

showLoading();
NProgress.start();
NProgress.configure({ showSpinner: false });
$(document).ready(function () {
  // Hide the preloader when the document is ready
  $(window).on("load", function () {
    $("#preloader").fadeOut("slow");
  });

  setTimeout(() => {
    hideLoading();
  }, 1000);
  initWaves();
  // loop and add class cursor pointer on [href]
  $("[href]").addClass("cursor-pointer");
  $("[onclick]").addClass("cursor-pointer");
  NProgress.done();
  loadAll();
});

$(document).ajaxComplete(function () {
  initWaves();
  $("[href]").addClass("cursor-pointer");
  $("[onclick]").addClass("cursor-pointer");
  NProgress.done();
  loadAll();
});

// $("html").on("click", "[href]", function (e) {
//   e.preventDefault(); // cancel click
//   // add class cursor pointer
//   var url = $(this).attr("href");
//   window.location.href = url;
// });

function go(url) {
  window.location.href = url;
}

$("html").on("click", "[href]", function (e) {
  e.preventDefault(); // cancel click
  var url = $(this).attr("href");
  url = url.replace("#", "");
  window.history.pushState({}, "", url);
  NProgress.start();

  $.ajax({
    url: url + "?rel=page",
    success: function (data) {
      $("#screen").html(data);
    },
  });
});

window.onpopstate = function () {
  NProgress.start();

  $.ajax({
    url: document.location + "?rel=page",
    success: function (data) {
      $("#screen").html(data);
    },
  });
};

$(document).ready(function () {
  $("html").on("click", ".site-navbar--item", function (e) {
    e.preventDefault(); // cancel click

    // Update the active state
    $(".site-navbar--item").removeClass("active");
    $(this).addClass("active");

    // Update icons
    $(".site-navbar--item ion-icon").each(function () {
      var baseIcon = $(this).parent().data("icon");
      $(this).attr("name", baseIcon + "-outline"); // Reset to outline
    });

    var activeIconBase = $(this).data("icon");
    $(this).find("ion-icon").attr("name", activeIconBase); // Set to filled
  });
});

function showLoading() {
  $("#loading").show();
}

function hideLoading() {
  $("#loading").hide();
}
