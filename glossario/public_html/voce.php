<?php

function removeElementWithValue($array, $key, $value){
     foreach($array as $subKey => $subArray){
          if($subArray[$key] == $value){
               unset($array[$subKey]);
          }
     }
     return $array;
}

function getElementWithValue($array, $field, $value){
   foreach($array as $key)
   {
      if ($key[$field] === $value )
         return $key;
   }
   return false;
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

if (isset($_POST['submit'])) {
	// echo "decco";
	$gloss_html .="id=> ".$_POST['id'].$_POST['voce'].$_POST['def'].$_POST['eng'].$_POST['modify'];
	$to_insert=array (
		id=> $_POST['id'], 
		voce=> $_POST['voce'],
		def=> $_POST['def'], 
		eng=> $_POST['eng']);

	if(isset($_POST['modify'])) { //modifica
		$id=$_POST['id_old'];
		$termini=removeElementWithValue($termini, "id", $id);
	}
	//inserimento
	$n_el=array_push($termini, $to_insert);
	$myJSON = json_encode($termini, JSON_PRETTY_PRINT);
	$json_file = fopen('data.json', 'w');
	fwrite($json_file, $myJSON);
	header('location:index.php');
    exit;
}

elseif (isset($_GET['id'])) {
	$id_old=$_GET['id'];
	$key=getElementWithValue($termini, 'id', $id_old);
	if($key!=false){
		$form='
			<form method="post" action="voce.php">
			  <fieldset>
			    <legend>Modifica voce nel glossario:</legend>
			    <p>Id univoco:
			    <input type="text" name="id" value="'.$key[id].'">
			    </p><p>
			    Voce:
			    <input type="text" name="voce" value="'.$key[voce].'">
			    </p><p>
			    Definizione:
			    </p><p>
			    <textarea name="def" rows="10" cols="70">'.$key[def].'</textarea>
			    </p><p>
			    Definizione inglese:
			    <input type="text" name="eng" value="'.$key[eng].'">
			    </p><p>
			    <input type="hidden" name="modify" value="true">
			    <input type="hidden" name="id_old" value="'.$id_old.'">
			    <input type="submit" value="Submit" name="submit">
			    <a href="index.php">Annulla</a>
			    </p>
			  </fieldset>
			</form>
			';

		$gloss_html.=$form;
		
	}
}
else{
	$form='
	<form method="post" action="voce.php">
	  <fieldset>
	    <legend>Nuova voce nel glossario:</legend>
	    <p>Id univoco:
	    <input type="text" name="id">
	    </p><p>
	    Voce:
	    <input type="text" name="voce">
	    </p><p>
	    Definizione:
	    </p><p>
	    <textarea name="def" rows="10" cols="70"></textarea>
	    </p><p>
	    Definizione inglese:
	    <input type="text" name="eng">
	    </p><p>
	    <input type="submit" value="Submit" name="submit">
	    <a href="index.php">Annulla</a>
	    </p>
	  </fieldset>
	</form>
	';

	$gloss_html.=$form;
	}
/*foreach ($termini as $t) {
	$gloss_html .= "\n\t\t\t<dt id=\"" . htmlentities($t['id']) . "\">" . htmlentities($t['voce']) . "</dt>\n";
	$gloss_html .= "\t\t\t<dd>" . def(htmlentities($t['def'])) . html_eng($t['eng'], $t['voce']) . "</dd>";
	$gloss_html .= "\t\t<dd><a href='glossario.php?id=" . htmlentities($t['id']) . "'>rimuovi</a></dd>";
	$gloss_md .=  "* __" . $t['voce'] . "__: " . def($t['def']) . md_eng($t['eng'], $t['voce']) . "\n";
}
$gloss_html .= "\n\t\t";*/

$output_html = str_replace('<glossario />', $gloss_html, $output_html);
echo $output_html;
$html_file = fopen('glossario.html', 'w');
fwrite($html_file, $output_html);


?>
