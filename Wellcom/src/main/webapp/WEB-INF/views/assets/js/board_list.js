$(function() {
	$(".search_button").click(function(e) {
		e.preventDefault();
		$("#search_background_modal").fadeIn(300);
		$("#search_modal_button_area").fadeIn(200);
		//$(".close_icon").fadeIn(300);
		$("body").css('overflow-y', 'hidden');
	}); // end of $("#menu").click(function(){
		
	$("#search_background_modal").click(function() {
		$(this).fadeOut(300);
		$("#search_modal_button_area").fadeOut(200);
		$(".close_icon").fadeOut(200);
		$("body").css('overflow-y', 'auto');
	}); // end of $("#background").click(function(){
		
		
		
}); // end of $(function() {