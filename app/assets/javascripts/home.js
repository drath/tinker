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
