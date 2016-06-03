<!DOCTYPE html>
<html lang="it">
	<head>
		<meta charset="utf-8">
		<title>TIM Telecom Italia Mobile</title>
		<meta name="description" content="">
		<meta name="author" content="">
	</head>
	<body>
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
		include ROOT.'include/navigation.php';
	?>
		<div id="wrapper">