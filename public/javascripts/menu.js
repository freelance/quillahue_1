$(function() {
	if(document.location.toString().substring(7, 10) == 'cen') {
		$('#menuPrincipal a').each(function() {
			if($(this).attr('href').substring(0, 4) != 'http') {
				$(this).attr('href', 'http://www.sierranevadaski.com' + $(this).attr('href'));
				
				
			}
		});
	}

	$('#menuPrincipal>ul li').hover(
		function() {
			$(this).find('ul').each(function() {
				$(this).css('opacity', 0);
				$(this).stop();
				$(this).show().fadeTo(300, 0.9);
			})
		},

		function() {
			$(this).find('ul').each(function() {
				$(this).stop();
				$(this).fadeTo(300, 0, function() { $(this).hide() });
			})
		}
	);

	$('#menuPie ul li').hover(
		function() {
			$(this).find('ul').each(function() {
				$(this).stop();
				$(this).css('opacity', 0);
				$(this).show().fadeTo(300, 1);
			})
		},

		function() {
			$(this).find('ul').each(function() {
				$(this).stop();
				$(this).fadeTo(300, 0, function() { $(this).hide() });
			})
		}
	);
});