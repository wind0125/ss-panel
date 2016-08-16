{include file='header.tpl'}
<style>
    #notice{
        display: none;
    }
    .index-banner{
        padding:10px 0;
    }
    .kefu-wrapper{
        display: none;
    }
</style>
<div class="index-banner">
    <div class="wrapper-full">
        <h3>主流系统 均可使用</h3>
        <ul>
            <li><img src="/assets/public/img/windows.png"></li>
            <li><img src="/assets/public/img/macosx.png"></li>
            <li><img src="/assets/public/img/ios.png"></li>
            <li><img src="/assets/public/img/android.png"></li>
            <li><img src="/assets/public/img/linux.png"></li>
            <li><img src="/assets/public/img/ubuntu.png"></li>
        </ul>
    </div>
</div>

<div class="index-content">
    <div class="wrapper-full">

        {if $is_auth}

            <h2>非常感谢您完成注册确认，您的账户已获得{$config["defaultTraffic"]}G初始流量。</h2>

            <p><span id="mes">5</span>秒后自动跳转到登陆界面。</p>
            <script language="javascript" type="text/javascript">
                var i = 5;
                var intervalid;
                intervalid = setInterval("fun()", 1000);
                function fun() {
                    if (i == 0) {
                        window.location.href = "/auth/login";
                        clearInterval(intervalid);
                    }
                    document.getElementById("mes").innerHTML = i;
                    i--;
                }
            </script>
        {else}

            <h2>您的确认信无效，请联系客服，帮忙解决。</h2>

            <p><span id="mes">5</span>秒后自动跳转到首页。</p>
            <script language="javascript" type="text/javascript">
                var i = 5;
                var intervalid;
                intervalid = setInterval("fun()", 1000);
                function fun() {
                    if (i == 0) {
                        window.location.href = "/";
                        clearInterval(intervalid);
                    }
                    document.getElementById("mes").innerHTML = i;
                    i--;
                }
            </script>
        {/if}

    </div>
</div>





{include file='footer.tpl'}


