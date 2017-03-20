<?php



function def($term) {
	if ($term != '')
		return $term;
	return '';
}

function html_eng($term) {
	if ($term != '')
		return ' Inglese: <em xml:lang="en">' . $term . '</em>.';
	return '';
}

function md_eng($term) {
	if ($term != '')
		return ' Inglese: _' . $term . '_.';
	return '';
}



$output_html = file_get_contents('template.xml');
$output_md   = file_get_contents('template.md');

$gloss_html = '';
$gloss_md   = '';

include_once '../functions.php';
$termini = queryMysql("SELECT * FROM Definizioni ORDER BY voce");
foreach ($termini as $t) {
	$gloss_html .= "\n\t\t\t<dt id=\"" . htmlentities($t['id']) . "\">" . htmlentities($t['voce']) . "</dt>\n";
	$gloss_html .= "\t\t\t<dd>" . def(htmlentities($t['def'])) . html_eng(htmlentities($t['eng'])) . "</dd>";
	$gloss_md .=  "* __" . $t['voce'] . "__: " . def($t['def']) . md_eng($t['eng']) . "\n";
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
