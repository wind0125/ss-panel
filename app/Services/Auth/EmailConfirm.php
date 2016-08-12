<?php


namespace App\Services\Auth;

use App\Models\User;
use App\Services\Config, App\Services\Mail;
use App\Models\EmailVerify as EmailVerifyModel;
use App\Models\ConfirmCode as ConfirmCodeModel;
use App\Utils\Tools;

class EmailConfirm
{
    /**
     * @param $user object
     * @return bool
     */
    public static function sendConfirmation($user)
    {
        $email = $user->email;
        $confirmation = ConfirmCodeModel::where('email', '=', $email)->first();
        if ($confirmation == null) {
            $confirmation = new ConfirmCodeModel();
            $confirmation->email = $email;
            $confirmation->user_id = $user->id;
        }
        $confirmation->token = Tools::genRandomChar(Config::get('emailConfirmCodeLength'));
        if (!$confirmation->save()) {
            return false;
        }
        $appName = Config::get('appName');
        $subject = '欢迎注册' . $appName;
       
        try {
            Mail::send($email, $subject,'auth/confirm.tpl',[
                'user' => $user,
                'confirmation' => $confirmation
            ],[]);
        } catch (Exception $e) {
            return false;
        }
        return true;
    }

    /**
     * @param string $code
     * @param string $email
     * @return bool
     */
    public static function confirmUser($code, $email) {
        if (null == $code || null == $email)
            return false;

        $confirmation = ConfirmCodeModel::where('email', '=', $email)->where('token', '=', $code)->first();
        
        if ($confirmation == null)
            return false;

        $user = User::find($confirmation->user_id);
        if ($user == null)
            return false;

        if (!$confirmation->delete())
            return false;

        $user->enable = 1;
        $user->transfer_enable = Tools::toGB(Config::get('defaultTraffic'));

        if (!$user->save())
            return false;
        
        // 增加推荐人流量
        $invitor_id = $user->ref_by;
        if ($invitor_id > 0) {
            $invitor = User::find($invitor_id);
            
            if (null != $invitor) {
                $invitor->transfer_enable += Tools::toMB(Config::get('reward'));

                $invitor->save();

                // todo ： 记录到流量记录里，类型为奖励
            }
        }

        return true;
    }

}