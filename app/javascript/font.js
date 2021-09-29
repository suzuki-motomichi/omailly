$(document).ready(function(){
    $(".post-title p").each(function() {
    let men = $(".post-title").text().split("\n").length;

    switch (men) {
        case 1:
            $(".post-title p").addClass("spd-0");
        break;
        case 2:
            $(".post-title p").addClass("spd-1");
        break;
    }

    console.log(men);
    let menu_len = $(".post-title p").text().replace(/\n/g, "");
    console.log(menu_len.length);

    if(1 < menu_len.length && menu_len.length <= 5){
        $(".post-title p").addClass("small");
    }else if(5 < menu_len.length && menu_len.length <= 10){
        $(".post-title p").addClass("small-medium");
    }else if(10 < menu_len.length && menu_len.length <= 15){
        $(".post-title p").addClass("medium");
    }else if(15 < menu_len.length && menu_len.length <= 20){
        $(".post-title p").addClass("medium-large");
    }else if(20 < menu_len.length && menu_len.length <= 25){
        $(".post-title p").addClass("large");
    }else if(25 < menu_len.length && menu_len.length <= 30){
        $(".post-title p").addClass("ex-large");
        };
    });
    });

