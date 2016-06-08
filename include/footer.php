
		<div id="footer">
			
			Copyright &copy; <?php echo date('Y'); ?>
			
		</div>
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
	<script>
		$(function(){
			$('nav .dropdown').hover(function(){ 
			  $('.dropdown-toggle', this).trigger('click'); 
			});
		});
	</script>
	</body>
</html>
 