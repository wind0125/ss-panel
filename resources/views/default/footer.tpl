<footer class="page-footer orange" style="padding-top:0;width:100%;position:fixed;bottom:0;">
	{*<div class="container">
		<div class="row">
			<div class="col l6 s12">
				<h5 class="white-text">关于</h5>
				<p class="grey-text text-lighten-4">本站提供某种帐号用于科学上网.</p>


			</div>
			<div class="col l3 s12">
				<h5 class="white-text">用户</h5>
				<ul>
				{if $user->isLogin}
					<li><a class="white-text" href="/user">用户中心</a></li>
					<li><a class="white-text" href="/user/logout">退出</a></li>
				{else}
					<li><a class="white-text" href="/auth/login">登录</a></li>
					<li><a class="white-text" href="/auth/register">注册</a></li>
				{/if}
				</ul>
			</div>
			<div class="col l3 s12">
				<h5 class="white-text">页面</h5>
				<ul>
					<li><a class="white-text" href="/code">邀请码</a></li>
					<li><a class="white-text" href="/tos">服务条款</a></li>
				</ul>
			</div>
		</div>
	</div>*}
	<div class="footer-copyright">
		<div class="container">
			{*&copy; {$config["appName"]}  Powered by <a class="orange-text text-lighten-3" href="https://github.com/orvice/ss-panel">ss-panel</a> {$config["version"]}
		 Theme by <a class="orange-text text-lighten-3" href="http://materializecss.com">Materialize</a>*}
			版权所有 &copy 2016 flyspeeder.com &nbsp;<a class="white-text" href="/tos">服务条款</a>
		</div>
		<div style="display:none;">
			{$analyticsCode}
		</div>
	</div>
</footer>

<!-- 客服栏-->
{*<div id="rightArrow" style="right: 170px; background-position: 0px 0px;"><a href="javascript:;" title="在线客服"></a></div>
<div id="floatDivBoxs" style="right: 0px;">
	<div class="floatDtt">在线客服</div>
	<div class="floatShadow">
		<ul class="floatDqq" style="margin-top:0;">
			<li style="padding-left:0px;"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2657197259&amp;Site=qq&amp;Menu=yes"><img src="/assets/public/img/qq4.png" align="absmiddle">&nbsp;&nbsp; 小飞客服1</a></li>
			<li style="padding-left:0px;"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=3505429641&amp;Site=qq&amp;Menu=yes"><img src="/assets/public/img/qq.png" align="absmiddle">&nbsp;&nbsp;&nbsp;小飞客服2</a></li>
			<li style="padding-left:0px;"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=624283530&amp;Site=qq&amp;Menu=yes"><img src="/assets/public/img/qq3.png" align="absmiddle">&nbsp;&nbsp; 小飞客服3</a></li>
		</ul>
		<!--<div class="floatDtxt">热线电话</div>
        <div class="floatDtel"><img src="images/online_phone.jpg" width="155" height="45" alt=""></div>
        <div style="text-align:center;padding:5PX 0 5px 0;background:#ffffff;"><img src="images/wap_ico.jpg"><br>支付宝扫我付款</div>-->
	</div>
	<div class="floatDbg"></div>
</div>*}
<div class="xiaofeikefu">
	<div class="slide_min"></div>
	<div class="slide_box" style="display:none;" id="floatDivBoxs">
		<h2><img src="/assets/public/img/slide_box.jpg" /></h2>
		<ul class="floatDqq" style="margin-top:0;">
			<li style="padding-left:0px;"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2657197259&amp;Site=qq&amp;Menu=yes"><img src="/assets/public/img/qq4.png" align="absmiddle">&nbsp;&nbsp; 小飞客服1</a></li>
			<li style="padding-left:0px;"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=3505429641&amp;Site=qq&amp;Menu=yes"><img src="/assets/public/img/qq.png" align="absmiddle">&nbsp;&nbsp;&nbsp;小飞客服2</a></li>
			<li style="padding-left:0px;"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=624283530&amp;Site=qq&amp;Menu=yes"><img src="/assets/public/img/qq3.png" align="absmiddle">&nbsp;&nbsp; 小飞客服3</a></li>
		</ul>
	</div>
</div>

<!--  Scripts-->
<script src="/assets/public/js/jquery.min.js"></script>
<script src="/assets/materialize/js/materialize.min.js"></script>
<script src="/assets/materialize/js/init.js"></script>
<script src="/assets/public/js/kefu.js"></script>

<script src="/assets/public/js/move.js"></script>
<script src="/assets/public/js/cookie.js"></script>
<script src="/assets/public/js/notice.js"></script>




</body>
</html>
