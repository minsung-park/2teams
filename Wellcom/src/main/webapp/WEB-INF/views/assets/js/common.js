$(function() {
	$("#onTop").click(function() {
		window.scrollTo(0, 0);
	});

	$("#menu").click(function(e) {
		e.preventDefault();
		$("#gray_layer").fadeIn(300);
		$("#over_layer").fadeIn(200);
		$(".close_icon").fadeIn(300);
		$("body").css('overflow-y', 'hidden');
	}); // end of $("#menu").click(function(){

		/*$(".glyphicon-remove-circle").click(function() {
		$("#gray_layer").fadeOut(300);
		$("#over_layer").fadeOut(200);
		$("body").css('overflow-y', 'auto');
	}); // end of #("glyphicon-remove-circle").click(function(){*/

	$("#gray_layer").click(function() {
		$(this).fadeOut(300);
		$("#over_layer").fadeOut(200);
		$(".close_icon").fadeOut(200);
		$("body").css('overflow-y', 'auto');
	}); // end of $("#background").click(function(){
	// 구매 편의 하단바 //
	
	$(".close_icon").click(function() {
		$('#gray_layer').fadeOut(300);
		$("#over_layer").fadeOut(200);
		$(".close_icon").fadeOut(200);
		$("body").css('overflow-y', 'auto');
	}); // end of $("#background").click(function(){
	// 구매 편의 하단바 //

	// search_box //
	$('#search').click(function(e) {
		e.preventDefault();
		$('#search_toggle').slideToggle(200);
		if ($('#search_toggle').css('display') == 'none') {
			$('#search_input').val(null);
		};
	});
	$('#search_button').click(function(e) {
		e.preventDefault();

		if ($('#search_input').val() == '') {
			alert('검색어를 입력해 주세요')
		} else {
			alert('제품 카테고리로 이동 후, 검색한 키워드에 맞는 제품을 표시')
		};
	}); // end search_box

	$(".second_child").hide();
	$(".accordion").click(function(){
		$(this).parents(".acc").find(".ach").slideToggle(300);
		$(".accordion").not($(this)).parents(".acc").find(".ach").hide(300);
		
	}); // end of $(".accordion").click(function(){
	
	/*$(".accordion1").click(function() {
		$(".first_child").slideToggle(300);
		$(".second_child").hide(300);
		
		$(this).find(">img").attr("src", function(index,attr){
			if(attr.match('up_arrow')){
				return attr.replace("up_arrow.png","down_arrow.png");
			} else {
				return attr.replace("down_arrow.png","up_arrow.png");
			}		
		});	// end of $(this).find("img").attr("src", function(index,attr){
	});; // end of $(".accordion1").click(function() {
	
	$(".accordion2").click(function() {
		$(".second_child").slideToggle(300);
		$(".first_child").hide(300);
		
		$(this).find(">img").attr("src", function(index,attr){
			if(attr.match('down_arrow')){
				return attr.replace("down_arrow.png","up_arrow.png");
			} else {
				return attr.replace("up_arrow.png","down_arrow.png");
			}
			
		});	// end of $(this).find("img").attr("src", function(index,attr){
	
	}); // end of $(".accordion2").click(function() {*/
	
	$("#menu_search_click").click(function(){	
		var s_text = $("#menu_search_area");
		//e.preventDefault();
		// 아무것도 입력하지 않았을때 		
		if (s_text.val().trim()=="") {
		swal({
			title: '<font color="#090707">검색어를<br/> 입력해 주세요.</font>', // 제목
            html: '검색어를 입력해 주세요.', // 내용
            type: 'error',              // 종류
            showCloseButton: true,      // 닫기 버튼 표시 여부
           	confirmButtonText: '확인',  // 확인버튼 표시 문구
            confirmButtonColor: '#ADADAD', // 확인버튼 색상
        /*  showCancelButton: true,     // 취소버튼 표시 여부
            cancelButtonText: '취소',   // 취소버튼 표시 문구
            cancelButtonColor: '#f60'   // 취소버튼 색상*/
			
            });
			s_text.focus();
		} else {
			s_text = "";
			window.open('/Wellcom/assets/jsp/product.jsp?data='+ $('#menu_search input').val(),'_self');
			
		$.getJSON("/Wellcom/json/product.json", function(item) {
            var template = Handlebars.compile($('#product_item').html());
            var html = template(item);
			$('.item_list').append(html);
			
		}); // end of $.getJSON("/Wellcom/json/product.json", function(product) {
		}		
	}); // end of $("#menu_search_click").click(function(){	

}); // end of $(function() {