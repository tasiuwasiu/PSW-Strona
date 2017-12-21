<?php

$link = mysqli_connect("localhost","root", "pass");

if(mysqli_connect_errno())
{
	die("ERROR");
}

if (mysqli_query($link, "DROP DATABASE uzytkownicy")==TRUE)
	echo 'Done';
else
	echo 'ERROR';

$link -> close();
?>