<?php 
	include 'include/header.php';
?>
	<div class="container">
		<div class="col-md-4 col-xs-12">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <a class="product-modal" data-toggle="modal" data-target="#productModal" href="#"> 
                            <img src="media/product_images/APPLE_OIPHONE_SE_spacegrey_01.jpg" alt="iphone">
                        </a>
                    </div>

                    <div class="item">
                        <a data-toggle="modal" data-target="#productModal" href="#">
                            <img src="media/product_images/LG_G5_titan_01_1.jpg" alt="lg">
                        </a>
                    </div>

                    <div class="item">
                        <a data-toggle="modal" data-target="#productModal" href="#">
                            <img src="media/product_images/sony-xperia-x-grphblk-3_4sx_0.jpg" alt="sony">
                        </a>
                    </div>

                    <div class="item">
                        <a data-toggle="modal" data-target="#productModal" href="#">
                            <img src="media/product_images/huawei-p9-grey-01.jpg" alt="huawei">
                        </a>
                    </div>
                </div>
            </div>
            <div id="productModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="productModal">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">    
                        <div class="modal-body">
                            <img class="modal-img img-responsive" src="media/product_images/APPLE_OIPHONE_SE_spacegrey_01.jpg" alt="iphone">
                        </div>
                    </div>
                </div>
            </div>
		</div>
        <div class="col-md-8 col-xs-12">
            <div id="nomeProdotto">
                <h1>NOME PRODOTTO</h1>
            </div>
            <div class="col-md-3" id="prezzo">
                <p>xxx,xx€</p>
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
                    <p>Some content some content some content some content some content some content some content.</p>
                  </div>
                  <div id="menu1" class="tab-pane fade">
                    <h3>Scheda Tecnica</h3>
                    <p>Some content some content some content some content some content some content some content.</p>
                  </div>
                  <div id="menu2" class="tab-pane fade">
                    <h3>Servizi Associati</h3>
                    <p>Some content some content some content some content some content some content some content.</p>
                  </div>
                  <div id="faq" class="tab-pane fade">
                    <h3>FAQ</h3>
                    <p>Some content some content some content some content some content some content some content.</p>
                  </div>
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