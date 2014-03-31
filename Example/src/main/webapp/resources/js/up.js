$(document).ready(function(){
	$(function slide (){
		
		$("#back-top").hide();
	
		$(window).scroll(function (){
			if ($(this).scrollTop() > 100){
				$("#back-top").fadeIn();
			} else{
				$("#back-top").fadeOut();
			}
		});

		
		$("#back-top a").click(function (){
			$("body,html").animate({
				scrollTop:0
			}, 1800);
			return false;
		});
	});
});


