<?php
	session_start();
	require_once 'functions.php';
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="it" lang="it">
<head>
	<title>sweki - Glossario</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="author" content="Giorgio Giuffrè" />
	<meta name="keywords" content="sweki, ingegneria, software, glossario, wiki" />
	<link rel="stylesheet" href="main_style.css" />
</head>

<body>

	<div id="header">
		<h1><a href="index.html"><acronym title="SoftWare Engineering wiKI">sweki</acronym></a></h1>
		<h2>la <span xml:lang="en">wiki</span> di Ingegneria del <span xml:lang="en">Software</span></h2>
	</div>

	<div id="content">
		<dl id="glossario">
<?php
	$query = queryMysql("SELECT * FROM Definizioni ORDER BY id");
	while ($row = $query->fetch_row()) {
		echo "<dt id='$row[0]'>$row[1]</dt>";
		echo "<dd>$row[2].</dd>";
	}
	$query->close();
?>
		</dl>
	</div>

</body>
</html>
 