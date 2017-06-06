<?php

function removeElementWithValue($array, $key, $value){
     foreach($array as $subKey => $subArray){
          if($subArray[$key] == $value){
               unset($array[$subKey]);
          }
     }
     return $array;
}

function def($term) {
	if ($term != '')
		return $term;
	return '';
}

function html_eng($eng, $ita) {
	if ($eng != $ita && $eng != '')
		return ' Inglese: <em xml:lang="en">' . htmlentities($eng) . '</em>.';
	return '';
}

function md_eng($eng, $ita) {
	if ($eng != $ita && $eng != '')
		return ' Inglese: _' . $eng . '_.';
	return '';
}

$output_html = file_get_contents('template.xml');
$output_md   = file_get_contents('template.md');

$gloss_html = '';
$gloss_md   = '';

$string = file_get_contents("data.json");
$termini = json_decode($string, true);
// array_sort($termini, 'id', SORT_ASC);
uasort($termini, function($item1, $item2){
    return (strcasecmp ($item1[id], $item2[id]));
});

if (isset($_GET['id'])) {
	$id=$_GET['id'];
	$termini=removeElementWithValue($termini, "id", $id);
	// mettere salvataggio in json.
	$myJSON = json_encode($termini, JSON_PRETTY_PRINT);
	$json_file = fopen('data.json', 'w');
	fwrite($json_file, $myJSON);
}

$gloss_html .= "<p><a href='voce.php'>Inserisci nuova voce</a>; <a href='glossario.html'>Consulta il glossario</a></p>";

foreach ($termini as $t) {
	$gloss_html .= "\n\t\t\t<dt id=\"" . htmlentities($t['id']) . "\">" . htmlentities($t['voce']) . "</dt>\n";
	$gloss_html .= "\t\t\t<dd>" . def(htmlentities($t['def'])) . html_eng($t['eng'], $t['voce']) . "</dd>";
	$gloss_html .= "\t\t<dd><dd><a href='voce.php?id=" . htmlentities($t['id']) . "'>modifica</a>; <a href='glossario.php?id=" . htmlentities($t['id']) . "'>rimuovi</a></dd>";
	$gloss_md .=  "* __" . $t['voce'] . "__: " . def($t['def']) . md_eng($t['eng'], $t['voce']) . "\n";
}
$gloss_html .= "\n\t\t";

$output_html = str_replace('<glossario />', $gloss_html, $output_html);
echo $output_html;
$html_file = fopen('glossario.html', 'w');
fwrite($html_file, $output_html);

$output_md = str_replace('GLOSSARIO', $gloss_md, $output_md);
$md_file = fopen('README.md', 'w');
fwrite($md_file, $output_md);

?>