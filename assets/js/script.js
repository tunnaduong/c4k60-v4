$body = $("#screen");
function initWaves() {
  Waves.attach(".user-greeting");
  Waves.attach(".menu--search");
  Waves.attach(".shortcuts--button");
  Waves.attach(".ripple");
  Waves.init();
}
$(document).ready(function () {
  initWaves();
  // loop and add class cursor pointer on [goto]
  $("[goto]").addClass("cursor-pointer");
  $("[onclick]").addClass("cursor-pointer");
});

$("html").on("click", "[goto]", function (e) {
  e.preventDefault(); // cancel click
  // add class cursor pointer
  var url = $(this).attr("goto");
  window.location.href = url;
});

function go(url) {
  window.location.href = url;
}

const subjects = document.querySelectorAll(".texttruncate");

subjects.forEach((subject) => {
  let text = subject.textContent;
  if (text.length > 87) {
    subject.textContent = `${text.slice(0, 90)}...`;
  }
});

$(document).ready(function () {
  var today = new Date();
  var hours = today.getHours();
  var minutes = today.getMinutes();

  if ((hours >= 5 && hours < 10) || (hours === 10 && minutes < 30)) {
    $("#loiChuc").html(
      "Chúc buổi sáng tốt lành. Chúc bạn có một ngày tràn ngập những khoảnh khắc hào hứng và tuyệt vời."
    );
  } else if (hours >= 11 && hours < 13) {
    $("#loiChuc").html(
      "Chúc bạn có một buổi trưa thật vui vẻ, ngập tràn năng lượng."
    );
  } else if ((hours >= 13 && hours < 18) || (hours === 18 && minutes < 30)) {
    $("#loiChuc").html(
      "Chiều hôm nay không khí thật trong lành và mát mẻ. Chúc bạn có một buổi chiều vui vẻ và cả ngày hạnh phúc!"
    );
  } else if ((hours >= 18 && hours < 22) || (hours === 22 && minutes < 30)) {
    $("#loiChuc").html(
      "Chúc cậu có một buổi tối an lành, vui vẻ và chuẩn bị cho ngày mới năng động thật nhiều niềm vui nhé. Good night!"
    );
  } else {
    $("#loiChuc").html(
      "Nằm xuống giường, nhắm mắt vào, đi ngủ đi và mơ những giấc mơ ngọt ngào nhất bạn nhé. Have a good night!"
    );
  }
});
