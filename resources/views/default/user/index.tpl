{include file='user/main.tpl'}

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            用户中心
            {if $user->enable==0}
            <small style="color:#f00;">请尽快验证邮箱激活账户，获取初始流量</small>
            {/if}
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <!-- START PROGRESS BARS -->
        <div class="row">
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-header">
                        <i class="fa fa-bullhorn"></i>

                        <h3 class="box-title">公告&FAQ</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        {*{$msg}*}
                        <p>流量包套餐：</p>
                        <p>套餐一：5元10G流量包</p>
                        <p>套餐二：10元30G流量包</p>
                        <p>注：购买请联系小飞客服，可以用支付宝、微信支付等。</p>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col (right) -->

            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-header">
                        <i class="fa fa-exchange"></i>

                        <h3 class="box-title">流量使用情况</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="progress progress-striped">
                                    <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40"
                                         aria-valuemin="0" aria-valuemax="100"
                                         style="width: {$user->trafficUsagePercent()}%">
                                        <span class="sr-only">Transfer</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="dl-horizontal">
                            <dt>总流量</dt>
                            <dd>{$user->enableTraffic()}</dd>
                            <dt>已用流量</dt>
                            <dd>{$user->usedTraffic()}</dd>
                            <dt>剩余流量</dt>
                            <dd>{$user->unusedTraffic()}</dd>
                        </dl>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col (left) -->

            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-header">
                        <i class="fa  fa-paper-plane"></i>

                        <h3 class="box-title">连接信息</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <dl class="dl-horizontal">
                            <dt>端口</dt>
                            <dd>{$user->port}</dd>
                            <dt>密码</dt>
                            <dd>{$user->passwd}</dd>
                            <dt>自定义加密方式</dt>
                            <dd>{$user->method}</dd>
                            <dt>上次使用</dt>
                            <dd>{$user->lastSsTime()}</dd>
                        </dl>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col (right) -->

            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-header">
                        <i class="fa fa-pencil"></i>

                        <h3 class="box-title">签到获取流量</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <p> 激活用户可以每{$config['checkinTime']}小时签到一次。</p>

                        <p>上次签到时间：<code>{$user->lastCheckInTime()}</code></p>
                        {if $user->isEnable() && $user->isAbleToCheckin() }
                            <p id="checkin-btn">
                                <button id="checkin" class="btn btn-success  btn-flat">签到</button>
                            </p>
                        {else}
                            <p><a class="btn btn-success btn-flat disabled" href="#">签到</a></p>
                        {/if}
                        <p id="checkin-msg"></p>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col (right) -->



            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-header">
                        <i class="fa  fa-cloud-download"></i>

                        <h3 class="box-title">工具下载</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <dl class="dl-horizontal">
                            <p>Windows电脑版<a href="http://www.flyspeeder.com//downloads/Shadowsocks-3.0.zip">（点击下载）</a>
                                <a href="http://www.flyspeeder.com/downloads/windows%E5%B0%8F%E9%A3%9E%E5%8A%A0%E9%80%9F%E5%99%A8%E4%BD%BF%E7%94%A8%E6%95%99%E7%A8%8B.doc">使用教程</a>
                            </p>
                            <p>安卓版<a href="http://www.flyspeeder.com//downloads/shadowsocks_2.10.8.apk">（点击下载）</a>
                                <a href="http://www.flyspeeder.com/downloads/%E5%AE%89%E5%8D%93%E7%89%88%E5%B0%8F%E9%A3%9E%E5%8A%A0%E9%80%9F%E5%99%A8%E4%BD%BF%E7%94%A8%E6%95%99%E7%A8%8B.doc">使用教程</a>
                            </p>
                            <p>Mac OS<a href="http://www.flyspeeder.com/downloads/ShadowsocksX-2.6.3.zip">（点击下载）</a>
                                <a href="http://www.flyspeeder.com/downloads/MAC_OS%E5%B0%8F%E9%A3%9E%E5%8A%A0%E9%80%9F%E5%99%A8%E4%BD%BF%E7%94%A8%E6%95%99%E7%A8%8B.doc">使用教程</a>
                            </p>
                            <p>iphone和ipad不需要下载工具，具体设置方法请咨询客服</p>
                        </dl>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col (right) -->

            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-header">
                        <i class="fa  fa-qq"></i>

                        <h3 class="box-title">客服QQ</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <dl class="dl-horizontal">
                            <a target="_blank" class="admin-kefu" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2657197259&amp;Site=qq&amp;Menu=yes"><img src="/assets/public/img/qq4.png" align="absmiddle">&nbsp;&nbsp; 小飞客服1</a>
                            <a target="_blank" class="admin-kefu" href="http://wpa.qq.com/msgrd?v=3&amp;uin=3505429641&amp;Site=qq&amp;Menu=yes"><img src="/assets/public/img/qq.png" align="absmiddle">&nbsp;&nbsp;&nbsp;小飞客服2</a>
                            <a target="_blank" class="admin-kefu" href="http://wpa.qq.com/msgrd?v=3&amp;uin=624283530&amp;Site=qq&amp;Menu=yes"><img src="/assets/public/img/qq3.png" align="absmiddle">&nbsp;&nbsp; 小飞客服3</a>

                        </dl>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col (right) -->


        </div>
        <!-- /.row --><!-- END PROGRESS BARS -->
    </section>
    <!-- /.content -->
</div><!-- /.content-wrapper -->

<script>
    $(document).ready(function () {
        $("#checkin").click(function () {
            $.ajax({
                type: "POST",
                url: "/user/checkin",
                dataType: "json",
                success: function (data) {
                    $("#checkin-msg").html(data.msg);
                    $("#checkin-btn").hide();
                },
                error: function (jqXHR) {
                    alert("发生错误：" + jqXHR.status);
                }
            })
        })
    })
</script>


{include file='user/footer.tpl'}