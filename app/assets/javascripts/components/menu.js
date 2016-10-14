if($('.menu').html()!=undefined) {
  $(window).on('scroll', function() {
      $('.menu').addClass('nav--fixed');
      $('.menu-mobile').addClass('nav--fixed');
      $('body').addClass('body--nav-fixed');
  })

  $('.menu-mobile .menu-title').click(function(){
    $('.menu-mobile').toggleClass('menu-mobile--active');
    $(window).scrollTop($('.banner').height());
  });

  $('.menu-mobile a').click(function(){
    $('.menu-mobile').removeClass('menu-mobile--active');
  });


  $('[data-anchor]').on('click', function(element) {
    var target = $('[data-anchor-content="' + $(this).data('anchor') + '"]');
    element.preventDefault();
    $(document).off('scroll');

    $('html, body').animate({
      'scrollTop': (target.offset().top)
    }, 500, 'swing');

  });

}