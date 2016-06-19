<?php 
	include 'include/header.php';
?>
	<div class="container">
		<div class="col-md-4 col-xs-12">
            <div id="navigationBackToCategory" class="col-md-12 col-xs-12" style="clear: both;">
                <a href="#"><p class="alignleft">< Smartphone</p></a>
            </div>
            <div id="navigationBackToPromo" class="col-md-12 col-xs-12" style="clear: both;">
                <a href="#"><p class="alignleft">< Promozioni</p></a>
            </div>
            <div id="navigationBackToService" class="col-md-12 col-xs-12" style="clear: both;">
                <a href="#"><p class="alignleft">< Servizio Assistenza</p></a>
            </div>
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators" id="dataImgCarOL">
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox" id="dataCarItems">
                </div>
            </div>
			<div id="modalImages">
				
			</div>
		</div>
        <div class="col-md-8 col-xs-12">
            <div id="navigation" class="col-md-12 col-xs-12" style="clear: both;">
                <a href="#"><p class="alignleft"><< Precedente</p></a>
                <a href="#"><p class="alignright">Successivo >></p></a>
            </div>
            <div id="navigationPromo" class="col-md-12 col-xs-12" style="clear: both;">
                <a href="#"><p class="alignleft"><< Precedente in Promozione</p></a>
                <a href="#"><p class="alignright">Successivo in Promozione >></p></a>
            </div>
            <div id="divNomeProdotto">
				<h1 id="dataNomeProdotto"></h1>
			</div>
            <div class="col-md-3 prezzo">
                <br><p id="dataPrezzo"></p>
            </div>
            <div class="col-md-4" id="specifiche">
                <h4>Specifiche prodotto:</h4>
                <ul>
                    <li>Spec 1</li>
                    <li>Spec 2</li>
                    <li>Spec 3</li>
                    <li>Spec 4</li>
                </ul>
            </div>
            <div id="prodTabs" class="col-md-9 col-xs-12">
                <ul class="nav nav-tabs">
                  <li class="active smallTabText"><a data-toggle="tab" href="#home">Descrizione</a></li>
                  <li class="smallTabText"><a data-toggle="tab" href="#menu1">Scheda Tecnica</a></li>
                  <li class="smallTabText"><a data-toggle="tab" href="#menu2">Servizi associati</a></li>
                  <li class="smallTabText"><a data-toggle="tab" href="#faq">FAQ</a></li>
                </ul>
                            
                <div class="tab-content">
                  <div id="home" class="tab-pane fade in active">
                    <h3>Descrizione</h3>
                    <p id="dataDescrizione">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
                        Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur
                        ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla
                        consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
                        arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu
                        pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum</p>
                  </div>
                  <div id="menu1" class="tab-pane fade">
                    <h3>Scheda Tecnica</h3>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
                        Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur
                        ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla
                        consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
                        arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu
                        pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum</p>                  </div>
                  <div id="menu2" class="tab-pane fade">
                    <h3>Servizi Associati</h3>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
                        Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur
                        ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla
                        consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
                        arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu
                        pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum</p>                  </div>
                  <div id="faq" class="tab-pane fade">
                    <h3>FAQ</h3>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
                        Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur
                        ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla
                        consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
                        arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu
                        pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum</p>                  </div>
                </div>
            </div>
        </div>
	</div>
	<script>
	var carImg = '<div class="item"><a class="product-modal" data-toggle="modal" data-target="" href="#"><img src="media/test_iphone0_small.jpg" alt=""></a></div>';
	var modalImg = '<div class="modal fade toSetClass" tabindex="-1" role="dialog" aria-labelledby="productModal"><div class="modal-dialog modal-lg"><div class="modal-content"><div class="modal-body"><img class="modal-img img-responsive" src="" alt=""></div></div></div></div>';
		$(function(){
			var pid = getURLParameter('pid');
			$.ajax({
				url: 'dojson.php?get=singleproduct&pid='+pid,
				method: 'GET',
				dataType: 'json'
			}).done(function(data){
				console.log(data);
				$('#dataNomeProdotto').html(data['nome']);
				$('#dataPrezzo').html(data['prezzo'].toFixed(2) +'&euro;');
				$('#dataDescrizione').html(data['descrizione']);
				
				if(data['immagini']){
					var counter =0;
					$.each(data['immagini'],function(i,v){
						$('#dataCarItems').append(carImg).find('.product-modal').last().attr('data-target','.modalImg'+counter).find('img').last().attr('src',imgPathProduct+v['src']);
						$('#dataImgCarOL').append('<li data-target="#myCarousel" data-slide-to="'+counter+'"></li>');
						$('#modalImages').append(modalImg).find('.toSetClass').removeClass('toSetClass').addClass('modalImg'+counter).find('img').last().attr('src',imgPathProduct+v['src']).attr('id','modalImg'+counter);
						counter++;
					});
					$('#dataCarItems').find('.item').first().addClass('active');
					$('#myCarousel ol').find('li').first().addClass('active');
				}
			}).fail();
		});
	</script>
<?php	
	include 'include/footer.php';
?>