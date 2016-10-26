$('ul.nav').find('a').click(function(){
    var $href = $(this).attr('href');
    var $anchor = $('#'+$href).offset();
    $('html, body').animate({
          scrollTop: target.offset().top
    }, 1000);
    return false;
});

