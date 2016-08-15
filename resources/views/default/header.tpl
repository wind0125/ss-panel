<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
    <title>{$config["appName"]}</title>
    <!-- CSS fonts.googleapis.com -->
    <link href="//fonts.lug.ustc.edu.cn/icon?family=Material+Icons" rel="stylesheet">
    <link href="/assets/materialize/css/materialize.min.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="/assets/materialize/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="/assets/public/css/kefu.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="/assets/public/css/notice.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="/assets/public/css/flyspeederV2.css" type="text/css" rel="stylesheet" media="screen,projection"/>
</head>
<body>

{*notice*}
<div id="notice">
    {*<h1>公告</h1>*}
    <div id="heading">公告：好友邀请机制已关闭，请关注本站，获取公共邀请码进行注册。
        公共邀请码，将不定期发放，请关注本站公告信息。</div>
</div>


<nav class="" role="navigation">
    <div class="nav-wrapper container">
        <img class="logo-fly" src="/assets/public/img/logo-fly.png">
        <a id="logo-container" href="/" class="brand-logo">{$config["appName"]}</a>
        <ul class="right hide-on-med-and-down">
            <li><a href="/">首页</a></li>
            {*<li><a href="https://shadowsocks.org/en/download/clients.html">客户端下载</a></li>*}
            <li><a href="/code">邀请码</a></li>
            {if $user->isLogin}
                <li><a href="/user">用户中心</a></li>
                <li><a href="/user/logout">退出</a></li>
            {else}
                <li><a href="/auth/login">登录</a></li>
                <li><a href="/auth/register">注册</a></li>
            {/if}

        </ul>

        <ul id="nav-mobile" class="side-nav">
            <li><a href="/">首页</a></li>
            {*<li><a href="https://shadowsocks.org/en/download/clients.html">客户端下载</a></li>*}
            <li><a href="/code">邀请码</a></li>
            {if $user->isLogin}
                <li><a href="/user">用户中心</a></li>
                <li><a href="/user/logout">退出</a></li>
            {else}
                <li><a href="/auth/login">登录</a></li>
                <li><a href="/auth/register">注册</a></li>
            {/if}
        </ul>
        <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
</nav>
