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
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner small-carousel" role="listbox">
                    <div class="item small-item active">
                        <a class="product-modal" data-toggle="modal" data-target="#productModal1" href="#"> 
                            <img class="img-responsive" src="media/product_images/APPLE_OIPHONE_SE_spacegrey_01.jpg" alt="iphone">
                        </a>
                    </div>

                    <div class="item small-item">
                        <a class="product-modal" data-toggle="modal" data-target="#productModal2" href="#"> 
                            <img class="img-responsive" src="media/test_iphone1.jpg" alt="iphone">
                        </a>
                    </div>

                    <div class="item small-item">
                        <a class="product-modal" data-toggle="modal" data-target="#productModal3" href="#"> 
                            <img class="img-responsive" src="media/test_iphone2.jpg" alt="iphone">
                        </a>
                    </div>
                    
                    <div class="item small-item">
                        <a class="product-modal" data-toggle="modal" data-target="#productModal4" href="#"> 
                            <img class="img-responsive" src="media/test_iphone3.jpg" alt="iphone">
                        </a>
                    </div>
                </div>
            </div>
            <div id="productModal1" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="productModal">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">  
                        <div class="modal-body">
                            <img class="modal-img img-responsive" src="media/product_images/APPLE_OIPHONE_SE_spacegrey_01.jpg" alt="iphone">
                        </div>
                    </div>
                </div>
            </div>
            <div id="productModal2" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="productModal">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">  
                        <div class="modal-body">
                            <img class="modal-img img-responsive" src="media/test_iphone1.jpg" alt="iphone">
                        </div>
                    </div>
                </div>
            </div>
            <div id="productModal3" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="productModal">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">  
                        <div class="modal-body">
                            <img class="modal-img img-responsive" src="media/test_iphone2.jpg" alt="iphone">
                        </div>
                    </div>
                </div>
            </div>
            <div id="productModal4" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="productModal">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">  
                        <div class="modal-body">
                            <img class="modal-img img-responsive" src="media/test_iphone3.jpg" alt="iphone">
                        </div>
                    </div>
                </div>
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
            <div id="nomeProdotto">
                <h1>NOME PRODOTTO</h1>
            </div>
            <div class="col-md-3" id="prezzo">
                <p><br>xxx,xx€</p>
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
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
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
		function getURLParameter(name) {
		  return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search) || [null, ''])[1].replace(/\+/g, '%20')) || null;
		}
		$(function(){
			var pid = getURLParameter('pid');
			$.ajax({
				url: 'dojson.php?get=singleproduct&pid='+pid,
				method: 'GET',
				dataType: 'json'
			}).done(function(data){
				console.log(data);
			}).fail();
		});
	</script>
<?php	
	include 'include/footer.php';
?>