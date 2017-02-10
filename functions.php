<?php

function queryMysql($query) {
	$host   = 'localhost';
	$dbuser = 'root';
	$dbpass = 'root';
	$dbname = 'sweki';

	$conn = new mysqli($host, $dbuser, $dbpass, $dbname);
	if ($conn->connect_errno)
	echo 'Connessione a MySQL fallita (' . $conn->connect_errno . '): ' . $conn->connect_error;

	$result = $conn->query($query);
	if (!$result) die("Query fallita: " . $conn->error);
	$result = $result->fetch_all(MYSQLI_ASSOC);

	$conn->close();
	return $result;
}

?>
