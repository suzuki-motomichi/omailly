$(function () {
  $('.js-open').click(function () {
    $('#overlay, .modal-window').fadeIn();
  });

  $('.js-close').click(function () {
    $('#overlay, .modal-window').fadeOut();
  });
});
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


$(function(){
  const str01 = '思い出してみてください<br>';
  const str02 = '輝いていたあの頃を<br>';
  const str03 = 'たくさんの方に使ってもらえた日々を<br>';
  const str04 = 'そもそも使ってもらえなかったかもしれません<br>';
  const str05 = '思い出してくれて<br>';
  const str06 = 'ありがとう';

  var str07 = ['思い出してみてください<br>','輝いていたあの頃を<br>','たくさんの方に使ってもらえた日々を<br>','そもそも使ってもらえなかったかもしれません<br>','思い出してくれて<br>','ありがとう'];
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
      $(function(){
        $('.output').each(function(index) {
          $(this).delay(4000*index).fadeIn(300).text();
          })
        });

  //   setTimeout(function(){
  //     $('.output').append(str02);
  // }, 4500);
  // setTimeout(function(){
  //     $('.output').append(str03);
  // }, 7000);
  // setTimeout(function(){
  //     $('.output').append(str04);
  // }, 10000);
  // setTimeout(function(){
  //     $('.output').append(str05);
  // }, 13000);
  // setTimeout(function(){
  //     $('.output').append(str06);
  // }, 16000);
});

window.addEventListener('DOMContentLoaded', () => {
  // コンテナを指定
  const section = document.querySelector('.cherry-blossom-container');

  // 花びらを生成する関数
  const createPetal = () => {
    const petalEl = document.createElement('span');
    petalEl.className = 'petal';
    const minSize = 10;
    const maxSize = 17;
    const size = Math.random() * (maxSize + 1 - minSize) + minSize;
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
