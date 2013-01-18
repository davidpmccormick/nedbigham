/*global audiojs */
$(document).ready(function () {
	// audio.js
	$(function () {
		// Setup the player to autoplay the next track
		var a = audiojs.createAll({
			trackEnded: function () {
				var next = $('ol li.playing').next();
				if (!next.length) {
					next = $('ol li').first();
				}
				next.addClass('playing').siblings().removeClass('playing');
				audio.load($('a', next).attr('data-src'));
				audio.play();
			}
		});

		// Load in the first track
		var audio = a[0];
		var first = $('ol a').attr('data-src');
/* 		$('ol li').first().addClass('playing'); */
		audio.load(first);

		// Load in a track on click
		$('ol li').click(function (e) {
			e.preventDefault();
			$(this).addClass('playing').siblings().removeClass('playing');
			audio.load($('a', this).attr('data-src'));
			audio.play();
		});
	});
});

