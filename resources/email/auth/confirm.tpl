<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
</head>
<body>
  <p>亲爱的 {$user->user_name}：</p>

  <p>欢迎注册{$config["appName"]},请点击以下链接激活账号，获取{$config["defaultTraffic"]}G初始流量。</p>

  <a>http://www.flyspeeder.com/auth/confirm?code={$confirmation->token}&email={$confirmation->email}</a>

  <p>{$config["appName"]}</p>
</body>
</html>