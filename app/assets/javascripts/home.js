function smoothScroll(e, hash){
 // prevent default anchor click behavior
 e.preventDefault();

 // animate
 $('html, body').animate({
   scrollTop: $(hash).offset().top
 	}, 300, function(){

   // when done, add hash to url
   // (default click behaviour)
   window.location.hash = hash;
 	});		
}

jQuery(document).ready(function($) {

	/* Smooth scroll for nav elements */
	$(".navbar-collapse ul li a").on('click', function(e) {
		smoothScroll(e, this.hash);
	});

	/* Smooth scroll for nav-brand element */
	$("a.nav-brand").on('click', function(e) {
		smoothScroll(e, this.hash);
	});

});
