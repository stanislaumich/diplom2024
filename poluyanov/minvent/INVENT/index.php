<?php
$dbn = new PDO("sqlite:minvent.sqlite", '', '');
$sth = $dbn->prepare("select * from people");
$sth->execute();
while($r = $sth->fetch(PDO::FETCH_ASSOC)){
 echo $r['name'];
 echo"<br>";
}
