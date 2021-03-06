let str = [
  "思い出してみてください",
  "輝いていたあの頃を",
  "もしかしたら使ってもらえなかったかもしれません",
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
  "え？",
  "まだ存在してませんか？",
  "あ、無かったですか…",
  "そうですか…",
  "わたしの思い違いか",
  "な〜む〜",
];

let str4 = [
  "お参り",
  "してくれたんだ",
  "ありがとう",
  "その気持ちだけで",
  "報われます",
  "きっとね。"
];

const strWords = [str,str1,str2,str3,str4];
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
        }, 13000);
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
  setInterval(createPetal,200);
});
