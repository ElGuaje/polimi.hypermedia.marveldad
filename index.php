<?php 
	include 'include/header.php';
?>
	<div class="container">
		<div class="row">
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
							<a href="http://google.com">
								<img src="media/product_images/APPLE_OIPHONE_SE_spacegrey_01.jpg" alt="iphone">
							</a>
						</div>

						<div class="item">
							<img src="media/product_images/LG_G5_titan_01_1.jpg" alt="lg">
						</div>

						<div class="item">
							<img src="media/product_images/sony-xperia-x-grphblk-3_4sx_0.jpg" alt="sony">
						</div>

						<div class="item">
							<img src="media/product_images/huawei-p9-grey-01.jpg" alt="huawei">
						</div>
					</div>
				</div>
		</div>
	</div>
<?php	
	include 'include/footer.php';
?>