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

var imgPathProduct = mySite + 'media/product_images/';
var imgPathProductResized = mySite + 'media/product_images/resized/';
var imgPathSL = mySite + 'media/sl_images/';
var imgPathAss = mySite + 'media/assistenza/';

$(document).ready(function () {
    $('#divNavbar').load('include/navigation.html', function () {
        if (typeof setActivePageCaller == 'function')
            setActivePageCaller();
    });
    $('#divFooter').load('include/footer.html');
});

// Custom messages
var msgErrorAjax = 'Ooops... that\'s an error!\nSome little russian hamsters are trying to fix it.\nWould you like to feed them? ';


// Custom functions
function ajaxErrorRep() {
    var feed = prompt(msgErrorAjax);
    if (feed != undefined)
        if (feed.toLowerCase() == 'yes' || feed.toLowerCase() == 'si' || feed.toLowerCase() == 'y' || feed.toLowerCase() == 's')
            alert('Thanks, they really appreciated that!\nBut unfortunately the error is still there :(');
};

function setActivePage(page) {
    $(page).find('a').addClass('currentPageNav');
}

$(document).ready(function () {
    $('a[data-carousel="true"]').on('shown.bs.tab', function (e) {
        var target = $(e.target).attr("href");

        (function ($) {
            $(function () {
                var jcarousel = $('.jcarousel');

                jcarousel.on('jcarousel:reload jcarousel:create', function () {
                        var carousel = $(this),
                            width = carousel.innerWidth();


                        if (width >= 600) {
                            width = width / 2;
                        } else if (width >= 350) {
                            width = width / 2;
                        }

                        carousel.jcarousel('items').css('width', Math.ceil(width) + 'px');
                    })
                    .jcarousel({
                        wrap: 'circular'
                    });

                $('.jcarousel-control-prev')
                    .jcarouselControl({
                        target: '-=1'
                    });

                $('.jcarousel-control-next')
                    .jcarouselControl({
                        target: '+=1'
                    });

                $('.jcarousel-pagination')
                    .on('jcarouselpagination:active', 'a', function () {
                        $(this).addClass('active');
                    })
                    .on('jcarouselpagination:inactive', 'a', function () {
                        $(this).removeClass('active');
                    })
                    .on('click', function (e) {
                        e.preventDefault();
                    })
                    .jcarouselPagination({
                        perPage: 1,
                        item: function (page) {
debugger;
                            return '<a href="#' + page + '">' + page + '</a>';
                        }
                    });

            });
        })(jQuery);
    });

});
