{include file='header.tpl'}

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
        <h2>{$config["appName"]}支持免费试用账号.</h2>
        <p>注册账号即可领取试用流量.</p>
        {if $user->isLogin}
        <a class="standard-button" href="/user" target="_blank">
            进入用户中心 <span></span>
        </a>
        {else}
        <a class="standard-button" href="/auth/register" target="_blank">
            现在注册试用 <span></span>
        </a>
        {/if}
    </div>
</div>

{*<div class="section no-pad-bot" id="index-banner">
    <div class="container">
        <br><br>
        <h1 class="header center orange-text">{$config["appName"]}</h1>
        <div class="row center">
            <h5 class="header col s12 light">轻松科学上网   保护个人隐私</h5>
            {$homeIndexMsg}
        </div>
        {if $user->isLogin}
            <div class="row center">
                <a href="/user" id="download-button" class="btn-large waves-effect waves-light orange">进入用户中心</a>
            </div>
        {else}
        <div class="row center">
            <a href="/auth/register" id="download-button" class="btn-large waves-effect waves-light orange">立即注册</a>
        </div>
        {/if}
        <br><br>
    </div>
</div>


<div class="container">
    <div class="section">

        <!--   Icon Section   -->
        <div class="row">
            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center light-blue-text"><i class="material-icons">flash_on</i></h2>
                    <h5 class="center">低延迟，大宽带</h5>

                    <p class="light">
                        百兆国内直连，G口大宽带，锐速加速，严格控制单个服务器资源，合理分配端口,非传统SS服务商分配方法。
                    </p>
                </div>
            </div>

            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center light-blue-text"><i class="material-icons">group</i></h2>
                    <h5 class="center">资源分区，百人独服</h5>

                    <p class="light">
                        用户分配到不同区，独享到各个服务器，每个区的用户互不影响。A区出现问题，不会影响他区。资源严格控制，服务器负载小，速度快，特别是宽带利用率。
                    </p>
                </div>
            </div>

            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center light-blue-text"><i class="material-icons">settings</i></h2>
                    <h5 class="center">设置简单，方便快捷</h5>

                    <p class="light">
                        跨平台使用(Window,MAC,Linux,Android)，下载客户端，根据需要配置的客户端进行配置。IOS用户更有超简单配置，无需下载客户端，分分钟畅游网络。
                    </p>
                </div>
            </div>
        </div>

    </div>
    <br><br>

    <div class="section">

    </div>
</div>*}

{*
<div class="float_layer" id="miaov_float_layer" style="z-index:10001;">
    <h2>
        <b>公告</b>
        <a id="btn_min" href="javascript:;" class="min"></a>
        <a id="btn_close" href="javascript:;" class="close"></a>
    </h2>
    <div class="content2">
        <div class="wrap2">

            <p class="info">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;好友邀请机制已关闭，请关注本站，获取公共邀请码进行注册。
                公共邀请码，将不定期发放，请关注本站公告信息。
            </p>
        </div>
    </div>
</div>
*}


{include file='footer.tpl'}