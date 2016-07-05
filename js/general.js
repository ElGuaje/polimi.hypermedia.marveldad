// Phonegap stuff
$(document).bind("mobileinit", function () { 
	$.support.cors = true; 
	$.mobile.allowCrossDomainPages = true; 
});
$.ajaxSetup({
	crossDomain: true
});

var mySite = '';

function getURLParameter(name) {
  return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search) || [null, ''])[1].replace(/\+/g, '%20')) || null;
}

var imgPathProduct = mySite+'media/product_images/';
var imgPathSL = mySite+'media/sl_images/';

$(document).ready(function(){
    $('#divNavbar').load('include/navigation.html');
	$('#divFooter').load('include/footer.html');
});

// Custom messages
var msgErrorAjax = 'Ooops... that\'s an error!\nSome little russian hamsters are trying to fix it.\nWould you like to feed them? ';


// Custom functions
function ajaxErrorRep(){
	var feed = prompt(msgErrorAjax);
	if(feed != undefined)
		if(feed.toLowerCase() == 'yes' || feed.toLowerCase() == 'si' || feed.toLowerCase() == 'y' || feed.toLowerCase() == 's')
			alert('Thanks, they really appreciated that!\nBut unfortunately the error is still there :(');
}