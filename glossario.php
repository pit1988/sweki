<?php

$output = file_get_contents('gloss_template.xml');

$glossario = '';
include_once 'functions.php';
$termini = queryMysql("SELECT id, voce, def FROM Definizioni ORDER BY id");
foreach ($termini as $t) {
	$glossario .= "\n\t\t\t<dt id=\"" . $t['id'] . "\">" . $t['voce'] . "</dt>\n";
	$glossario .= "\t\t\t<dd>\"" . $t['def'] . ".</dd>";
}
$glossario .= "\n\t\t";

$output = str_replace('<glossario />', $glossario, $output);
echo $output;
$html_file = fopen('glossario.html', 'w');
fwrite($html_file, $output);

?>
