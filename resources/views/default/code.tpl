{include file='header.tpl'}
<div class="section no-pad-bot" id="index-banner">
    <div class="container code-container">
        <br><br>
        <div class="row center">
            <h5>邀请码实时刷新</h5>
            {*
            {$msg}*}
        </div>
    </div>
</div>

<div class="container code-container">
    <div class="section">
        <!--   Icon Section   -->
        <div class="row">
            <div class="row marketing">
                <h2 class="sub-header">邀请码</h2>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th class="width30">###</th>
                            <th>邀请码 (点击邀请码进入注册页面)</th>
                           {* <th>状态</th>*}
                        </tr>
                        </thead>
                        <tbody>
                       {* {foreach $codes as $code}
                            <tr>
                                <td>{$code->id}</td>
                                <td><a href="/auth/register?code={$code->code}">{$code->code}</a></td>
                                <td>可用</td>
                            </tr>
                        {/foreach}*}
                        {for $i=0; $i<count($codes); $i++}
                            <tr>
                                <td><b>{$i+1}</b></td>
                                <td><a href="/auth/register?code={$codes[$i]->code}">{$codes[$i]->code}</a>
                                </td>

                            </tr>
                        {/for}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <br>
</div>
{include file='footer.tpl'}