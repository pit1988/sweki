<?php

	$host   = 'localhost';
	$dbuser = 'root';
	$dbpass = 'root';
	$dbname = 'sweki';

	$connection = new mysqli($host, $dbuser, $dbpass, $dbname)
	or die("Connessione a MySQL fallita: (" . $connection->connect_errno . ") " . $connection->connect_error);

	function queryMysql($query)
	{
		global $connection;
		$result = $connection->query($query);
		if (!$result) die("Query fallita: " . $connection->error);
		return $result;
	}

	function echoRow($row)
	{
		echo "<tr>";
		foreach ($row as $field)
			echo "<td>$field</td>";
		echo "</tr>";
	}

	function destroySession()
	{
		$_SESSION = array();
		session_destroy();
	}

?>
