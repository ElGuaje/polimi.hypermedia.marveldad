<?php

	if(DEVELOPMENT){
		$host = 'localhost';
		$user = 'hypermedia';
		$pass = 'hypermedia';
		$db = 'hypermedia09';
	}else{
		$host = 'localhost';
		$user = '';
		$pass = '';
		$db = 'my_marveldad';
	}
	
	$db = new mysqli($host, $user, $pass, $db);
	if ($db->connect_errno) {
		echo 'Errore connessione DB: (' . $db->connect_errno . ') ' . $db->connect_error;
	}else{
		echo 'Connessione DB OK.'; 
	}
	unset($pass);
	
	
	
	
?>