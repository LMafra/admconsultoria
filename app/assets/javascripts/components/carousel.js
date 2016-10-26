var carousel;
$(document).on('page:change', function() {
    carousel = $(".ul-principios");
    carousel.itemslide();
});