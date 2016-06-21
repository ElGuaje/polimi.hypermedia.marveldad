function getURLParameter(name) {
  return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search) || [null, ''])[1].replace(/\+/g, '%20')) || null;
}

var imgPathProduct = 'media/product_images/';

$(document).ready(function(){
    $('#divNavbar').load('include/navigation.html');
	$('#divFooter').load('include/footer.html');
});