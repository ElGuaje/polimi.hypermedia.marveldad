// Phonegap stuff
$(document).bind("mobileinit", function () { 
	$.support.cors = true; 
	$.mobile.allowCrossDomainPages = true; 
});
$.ajaxSetup({
	crossDomain: true
});

var mySite = 'http://127.0.0.1/hypermedia/';

function getURLParameter(name) {
  return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search) || [null, ''])[1].replace(/\+/g, '%20')) || null;
}

var imgPathProduct = mySite+'media/product_images/';
var imgPathSL = mySite+'media/sl_images/';

$(document).ready(function(){
    $('#divNavbar').load('include/navigation.html');
	$('#divFooter').load('include/footer.html');
});