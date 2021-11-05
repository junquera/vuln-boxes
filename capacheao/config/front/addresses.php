<table>
<thead>
        <tr><td>IP</td><td>Date</td></tr>
</thead>
<?php
function getUserIpAddr(){
    if(!empty($_SERVER['HTTP_CLIENT_IP'])){
        //ip from share internet
        $ip = $_SERVER['HTTP_CLIENT_IP'];
    }elseif(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
        //ip pass from proxy
        $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
    }else{
        $ip = $_SERVER['REMOTE_ADDR'];
    }
    return $ip;
}

function log_conection($db){
        pg_query($db, "INSERT INTO register(ip) VALUES ('".getUserIpAddr()."')");
}

   $host        = "host = ".$_ENV["DB_ADDR"];
   $port        = "port = ".$_ENV["DB_PORT"];
   $dbname      = "dbname = ".$_ENV["DB_NAME"];
   $credentials = "user = ".$_ENV["DB_USER"]." password = ".$_ENV["DB_PASS"];
   $db = pg_connect( "$host $port $dbname $credentials"  );


   log_conection($db);
   $result = pg_query($db, "SELECT ip, t FROM register ORDER BY t DESC");

    while ($row = pg_fetch_row($result)) {
        echo "<tr>\n";
                printf("<td>%s</td><td>%s</td>\n", $row[0], $row[1]);
        echo "</tr>\n";
    }

?>
</table>