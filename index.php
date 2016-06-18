<?php 
	include 'include/header.php';
?>
	<div class="container home-carousel">
		<div class="row home-carousel-bg">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
					</ol>

					<!-- Wrapper for slides -->
					<div id="divCarousel" class="carousel-inner" role="listbox">
						
					</div>
					
					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
					  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					  <span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
					  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					  <span class="sr-only">Next</span>
					</a>
				</div>
				
		</div>
	</div>
	
	<script>
		$(function(){
			$.ajax({
				url: 'dojson.php?get=promo',
				method: 'GET',
				dataType: 'json'
			}).done(function(data){
				$('#divCarousel').empty();
				var counter =0;
				$.each(data,function(i,v){
					$('#divCarousel').append('<div class="item"><a href="product.php?pid='+v['idProdotto']+'"><div class="carousel-caption"><h3>'+v['nome']+'</h3><p>'+v['prezzo']+' &euro;</p></div><img src="media/product_images/'+v['src']+'" alt="'+v['nome']+'"></a></div>');
					$('#myCarousel ol').append('<li data-target="#myCarousel" data-slide-to="'+counter+'" class=""></li>');
					counter ++;
				});
				$('#divCarousel').find('.item').first().addClass('active');
				$('#myCarousel ol').find('li').first().addClass('active');
			}).fail();
		});
	</script>
	
<?php	
	include 'include/footer.php';
?>