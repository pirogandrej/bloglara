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
