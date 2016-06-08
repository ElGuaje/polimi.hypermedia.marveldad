<?php
	if($_SERVER['HTTP_HOST'] != 'www.marveldad.altervista.org'){
		define('DEVELOPMENT',true);
		define('ROOT',realpath($_SERVER['DOCUMENT_ROOT']).'/hypermedia/');
	}
	else{
		define('DEVELOPMENT',false);
		define('ROOT',realpath($_SERVER['DOCUMENT_ROOT']).'/');
	}
	require_once ROOT.'core/connect.php';
	
	// doJson.php?get=prodotti
	// doJson.php?get=singleproduct&pid=
	
	
	$toJ = "";
	foreach($_GET as $k=>$v){
		$_GET[$k] = $db->real_escape_string($v);
	}
	foreach($_POST as $k=>$v){
		$_GET[$k] = $db->real_escape_string($v);
	}
	if(isset($_GET['get'])){
		if( $_GET['get'] == 'prodotti'){
			
			$sql = "SELECT * FROM devices";
			
			$query = $db->query($sql);
			$telefoni = $query->fetch_all(MYSQLI_ASSOC);
			$toJ = $telefoni;
			//echo '<pre>',print_r($telefoni,true),'</pre>';
		}elseif($_GET['get'] == 'singleproduct'){
			
			$pid = $db->real_escape_string($_GET['pid']);
			$sql = "SELECT * FROM devices WHERE idProdotto = ".$pid;
			
			$query = $db->query($sql);
			$telefoni = $query->fetch_all(MYSQLI_ASSOC);
			$toJ = $telefoni;
		}
	}
	
	
echo json_encode($toJ, JSON_NUMERIC_CHECK);
	
	//echo '<pre>',print_r($_GET,true),'</pre>';




?>