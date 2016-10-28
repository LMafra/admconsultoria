$(function() {
	$('nav.menu a').bind('click',function(event){
		console.log("Olá");
		var $anchor = $(this);

		$('html, body').stop().animate({
			scrollTop: $($anchor.attr('href')).offset().top
		}, 1500);
		/*
		if you don't want to use the easing effects:
		$('html, body').stop().animate({
			scrollTop: $($anchor.attr('href')).offset().top
		}, 1000);
		*/
		event.preventDefault();
	});
});