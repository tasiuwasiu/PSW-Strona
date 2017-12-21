<?php

$link = mysqli_connect("localhost","root", "pass");

if(mysqli_connect_errno())
{
	die("ERROR");
}

if(mysqli_query($link, "CREATE DATABASE uzytkownicy") == TRUE)
	echo 'Created database';
else
	die('Error while creating db');

$link->select_db("uzytkownicy");
$sql = "CREATE TABLE Uzytk (
username VARCHAR(20) PRIMARY KEY, 
email VARCHAR(50) NOT NULL,
password VARCHAR(20) NOT NULL,
UNIQUE (email)
)";

if (mysqli_query($link, $sql) == TRUE)
	echo 'Created table';
else
	die ('Error while creating table');

$sql = "INSERT INTO Uzytk VALUES ('admin', 'admin@email.com', 'admin1')";
mysqli_query($link, $sql);
$sql = "INSERT INTO Uzytk VALUES ('user1', 'user1@email.com', 'userp')";
mysqli_query($link, $sql);

$link -> close();

?>