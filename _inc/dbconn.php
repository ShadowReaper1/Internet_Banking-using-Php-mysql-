<?php
$serverName="localhost";
$dbusername="root";
$dbpassword="";
$dbname="internet_banking";
$conn=mysqli_connect($serverName,$dbusername,$dbpassword,$dbname)/* or die('the website is down for maintainance')*/;
//mysqli_select_db($dbname) or die(mysqli_error());
?>