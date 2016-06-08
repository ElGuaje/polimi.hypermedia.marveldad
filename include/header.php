<!DOCTYPE html>
<html lang="it">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>TIM Telecom Italia Mobile</title>
		<meta name="description" content="">
		<meta name="author" content="">
		<!--link rel="icon" href="../../favicon.ico"-->
		
		<!-- Bootstrap core CSS -->
		<link href="css/bootstrap.css" rel="stylesheet">

		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

		<!-- Custom styles for this template -->
		<link href="css/navbar-fixed-top.css" rel="stylesheet">
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		
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