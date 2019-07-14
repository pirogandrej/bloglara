/* === setup slick-slide === */
$(document).ready(function(){
    $('.carousel').slick({
        slidesToShow: 1,
        autoplay: true,
        autoplaySpeed: 4000,
        dots: false,
        arrows: false,
        infinite: true,
        speed: 1000,
        fade: true,
        cssEase: 'linear'
    });
});

/* === back-to-top === */

var btn = $('.back-to-top');

$(window).scroll(function() {
    if ($(window).scrollTop() > 300) {
        btn.addClass('show');
    } else {
        btn.removeClass('show');
    }
});

btn.on('click', function(e) {
    e.preventDefault();
    $('html, body').animate({scrollTop:0}, '300');
});

