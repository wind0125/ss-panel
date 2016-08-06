<?php //00e57
// *************************************************************************
// *                                                                       *
// * WHMCS - The Complete Client Management, Billing & Support Solution    *
// * Copyright (c) WHMCS Ltd. All Rights Reserved,                         *
// * Version: 5.3.14 (5.3.14-release.1)                                    *
// * BuildId: 0866bd1.62                                                   *
// * Build Date: 28 May 2015                                               *
// *                                                                       *
// *************************************************************************
// *                                                                       *
// * Email: info@whmcs.com                                                 *
// * Website: http://www.whmcs.com                                         *
// *                                                                       *
// *************************************************************************
// *                                                                       *
// * This software is furnished under a license and may be used and copied *
// * only  in  accordance  with  the  terms  of such  license and with the *
// * inclusion of the above copyright notice.  This software  or any other *
// * copies thereof may not be provided or otherwise made available to any *
// * other person.  No title to and  ownership of the  software is  hereby *
// * transferred.                                                          *
// *                                                                       *
// * You may not reverse  engineer, decompile, defeat  license  encryption *
// * mechanisms, or  disassemble this software product or software product *
// * license.  WHMCompleteSolution may terminate this license if you don't *
// * comply with any of the terms and conditions set forth in our end user *
// * license agreement (EULA).  In such event,  licensee  agrees to return *
// * licensor  or destroy  all copies of software  upon termination of the *
// * license.                                                              *
// *                                                                       *
// * Please see the EULA file for the full End User License Agreement.     *
// *                                                                       *
// *************************************************************************

namespace App\Services\Mail\spannerX;

use App\Services\Config;
use PHPMailer;

/**
 * Mail factory that wraps the PHPMailer library
 *
 * @package    WHMCS
 * @author     WHMCS Limited <development@whmcs.com>
 * @copyright  Copyright (c) WHMCS Limited 2013
 * @license    http://www.whmcs.com/license/ WHMCS Eula
 * @version    $Id$
 * @link       http://www.whmcs.com/
 */
class Mail extends PHPMailer
{
    protected $decodeAltBodyOnSend = true;
    protected static $validEncodings = array( '8bit', '7bit', 'binary', 'base64', 'quoted-printable' );
    /**
     * Construct the Mail instance.
     *
     * @param string $name - The name the mail should be sent from
     * @param string $email - The email the mail should be sent from
     */
    public function __construct($name = '', $email = '')
    {
        parent::__construct(true);
        if( !$name )
        {
            $name = $this->serverHostname();
        }
        if( !$email )
        {
            $email = Config::get('sender');
        }
        $this->From = $email;
        $this->FromName = Sanitize::decode($name);
        if( Config::get('mailType') == 'mail' )
        {
            $this->Mailer = 'mail';
        }
        else
        {
            if( Config::get('mailType') == 'smtp' )
            {
                $this->IsSMTP();
                $this->Host = Config::get('smtp_host');
                $this->Port = Config::get('smtp_port');
                $this->Hostname = $this->serverHostname();
                if( Config::get('smtp_ssl') )
                {
                    $this->SMTPSecure = Config::get('smtp_ssl');
                }
                if( Config::get('smtp_username') )
                {
                    $this->SMTPAuth = true;
                    $this->Username = Config::get('smtp_username');
//                    $this->Password = decrypt(Config::get('smtp_passsword'));
                    $this->Password = Config::get('smtp_passsword');
                }
                $this->Sender = $this->From;
                if( $email != Config::get('smtp_username') )
                {
                    $this->AddReplyTo($email, $name);
                }
                if( Config::get('smtp_debug') )
                {
                    $this->SMTPDebug = true;
                }
            }
        }
        $this->XMailer = Config::get('appName');
        $this->CharSet = "UTF-8";
        $this->setEncoding(Config::get('mailEncoding'));
    }
    /**
     * Get the current "server's" hostname
     *
     * First use the standard PhpMailer logic. If that returns something
     * obviously wrong, use the configured domain.
     *
     * @return string;
     */
    protected function serverHostname()
    {
        $hostname = parent::serverhostname();
        if( !$hostname || ($hostname = "localhost.localdomain") )
        {
            $hostname = parse_url(Config::get('baseUrl'), PHP_URL_HOST);
        }
        return $hostname;
    }
    /**
     * Get valid message encoding types
     *
     * @return string[]
     */
    public static function getValidEncodings()
    {
        return self::$validEncodings;
    }
    /**
     * Set message encoding
     *
     * Sets the message encoding type if valid
     *
     * If an invalid, blank, null, or no setting is passed, Encoding will
     * default to '8bit'
     *
     * @param integer $config_value Defaults to 0 (8bit) if empty
     */
    protected function setEncoding($config_value = 0)
    {
        $validEncodings = self::$validEncodings;
        if( isset($config_value) && !empty($validEncodings[$config_value]) )
        {
            $this->Encoding = $validEncodings[$config_value];
        }
        else
        {
            $this->Encoding = $validEncodings[0];
        }
    }
    /**
     * {@inheritDoc}
     */
    protected function addAnAddress($kind, $address, $name = '')
    {
        return parent::addanaddress($kind, trim($address), Sanitize::decode($name));
    }
    /**
     * Create a message and send it.
     * Uses the sending method specified by $whmcs->get_config('MailType').
     *
     * @return bool
     */
    public function send()
    {
        $this->Subject = Sanitize::decode($this->Subject);
        if( $this->decodeAltBodyOnSend )
        {
            $this->AltBody = Sanitize::decode($this->AltBody);
        }
        return parent::send();
    }
    /**
     * Set email body message
     *
     * Intelligently defines the email message body based on input
     * parameters - if plain text only fully entity-decodes message
     *
     * @param string $plainText Plain-text content for email
     * @param string $HTMLMessage (Optional) HTML formatted version
     *
     * @return string The message that was set
     */
    public function setMessage($plainText, $HTMLMessage = '')
    {
        $plainText = Sanitize::decode($plainText);
        if( $HTMLMessage )
        {
            $plainText = str_replace("<p>", '', $plainText);
            $plainText = str_replace("</p>", "\n\n", $plainText);
            $plainText = str_replace("<br>", "\n", $plainText);
            $plainText = str_replace("<br />", "\n", $plainText);
        }
        $plainText = strip_tags($plainText);
        $this->decodeAltBodyOnSend = false;
        if( $HTMLMessage )
        {
            $formattedHTMLMessage = $this->applyCSSFormatting($HTMLMessage);
            $this->Body = $formattedHTMLMessage;
            $this->AltBody = $plainText;
            return $formattedHTMLMessage;
        }
        $this->Body = $plainText;
        return nl2br($plainText);
    }
    /**
     * Prefix CSS Styling rules as defined in WHMCS General Settings
     *
     * @param string $HTMLMessage
     *
     * @return string
     */
    protected function applyCSSFormatting($HTMLMessage)
    {
        $emailCSSStyling = Config::get('mailCSS');
        if( $emailCSSStyling )
        {
            $HTMLMessage = "<style>\n" . $emailCSSStyling . "\n</style>" . $HTMLMessage;
        }
        return $HTMLMessage;
    }
}