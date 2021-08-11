$(document).ready(function(){
  $(".post-title").each(function() {
    var menu_len = $(this).html();
    console.log(menu_len.length);
    // switch(menu_len.length) {
    //   case :
    //   break;
    // }


    if(1 < menu_len.length && menu_len.length <= 5){
        $(this).addClass("small");
    }else if(5 < menu_len.length && menu_len.length <= 10){
        $(this).addClass("small-medium");
    }else if(10 < menu_len.length && menu_len.length <= 15){
        $(this).addClass("medium");
    }else if(15 < menu_len.length && menu_len.length <= 20){
        $(this).addClass("medium-large");
    }else if(25 < menu_len.length && menu_len.length <= 30){
        $(this).addClass("large");
    }else if(30 < menu_len.length && menu_len.length <= 35){
        // console.log(menu_len.length);
    }else{
        $(this).addClass("ex-large");
      };
    });
  });

  // $(document).ready(function(){
  //   $(".post-title").each(function() {
  //     var menu_len = $(this).html();
  //     if(menu_len.length > 20){
  //       $(this).addClass("large");
  //     }
  //     console.log(menu_len.length);
  //     });
  //   });

