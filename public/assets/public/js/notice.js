/**
 * Created by fanny on 16-8-9.
 */
/*
$(function (){
    if($.cookie("isClose") != 'yes')
    {
        TanChuang();
        setTimeout("minTanChuang()",5000); //测试5秒自动关闭
    }
});

function minTanChuang()
{
    $("#btn_min").click();
}

function TanChuang() {
    var oDiv = document.getElementById('miaov_float_layer');
    var oBtnMin = document.getElementById('btn_min');
    var oBtnClose = document.getElementById('btn_close');
    var oDivContent = oDiv.getElementsByTagName('div')[0];

    var iMaxHeight = 0;

    var isIE6 = window.navigator.userAgent.match(/MSIE 6/ig) && !window.navigator.userAgent.match(/MSIE 7|8/ig);

    oDiv.style.display = 'block';
    iMaxHeight = oDivContent.offsetHeight;

    if (isIE6) {
        oDiv.style.position = 'absolute';
        repositionAbsolute();
        miaovAddEvent(window, 'scroll', repositionAbsolute);
        miaovAddEvent(window, 'resize', repositionAbsolute);
    }
    else {
        oDiv.style.position = 'fixed';
        repositionFixed();
        miaovAddEvent(window, 'resize', repositionFixed);
    }

    oBtnMin.timer = null;
    oBtnMin.isMax = true;
    oBtnMin.onclick = function() {
        startMove
        (
            oDivContent, (this.isMax = !this.isMax) ? iMaxHeight : 0,
            function() {
                oBtnMin.className = oBtnMin.className == 'min' ? 'max' : 'min';
            }
        );
    };

    oBtnClose.onclick = function() {
        oDiv.style.display = 'none';
        oDiv.innerHTML = "";
        $.cookie("isClose",'yes',{ expires:1/8640});  //测试关闭十秒后才能再次弹出
    };

};*/
$(document).ready( function(){
    setTimeout(function () {
        $('#notice').animate({'height': '0','opacity':'0'},5000);
    },5000);
});


