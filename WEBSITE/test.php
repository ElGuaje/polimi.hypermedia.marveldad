<?php
	include 'include/header.php';
?>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
	<link href="https://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" rel="stylesheet"/>

	<p id="btnTest" >Ottieni Prodotti</p>
	
	
	<p class="productButton" pid="2">Prodotto</p>
	<p class="productButton" pid="1">Prodotto</p>
	
	<div id="divResult"></div>
	
	<script type="text/javascript">
	
		$(function(){
			
			$('.productButton').button({
				icons: {
					primary: "ui-icon-locked"
				  }
			}).click(function(){
				$.ajax({
					url: mySite+'doJson.php?get=singleproduct&pid='+$(this).attr('pid'),
					method: 'GET',
					dataType: 'json'
				}).done(function(data){
					$('#divResult').empty();
					$.each(data,function(i,v){
						$('#divResult').append('<b>Nome:</b> '+v['nome']+'<br>');
					});
				});
			});
			
			
			
			
			
			
			$('#btnTest').button({
				icons: {
					primary: "ui-icon-locked"
				  }
			}).click(function(){
				
				$.ajax({
					url: mySite+'doJson.php?get=prodotti',
					method: 'GET',
					dataType:'json'
				}).done(function(data){
					$('#divResult').empty();
					$.each(data,function(i,v){
						$('#divResult').append('<b>Nome:</b> '+v['nome']+'<br>');
					});
					
				}).fail(function(){
					alert('Errore');
				});
				
				
				
			});
		});

	</script>
	
<?php
	include 'include/footer.php';
?>