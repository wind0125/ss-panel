{include file='header.tpl'}
<div class="section no-pad-bot" id="index-banner">
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
</div>
{include file='footer.tpl'}