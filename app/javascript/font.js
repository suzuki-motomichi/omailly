$(document).ready(function(){
  $(".post-title").each(function() {
    var menu_len = $(this).html();
    if(menu_len.length > 10){
      $(this).addClass("small");
    }
    console.log(menu_len.length);
    });
  });