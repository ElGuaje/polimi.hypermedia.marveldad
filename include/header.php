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

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		<style>
			html {
			  position: relative;
			  min-height: 100%;
			}
			body {
			  /* Margin bottom by footer height */
			  margin-bottom: 60px;
			  padding-top: 70px;

			}
			.footer {
			  position: absolute;
			  bottom: 0;
			  width: 100%;
			  /* Set the fixed height of the footer here */
			  height: 60px;
			  background-color: #f5f5f5;
			}
			body > .container {
			  padding: 60px 15px 0;
			}
			.container .text-muted {
			  margin: 20px 0;
			}

			.footer > .container {
			  padding-right: 15px;
			  padding-left: 15px;
			}
			code {
			  font-size: 80%;
			}
            .nav {
                height: 75px;
            }
            .nav-container {
                padding-top: 25px;
            }
            .navbar-collapse.in {
                overflow-y: visible;
            }
		</style>
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