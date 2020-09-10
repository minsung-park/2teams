<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->
<head>
<%@ include file="../inc/head.jsp"%>
<!-- 시각적 확인을 위한 css 적용 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/assemble.css">
<title>assemble</title>
</head>
<body>
	<div id="container">
		<%@ include file="../inc/header.jsp"%>
		<div class="content">
			<div class="summary clear">
				<div class="img_box">
					<img src="${pageContext.request.contextPath}/assets/img/intel_sample.jpg" alt="">
				</div>
				<div class="parts">
					<span>
						<strong>일부 옵션은 변경이 불가합니다.</strong>
					</span>
					<br>
					<label>
						CPU<select class="cpu" name="cpu" data-value="cpu">
							<option id="none_select" value="0">--- 옵션을 선택하세요 ---</option>
							<!-- 템플릿 영역 -->
						</select>
					</label>
					<label for="main_board">
						메인보드 <select class="board" name="board" data-value="board">
							<option id="none_select" value="0">--- 옵션을 선택하세요 ---</option>
							<!-- 템플릿 영역 -->
						</select>
					</label>
					<label for="vga">
						그래픽카드<select class="vga" name="vga" data-value="vga">
							<option id="none_select" value="0">--- 옵션을 선택하세요 ---</option>
							<!-- 템플릿 영역 -->
						</select>
					</label>
					<label for="ram">
						RAM<select class="ram" name="ram" data-value="ram">
							<option id="none_select" value="0">--- 옵션을 선택하세요 ---</option>
							<!-- 템플릿 영역 -->
						</select>
					</label>
					<label for="pow">
						파워<select class="pow" name="pow" data-value="pow">
							<option id="none_select" value="0">--- 옵션을 선택하세요 ---</option>
							<!-- 템플릿 영역 -->
						</select>
					</label>
					<label for="case">
						케이스 <select class="case" name="case" data-value="case">
							<option id="none_select" value="0">--- 옵션을 선택하세요 ---</option>
							<!-- 템플릿 영역 -->
						</select>
					</label>
				</div>
			</div>
			<div class="item">
				<img src="${pageContext.request.contextPath}/assets/img/product_info_detail2.jpg" alt="">
			</div>
			<div class="review">
				<ul class="media-list">
					<li class="media">
						<div class="media-body">
							<!-- 제목영역의 float 처리를 위한 마감제 박스 -->
							<div class="clearfix">
								<!-- 제목에 float: left 적용 - pull-left -->
								<h4 class="media-heading pull-left">
									주** <small>2020-06-20 13:12:32</small>
								</h4>
								<!-- 제목에 float: right 적용 - pull-right -->
								<div class="pull-right">
									<a href="#" title="수정">
										<i class="glyphicon glyphicon-edit"></i>
									</a>
									<a href="#" title="삭제">
										<i class="glyphicon glyphicon-remove"></i>
									</a>
								</div>
							</div>
							<p>인텔 왜씀? 마크스코어 AMD가 동급 이텔 CPU다 씹어먹는데</p>
						</div>
					</li>
					<li class="media">
						<div class="media-body">
							<div class="clearfix">
								<h4 class="media-heading pull-left">
									이** <small>2020-04-11 14:11:51</small>
								</h4>
								<div class="pull-right">
									<a href="#" title="수정">
										<i class="glyphicon glyphicon-edit"></i>
									</a>
									<a href="#" title="삭제">
										<i class="glyphicon glyphicon-remove"></i>
									</a>
								</div>
							</div>
							<p>초기불량문제로 문의를 드렸는데 빠르게 조치취해주셔서 감사합니다. A/S까지 깔끔하네요</p>
						</div>
					</li>
					<li class="media">
						<div class="media-body">
							<div class="clearfix">
								<h4 class="media-heading pull-left">
									홍** <small>2020-04-08 09:11:51</small>
								</h4>
								<div class="pull-right">
									<a href="#" title="수정">
										<i class="glyphicon glyphicon-edit"></i>
									</a>
									<a href="#" title="삭제">
										<i class="glyphicon glyphicon-remove"></i>
									</a>
								</div>
							</div>
							<p>조립부터 배송까지 흠잡을데없습니다. 믿고 구매하세요</p>
						</div>
					</li>
				</ul>
			</div>
			<div class="input-group review_input_group" id="review_input_group">
				<input type="textarea" class="form-control review_form_control" id="review_form_control">
				<span class="input-group-btn review_input_group-btn" id="review_input_group-btn">
					<button class="btn btn-default review_btn" id="review_btn" type="button">쓰기</button>
				</span>
			</div>
			<div class="price_box" id="price_box">
				<button class="price_box_switch" id="price_box_switch">▽</button>
				<div class="price_toggle" id="price_toggle">
					<div class="shop_box">
						<div class="count">
							구매수량
							<button class="count_button minus" value="-">&nbsp;▼&nbsp;</button>
							<input type="text" value="1" disabled>
							<button class="count_button plus" value="+">&nbsp;▲&nbsp;</button>
						</div>
						<div class="cost">
							총 상품금액:
							<span>0</span>
						</div>
					</div>
					<div class="shop_button">
						<button class="basket btn-warning">장바구니 담기</button>
						<button class="buy btn-primary">바로구매</button>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="../inc/footer.jsp"%>

	</div>
	<script src="${pageContext.request.contextPath}/assets/plugins/handlebars/handlebars-v4.0.11.js"></script>
	<script type="text/x-handlebars-template" id="option-list-template">
	<option name="{{item_name}}" value="{{item_price}}">{{item_name}}, 가격: {{item_price}}</option>
	</script>
	<script type="text/javascript">
		$(function() {
			$.get('../json/product.json', function(product) {
				var template = Handlebars.compile($('#option-list-template')
						.html());
				var html = null;

				for (var i = 0; i < product.list.length; i++) {
					html = template(product.list[i])
					for (var j = 0; j < $('.parts select').length; j++) {
						if (product.list[i].item_category.indexOf($(
								'.parts select:eq(' + [ j ] + ')')
								.data('value')) != -1) {
							$('.parts select:eq(' + [ j ] + ') #none_select')
									.after(html);
						}
					}
				}
			})

			// 구매 편의 하단바 //
			$('#price_box_switch').click(function() {
				$('#price_toggle').slideToggle(200, function() {
					if ($('#price_toggle').css('display') == 'none') {
						$('#price_box_switch').html('△');
						$('#onTop').css('bottom', '5%');
					} else {
						$('#price_box_switch').html('▽');
						$('#onTop').css('bottom', '17%');
					}
					;
				});
			}); // 하단바 끝
			// 구매갯수 및 총 가격 설정
			// 구매 갯수 설정
			var count = $('.shop_box .count input');
			var result = 1;
			$('.count_button').click(function() {
				if ($(this).val() == '+') {
					result = parseInt(count.val()) + 1;
				} else {
					if (parseInt(count.val()) > 0) {
						result = parseInt(count.val()) - 1;
					} else {
						result = 0;
					}
				}
				count.val(result);
			});//구매갯수 설정 끝
			// 총 금액 설정
			$('select').change(
					function() {
						var total_price = 0;
						for (var i = 0; i < $('.parts select').length; i++) {
							total_price += parseInt($(
									'.parts select:eq(' + [ i ] + ')').val());
						}
						$('#price_toggle .shop_box .cost span').html(
								total_price * result);
					})//총 금액 설정 끝

			//장바구니/바로구매 연결
			$('.shop_button button').click(function(e) {
				e.preventDefault();

				if ($('.shop_box .count input').val() == 0) {
					alert('수량이 올바르지 않습니다.');
				} else {
					if ($(this).is('.basket')) {
						if (confirm('장바구니로 이동하시겠습니까?')) {
							location.replace('cart.jsp')
						}
					} else {
						if (confirm('구매페이지로 이동하시겠습니까?')) {
							location.replace('payment.jsp')
						}
					}
				}
			})
		}); // end of $(function(){
	</script>
</body>

</html>
