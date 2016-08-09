<?php


namespace App\Services\Mail;

use App\Services\Mail\spannerX\Mail;

class Api extends Base
{
    private $mail;

    public function __construct()
    {
        $mail = new Mail;
        $this->mail = $mail;
    }
    
    public function send($to, $subject, $text, $file)
    {
        $mail = $this->mail;
        $ret = false;
        try {
            $mail->addAddress($to);     // Add a recipient
            $mail->isHTML(true);
            $mail->Subject = $subject;
            $mail->Body = $text;
            // $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
            if ($mail->send()) {
                //echo "Validation Email - Sent Successfully" ;
                $ret = true;
            }
            $mail->ClearAddresses();
        } catch( phpmailerException $e ) {
            //echo "Validation Email - Sending failed - " . $e->getMessage() ;

            return false;
        }
        return $ret;
    }
}