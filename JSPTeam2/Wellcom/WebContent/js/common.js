$(function() {
    $("#menu").click(function(e) {
        e.preventDefault();
        $("#gray_layer").fadeIn(300);
        $("#over_layer").fadeIn(200);
        $("body").css('overflow-y', 'hidden');

    }); // end of $("#menu").click(function(){

    $(".glyphicon-remove-circle").click(function() {
        $("#gray_layer").fadeOut(300);
        $("#over_layer").fadeOut(200);
        $("body").css('overflow-y', 'auto');
    }); // end of #("glyphicon-remove-circle").click(function(){

    $("#gray_layer").click(function() {
        $(this).fadeOut(300);
        $("#over_layer").fadeOut(200);
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

    $('#onTop').click(function(e) {
        window.scrollTo(0,0);
    }); // end search_box
});