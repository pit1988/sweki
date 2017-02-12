<?php

$output_html = file_get_contents('template.xml');
$output_md = file_get_contents('template.md');

$gloss_html = '';
$gloss_md = '';
include_once '../functions.php';
$termini = queryMysql("SELECT id, voce, def FROM Definizioni ORDER BY id");
foreach ($termini as $t) {
	$gloss_html .= "\n\t\t\t<dt id=\"" . htmlentities($t['id']) . "\">" . htmlentities($t['voce']) . "</dt>\n";
	$gloss_html .= "\t\t\t<dd>" . htmlentities($t['def']) . ".</dd>";
	$gloss_md .=  "* __" . $t['voce'] . "__: " . $t['def'] . ".\n";
}
$gloss_html .= "\n\t\t";

$output_html = str_replace('<glossario />', $gloss_html, $output_html);
echo $output_html;
$html_file = fopen('index.html', 'w');
fwrite($html_file, $output_html);

$output_md = str_replace('GLOSSARIO', $gloss_md, $output_md);
$md_file = fopen('README.md', 'w');
fwrite($md_file, $output_md);

?>
