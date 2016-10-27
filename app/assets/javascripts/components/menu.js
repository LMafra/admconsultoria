$('ul.nav').find('a').click(function(){
    var $href = $(this).attr('href');
    var $anchor = $('#'+$href).offset();
    $('html, body').animate({
        scrollTop: $('.entry').offset().top + 1000
    }, 'slow');
    return false;
});