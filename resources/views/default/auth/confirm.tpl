{include file='auth/header.tpl'}

<body>

{if $is_auth}

非常感谢您完成注册确认，您的账户已获得{$config["defaultTraffic"]}G初始流量。

5秒后自动跳转到登陆界面。

{else}

您的确认信无效，请联系客服，帮忙解决。

5秒后自动跳转到首页。

{/if}


</body>