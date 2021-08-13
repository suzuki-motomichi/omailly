// const { validate } = require("webpack");
// $(function(){
//   function setWord(){
  // const url = new URL()
//   };
//   setWord()
// });

// debugger

$(function () {
  $('.js-open').click(function () {
    // if (modalOn === true) {
    //   return;
    // }
    // modalOn = true;
    // console.log('foo');
    $(document).ready(function(){
      setTimeout(function(){
        $('.output.1').hide().append(str01).fadeIn(1500);
      }, 1500);
      setTimeout(function(){
        $('.output.2').hide().append(str02).fadeIn(2000);
      }, 4500);
      setTimeout(function(){
        $('.output.3').hide().append(str03).fadeIn(2000);
      }, 7500);
      setTimeout(function(){
        $('.output.4').hide().append(str04).fadeIn(1500);
      }, 10000);
      setTimeout(function(){
        $('.output.5').hide().append(str05).fadeIn(1500);
      }, 13000);
      setTimeout(function(){
        $('.output.6').hide().append(str06).fadeIn(1500);
      }, 16000);
      setTimeout(function(){
        $('.output.7').hide().append(str07).fadeIn(3500);
      }, 19000);
      setTimeout(function(){
        $('.twitter-share').hide().fadeIn(3600);
      }, 20000);
      })
  // if($( "#overlay")[1]) return true;
    $('#overlay, .modal-window').fadeIn();
  });
});
// debugger
$(function () {
$('.js-close').unbind().click(function () {
  // if (modalOff === true) {
  //   return;
  // }
  // if (modalOn === false) {
    // $(".output").css("display", "none");

  // }
  // $('.output').remove();
  // modalOff = true;
  // 無理やり更新するボタン
  // window.location.reload();
  $('#overlay, .modal-window').fadeOut()
    // function(){
    $('.output').remove();
    // $(".output").css("display", "none");
    // });
  });
});

let str01 = '思い出してみてください<br>';
let str02 = '輝いていたあの頃を<br>';
let str03 = 'たくさんの方に使ってもらえた日々を<br>';
let str04 = 'そもそも使ってもらえなかったかもしれません<br>';
let str05 = '思い出してくれて<br>';
let str06 = 'ありがとう';
let str07 = 'さようなら';

let modalOn = false;
let modalOff = false;

console.log('ほげ');

// var timer;
// $('.output').click(function(){
//  clearTimeout(timer);
//  timer = setTimeout(function(){
// $('.output').fadeOut();
//  }, 5000);
// });

// $("str07").each(function(index) {
//   $('.output').delay(4000*index).fadeIn(300);
// });
// var str07 = ['思い出してみてください<br>','輝いていたあの頃を<br>','たくさんの方に使ってもらえた日々を<br>','そもそも使ってもらえなかったかもしれません<br>','思い出してくれて<br>','ありがとう'];
// window.setTimeout( str07, 10 );



// $(document).ready(function(){
//   setTimeout(function(){ str07 }, 5000);
//   });

// });


//   // 5秒後に出力する
//   $.each(str07, function(obj) {
//     setTimeout(function(){
//       $('.output').append(obj);
//     }, obj * 2000);
//   })
// });

// function fadeIn(){
//   $.each(str07,function(i){
//       let delay = 100;  // 0.1秒ずつずれます。好きな秒数に調整してください。
//       $(this).delay(i * delay).queue(function(next){
//           $(this).addClass('show');
//           next();
//       });
//   })
// };



// $(function(){
//   $(str07).each(function(index) {
//     $('.output').delay(4000*index).append();
//     })
//   });

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
