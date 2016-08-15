<?php

/***
 * ss-panel v3 Bootstrap
 * @author orvice
 * @email sspanel@orx.me
 * @url https://github.com/orvice/ss-panel
 */

use App\Services\Boot;
use App\Services\Logger;
use App\Models\AccessStat;

//  BASE_PATH
define('BASE_PATH', __DIR__ . '/../');
define('VERSION', '3.4.2');

// Vendor Autoload
require BASE_PATH . '/vendor/autoload.php';

Boot::loadEnv();
Boot::setDebug();
Boot::setVersion(VERSION);
// config time zone
Boot::setTimezone();
// Init db
Boot::bootDb();

if( !isset($_COOKIE["accessUserStat"]) ) {
    Logger::debug("newGuest");
    setcookie("accessUserStat", "newGuest", time() + 3600);

    $dateNow = date('Y-m-d');
    $accessStat = AccessStat::where('recordDate', '=', $dateNow)->first();
    if ($accessStat == null) {
        Logger::debug("create new accessStat db data");
        $accessStat = new AccessStat();
        $accessStat->counter = 1;
        $accessStat->recordDate = $dateNow;
        $accessStat->save();
    } else {
        $accessStat->counter = $accessStat->counter + 1;
        $accessStat->update();
    }
}else {
    //Logger::debug("oldGuest");
    setcookie("accessUserStat","oldGuest");
}

