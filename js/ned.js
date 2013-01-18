// GLOBAL
/*global Modernizr */
// change opacity of the topbar based on distance
// the navbar is scrolled from the top of the screen
function opacityAndShadow() {
		var scrollTop = $(window).scrollTop(),
		elementOffset = $('.nav').offset().top,
		theDistance = (elementOffset - scrollTop);
		
		// hold tight - Roxo magic inna area!
		var theOpacity = ((-(theDistance) / 600) + (7 / 6));
		$('.topbar').css('opacity', theOpacity);
		
		// add a feint shadow underneath the menu if it's been pinned
		if ($('.nav').hasClass('is-sticky')) {
			$('.nav').css('box-shadow', '0px 5px 5px rgba(200,200,200,0.2)');
		}
	}

// DOCUMENT READY

$(document).ready(function () {
	// pin the menu in place once it is 100 px from the top (height of the topbar)
	$("#sticker").sticky({topSpacing: 100});

	// don't make anything other than the menu bar sticky on a touch screen
	if (!(Modernizr.touch)) {
		$('.archivepin').sticky({topSpacing: 160});
		$('.mugshot').sticky({topSpacing: 110});
		$('.stickit').sticky({topSpacing: 160});
	}
   
	// VIMEO pause everything when links are clicked
	$('a, .play, .pause, .loading, .error').click(function() {
		$('iframe.thevideo').each(function() {
			Froogaloop(this).api('pause');
		});
	});
	
	// add image attributions
	function onAfter() {
    $('#imagetitle').hide().html(this.alt).fadeTo(1000,1);
	}
   
	// cycle images
	$('.cyclethis').cycle({timeout: 10000, after: onAfter});
	$('.cyclethistoo').cycle({timeout: 10000});
	
      
   // change opacity on scroll
	$(window).scroll(function () {
		opacityAndShadow();
	});
});
