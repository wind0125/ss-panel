/**
 * Created by fanny on 16-7-23.
 */
$(function(){
    var rightArrow = $('.kefu-wrapper');
    var defaultTop1 = rightArrow.offset().top;

   /* var floatDivBoxs = $("#floatDivBoxs");
    var defaultTop2 = floatDivBoxs.offset().top;*/
    // 页面滚动的同时，悬浮框也跟着滚动
    $(window).on('scroll',function(){scro();});
    $(window).onload = scro();
    function scro(){
        var offsetTop = defaultTop1 + $(window).scrollTop()+'px';
        rightArrow.animate({top:offsetTop},
            {	duration: 600,	//滑动速度
                queue: false    //此动画将不进入动画队列
            });
        /*floatDivBoxs.animate({top:offsetTop},
            {	duration: 600,	//滑动速度
                queue: false    //此动画将不进入动画队列
            });*/
    }
});

var flag=1;
/*$('#rightArrow').click(function(){
    if(flag==1){
        $("#floatDivBoxs").animate({width: '0px'},300);
        $(this).animate({right: '0'},300);
        $(this).css('background-position','-50px 0');
        flag=0;
    }else{
        $("#floatDivBoxs").show();
        $("#floatDivBoxs").animate({width: '170px'},300);
        $(this).animate({right: '170px'},300);
        $(this).css('background-position','0px 0');
        flag=1;
    }
});*/
$('.kefu-btn').click(function(){
    if(flag==1){
        $(".kefu-wrapper").animate({right: '0px'},300);

        flag=0;
    }else{

        $(".kefu-wrapper").animate({right: '-124px'},300);

        flag=1;
    }
});
