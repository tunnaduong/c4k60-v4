$body = $("#screen");
function initWaves() {
  Waves.attach(".user-greeting");
  Waves.attach(".menu--search");
  Waves.attach(".shortcuts--button");
  Waves.attach(".ripple");
  Waves.init();
}

NProgress.start();
NProgress.configure({ showSpinner: false });
$(document).ready(function () {
  initWaves();
  // loop and add class cursor pointer on [goto]
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

function loadAll() {
  const subjects = document.querySelectorAll(".texttruncate");

  subjects.forEach((subject) => {
    let text = subject.textContent;
    if (text.length > 87) {
      subject.textContent = `${text.slice(0, 90)}...`;
    }
  });

  var today = new Date();
  var hours = today.getHours();
  var minutes = today.getMinutes();

  if ((hours >= 5 && hours < 10) || (hours === 10 && minutes < 30)) {
    $("#loiChuc").html("Chúc bạn có một ngày mới năng động và hiệu quả.");
  } else if (hours >= 11 && hours < 13) {
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
