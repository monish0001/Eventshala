/* ------------------------------------- */
/*  TABLE OF CONTENTS
 /* ------------------------------------- */
/*   PRE LOADING                          */
/*   WOW                                 */
/*   Menu                                */
/*  STICKY HEADER                        */
/*   COUNTER                             */
/*   portfolio-filter                    */
/*   pop up                              */
/*   OWL CAROUSEL                        */
/*    MAPS                               */
/*  TEXT ANIMATE                         */
/*   TEXT ROTATOR                        *



/*--------------------------------------------*/
/*  PRE LOADING
 /*------------------------------------------*/
'use strict';
$(window).on('load',function () {
    $('.loader').delay(500).fadeOut('slow');
});

$(document).ready(function() {

    'use strict';
    /* ------------------------------------- */
    /*   wow
     /* ------------------------------------- */
    var wow = new WOW(
        {
            animateClass: 'animated',
            offset: 10,
            mobile: true
        }
    );
    wow.init();

    /* ==============================================
     Smooth Scroll To Anchor
     =============================================== */
    $('a.has_sub_menu').on('click', function(e){
        if (window.matchMedia('(max-width: 992px)').matches){
            e.preventDefault();
            $(this).toggleClass("active_menu");
            $(this).next($('.sub_menu')).slideToggle();
        }
    });
    $('a.nav-link[href^="#"]').on('click', function (event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });

    /* ==============================================
     STICKY HEADER
     =============================================== */
    $(window).on('scroll', function () {
        if ($(window).scrollTop() < 100) {
            $('.header').removeClass('sticky_header');
            $('#back-to-top').removeClass('active');
        } else {
            $('.header').addClass('sticky_header');
            $('#back-to-top').addClass('active');
        }
    });

    $(window).on('scroll', function () {
        if ($(window).scrollTop() < 400) {
            $('#back-to-top').removeClass('active');
        } else {
            $('#back-to-top').addClass('active');
        }
    });



    /* --------------------------------------------------------
     COUNTER JS
     ----------------------------------------------------------- */

    $('.counter').counterUp({
        delay: 5,
        time: 3000
    });

    /* ==============================================
        portfolio-filter
        =============================================== */

    // filter items on button click
    $('#filtr-container').on('click', 'li', function(e) {
        e.preventDefault();
        $('#filtr-container li').removeClass('active');
        $(this).closest('li').addClass('active');
    });

    $(window).on('load',function(){
        var filtrContainer = $('.filtr-container');
        if(filtrContainer.length > 0) {
            filtrContainer.filterizr();
        }
    });


    /* ==============================================
     pop up
     =============================================== */

    $('.filtr-container').magnificPopup({
        delegate: 'a',
        type: 'image',
        tLoading: 'Loading image #%curr%...',
        mainClass: 'mfp-img-mobile',
        gallery: {
            enabled: true,
            navigateByImgClick: true,
            preload: [0,1] // Will preload 0 - before current, and 1 after the current image
        },
        image: {
            tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
            titleSrc: function(item) {
                return item.el.attr('title');
            }
        },
        zoom: {
            enabled: true,
            duration: 300, // don't foget to change the duration also in CSS
            opener: function (element) {
                return element.find('img');
            }
        }
    });

    $('.popup_video').magnificPopup({
        disableOn: 700,
        type: 'iframe',
        mainClass: 'mfp-fade',
        removalDelay: 160,
        preloader: false,
        fixedContentPos: false
    });

    // /* ==============================================
    //  OWL CAROUSEL
    //  =============================================== */
    $(".hero_carousel").owlCarousel({
        loop:true,
        autoplay:true,
        smartSpeed:550,
        autoplayHoverPause:false,
        dots:true,
        nav:true,
        navText:['<i class="lnr-arrow-left lnr"></i>','<i class="lnr-arrow-right lnr"></i>'],
        responsiveClass:true,
        items:1,
        animateOut: 'fadeOut',
        animateIn: 'fadeIn'
    });
    $(".testimonial_carousel").owlCarousel({
        loop:true,
        autoplay:true,
        smartSpeed:550,
        autoplayHoverPause:false,
        dots:false,
        nav:false,
        items:1
    });

    $(".blog_carousel").owlCarousel({
        loop:true,
        autoplay:true,
        smartSpeed:450,
        autoplayHoverPause:false,
        dots:false,
        nav:false,
        responsiveClass:true,
        responsive:{
            0:{
                items:1
            },
            450:{
                items:1

            },
            800:{
                items:2

            },
            1200:{
                items:3

            }
        },
        items:3
    });
    $(".brand_carousel").owlCarousel({
        loop:true,
        autoplay:true,
        smartSpeed:450,
        autoplayHoverPause:false,
        dots:false,
        nav:false,
        responsiveClass:true,
        responsive:{
            0:{
                items:2
            },
            600:{
                items:3

            },
            1000:{
                items:5

            }
        },
        items:5
    });

    /* ==============================================
    Blog Masonry
    =============================================== */
    jQuery('.masonry_section').masonry({
        itemSelector: '.grid-item',
        columnWidth: '.grid-sizer',
        percentPosition: true,
        transitionDuration: 0
    });


        if($("#typed").length > 0){
            var typed = new Typed('#typed', {
                stringsElement: '#typed-strings',
                typeSpeed: 100,
                loop: true
            });
        }

        $('#home_intro_video').YTPlayer({
            fitToBackground: true,
            videoId: 'LSmgKRx5pBo'
        });
});