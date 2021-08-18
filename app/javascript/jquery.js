let str = [
  "思い出してみてください<br>",
  "輝いていたあの頃を<br>",
  "たくさんの方に使ってもらえた日々を<br>",
  "そもそも使ってもらえなかったかもしれません<br>",
  "思い出してくれて<br>",
  "ありがとう",
  "さようなら",
];

$(() => {
  $(".js-open").click(() => {
    $(document).ready(() => {
      for (let i = 0; i < str.length; i++) {
        $("#output").append("<div>" + str[i] + "</div>");
      }
      $("#output div").each(function (i) {
        $(this)
          .hide()
          .delay(2000 * i)
          .fadeIn(3000);
      });
    });
    $("#overlay, .modal-window").fadeIn();
  });
});

$(() => {
  $(".js-close")
    .unbind()
    .click(() => {
      $("#overlay, .modal-window").fadeOut();
      $("#output div").remove();
    });
});

window.addEventListener("DOMContentLoaded", () => {
  let section = document.querySelector(".cherry-blossom-container");

  let createPetal = () => {
    let petalEl = document.createElement("span");
    petalEl.className = "petal";
    let minSize = 10;
    let maxSize = 17;
    let size = Math.random() * (maxSize + 1 - minSize) + minSize;
    petalEl.style.width = `${size}px`;
    petalEl.style.height = `${size}px`;
    petalEl.style.left = Math.random() * innerWidth + "px";
    section.appendChild(petalEl);

    setTimeout(() => {
      petalEl.remove();
    }, 10000);
  };

  setInterval(createPetal, 120);
});

// 花びら生成
window.addEventListener('DOMContentLoaded', () => {
  // コンテナを指定
  let section = document.querySelector('.cherry-blossom-container');

  // 花びらを生成する関数
  let createPetal = () => {
    let petalEl = document.createElement('span');
    petalEl.className = 'petal';
    let minSize = 10;
    let maxSize = 17;
    let size = Math.random() * (maxSize + 1 - minSize) + minSize;
    petalEl.style.width = `${size}px`;
    petalEl.style.height = `${size}px`;
    petalEl.style.left = Math.random() * innerWidth + 'px';
    section.appendChild(petalEl);

    // 一定時間が経てば花びらを消す
    setTimeout(() => {
      petalEl.remove();
    }, 10000);
  }

  // 花びらを生成する間隔をミリ秒で指定
  setInterval(createPetal, 120);
});
