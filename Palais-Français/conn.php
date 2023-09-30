<?php
$sname = "localhost";
$uname = "root";
$password = "";
$db_name = "kids";

$mysqli = mysqli_connect($sname,$uname,$password,$db_name);

// Check connection
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}