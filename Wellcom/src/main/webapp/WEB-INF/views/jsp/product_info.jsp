<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->
<head>
<%@ include file="../inc/head.jsp"%>
<!-- 시각적 확인을 위한 css 적용 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/product_info.css">
<title>index</title>
</head>
<body>
	<div id="container">
		<%@ include file="../inc/header.jsp"%>
		<div class="content">
			<!-- 템플릿 영역 -->
			<c:if test="${output != null && !output.equals('')}">
				<div class="summary clear">
					<div class="img_box">
						<img src="${output.thumb}">
					</div>
					<div class="text">
						<span>
							<strong> <<제품사양>> </strong>
						</span>
						<br>
						<span> ${output.description} </span>
					</div>
				</div>
				<div class="item">
					<img src="${output.img}">
				</div>
			</c:if>
			<div class="review">
				<ul class="media-list">
					<c:choose>
						<c:when test="${review_list == null || empty(review_list)}">
							<li class="media non_review">
								<div class="media-body">
									<p>아직 등록된 리뷰가 없습니다.</p>
								</div>
							</li>
						</c:when>
						<c:otherwise>
							<c:forEach var="item" items="${review_list}" varStatus="status">
								<li class="media">
									<div class="media-body">
										<!-- 제목영역의 float 처리를 위한 마감제 박스 -->
										<div class="clearfix ${item.id}">
											<!-- 제목에 float: left 적용 - pull-left -->
											<h4 class="media-heading pull-left">
												${item.user_name } <small>${item.reg_date }</small>
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
										<p>${item.content}</p>
									</div>
								</li>
							</c:forEach>
						</c:otherwise>
					</c:choose>
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
							<input type="text" max="10" min="1" value="1" disabled>
							<button class="count_button plus" value="+">&nbsp;▲&nbsp;</button>
						</div>
						<div class="cost">
							총 상품금액:
							<span></span>
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

	<script type="text/javascript">
		$(function() {
			// url 정보를 읽어 파라미터 값을 받아옴.
			$.urlParam = function(name) {
				var results = new RegExp('[\?&]' + name + '=([^&#]*)')
						.exec(window.location.href);
				return results[1] || 0;
			}

			// 가격정보와 갯수정보를 담을 변수를 선언
			var base_cost = 0;
			var result = 0;

			// 구매가격 초기데이터
			$.get('../assets/json/product.json',
					function(product) {
						result = 1;
						for (var i = 0; i < product.list.length; i++) {
							base_cost = product.list[i].item_price;
							if (product.list[i].item_name.indexOf($
									.urlParam('data')) != -1) {
								$('.shop_box .cost span').html(
										base_cost * result);
							}
						}
					})

			// url정보를 바탕으로 한 데이터 출력
	<%--			$.get('../assets/json/product.json',
					function(product) {
						var template = Handlebars
								.compile($('#select-item-info').html());
						var html = null;

						// value_list의 각 값을 product.list.item_category와 비교하여 일치하면 출력 
						for (var i = 0; i < product.list.length; i++) {
							html = template(product.list[i])
							if (product.list[i].item_name.indexOf($
									.urlParam('data')) != -1) {
								$('.review').before(html)
							}
						}
					})
--%>
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
			//구매갯수 설정
			$('.count_button').click(
					function() {
						var count = $('.shop_box .count input');
						//var item_cost = $('.shop_box .cost span).html();
						var result = 0;
						if ($(this).val() == '+') {
							result = parseInt(count.val()) + 1;
						} else {
							if (parseInt(count.val()) > 1) {
								result = parseInt(count.val()) - 1;
							} else {
								result = 1;
							}
						}
						count.val(result);
						$.get('../assets/json/product.json', function(product) {
							for (var i = 0; i < product.list.length; i++) {
								base_cost = product.list[i].item_price;
								if (product.list[i].item_name.indexOf($
										.urlParam('data')) != -1) {
									$('.shop_box .cost span').html(
											base_cost * result);
								}
							}
						})
					});

			//장바구니/바로구매 연결
			$('.shop_button button').click(function(e) {
				e.preventDefault();

				if ($('.shop_box .count input').val() == 0) {
					alert('수량이 올바르지 않습니다.');
				} else {
					if ($(this).is('.basket')) {
						if (confirm('장바구니로 이동하시겠습니까?')) {
							location.href = "cart.do"
						}
					} else {
						if (confirm('구매페이지로 이동하시겠습니까?')) {
							location.href = "payment.do"
						}
					}
				}
			})
		}); // end of $(function(){
	</script>
</body>

</html>