<?php

$host = "localhost";
$username = "root";
$pwd = "";
$dbname = "zeerius";

$conn = new mysqli($host, $username, $pwd, $dbname);

if( $conn->connect_error ){
	die("Connection Failed.");
}