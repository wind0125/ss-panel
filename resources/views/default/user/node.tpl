{include file='user/main.tpl'}

<div id="hidden-qrcode-info"  class="hidden">{$json_show}</div>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            节点列表
            <small>Node List</small>
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <!-- START PROGRESS BARS -->
        <div class="row">
            <div class="col-md-6">
                <div class="callout callout-warning">
                    <h4>注意!</h4>
                    <p>请勿在任何地方公开节点地址！</p>
                    <p>流量比例为0.5即使用1000MB按照500MB流量记录记录结算.</p>
                    {$msg}
                </div>
            </div>
            <div class="col-md-6">
                <div class="callout callout-info">
                    <h4>说明</h4>
                    <p>点击“显示二维码”按钮可查看相应节点的配置二维码</p>
                    <p>在shodowsocks中点击扫描二维码即可导入节点配置</p>
                    {$msg}
                </div>
            </div>
        </div>

        {foreach $nodes as $node}
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-widget">
                        <div class="box-body">
                            <ul class="products-list product-list-in-box">
                                <li class="item">
                                    <div class="product-img">
                                        <img src="../assets/public/img/iconfont-server.png" alt="Server Node">
                                    </div>
                                    <div class="product-info">
                                        <a class="product-title">{$node->name}

                                            <span class="label label-info pull-right">{$node->status}</span>

                                        </a>
                                        <div class="label label-info showQrcode"  onclick="showQrcode('{$node->id}')">
                                            <i class="fa fa-qrcode qr-icon"></i>
                                            显示二维码</div>
                                        <p>
                                            {$node->info}
                                        </p>
                                    </div>
                                </li><!-- /.item -->
                            </ul>
                        </div>
                        <div class="box-footer no-padding">
                            <div class="row">
                                <div class="col-md-6">
                                    <ul class="nav nav-stacked">
                                        <li><a>节点地址 <span
                                                        class="pull-right badge bg-blue">{$node->server}</span></a></li>
                                        <li><a>连接端口 <span
                                                        class="pull-right badge bg-aqua">{$user->port}</span></a></li>
                                        <li><a>加密方式 <span
                                                        class="pull-right badge bg-green">{if $node->custom_method == 1} {$user->method} {else} {$node->method} {/if}</span></a>
                                        </li>
                                        <li><a>负载: <span
                                                        class="pull-right badge bg-green">{$node->getNodeLoad()}</span></a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-6">
                                    <ul class="nav nav-stacked">
                                        <li><a>流量比例 <span
                                                        class="pull-right badge bg-blue">{$node->traffic_rate}</span></a>
                                        </li>
                                        <li><a>在线人数 <span
                                                        class="pull-right badge bg-aqua">{$node->getOnlineUserCount()}</span></a>
                                        </li>
                                        <li><a>产生流量 <span
                                                        class="pull-right badge bg-green">{$node->getTrafficFromLogs()}</span></a>
                                        </li>
                                        <li><a>Uptime: <span
                                                        class="pull-right badge bg-green">{$node->getNodeUptime()}</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div><!-- /.widget-user -->
                </div><!-- /.col -->
            </div>
            <!-- /.row -->


        {/foreach}


    </section>
    <!-- /.content -->
</div><!-- /.content-wrapper -->

<div class="modal fade" id="qrcode-modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">配置二维码</h4>
            </div>
            <div class="modal-body">
                <div id="show-qrcode" class="text-center"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

{include file='user/footer.tpl'}
