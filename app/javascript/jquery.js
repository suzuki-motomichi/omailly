let str = [
  "思い出してみてください",
  "輝いていたあの頃を",
  "たくさんの方に使ってもらえた日々を",
  "そもそも使ってもらえなかったかもしれません",
  "思い出してくれて",
  "ありがとう",
];

let str1 = [
  "あ…",
  "また来てくれたんですね",
  "うれしいです",
  "きっと喜んでいますよ。",
  "知らんけど",
  "でも、",
  "ありがとう",
];

let str2 = [
  "はじめまして",
  "ご存知でしたか？",
  "過去にあったんですって",
  "記録よりも",
  "記憶に残っていて",
  "それでいいと思います",
];

let str3 = [
  "",
  "",
  "",
  "",
  "",
  "",
];

const strWords = [str,str1];
const arr = Math.floor(Math.random() * strWords.length);
console.log(strWords[arr]);
$(() => {
  $(".js-open").click(() => {
    $(document).ready(() => {
      for (let i = 0; i < strWords[arr].length; i++) {
        $("#output").append("<div>" + strWords[arr][i] + "</div>");
      }
      $("#output div").each(function (i) {
        $(this)
          .hide()
          .delay(2000 * i)
          .fadeIn(3000);
      });
      {
        setInterval(function() {
          $('.item').fadeIn();
        }, 15000);
      };
    });
    $("#overlay, .modal-window").fadeIn();
  });
});

$(() => {
  $(".js-close")
    .unbind()
    .click(() => {
      $("#overlay, .modal-window").fadeOut();
      $("#output div, .item").remove();
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

// // 花びら生成
// window.addEventListener('DOMContentLoaded', () => {
//   // コンテナを指定
//   let section = document.querySelector('.cherry-blossom-container');

//   // 花びらを生成する関数
//   let createPetal = () => {
//     let petalEl = document.createElement('span');
//     petalEl.className = 'petal';
//     let minSize = 10;
//     let maxSize = 17;
//     let size = Math.random() * (maxSize + 1 - minSize) + minSize;
//     petalEl.style.width = `${size}px`;
//     petalEl.style.height = `${size}px`;
//     petalEl.style.left = Math.random() * innerWidth + 'px';
//     section.appendChild(petalEl);

//     // 一定時間が経てば花びらを消す
//     setTimeout(() => {
//       petalEl.remove();
//     }, 10000);
//   }

//   // 花びらを生成する間隔をミリ秒で指定
//   setInterval(createPetal, 120);
// });
