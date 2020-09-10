<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->
<head>
<!-- 시각적 확인을 위한 css 적용 -->
<%@ include file="../inc/head.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/cart.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.css" />
<title>index</title>
</head>
<body>
	<div id="container">
		<%@ include file="../inc/header.jsp"%>
		<!-- Modal -->
		<div class="modal fade" id="optionChange">
			<div class="modal-dialog modal-sm" id="optionPop">
				<div class="modal-content">
					<!-- 이 곳에 다른 HTML 파일이 연결된다. -->
				</div>
			</div>
		</div>
		<div id="content">
			<div class="blockquote well">
				<span>ㆍ장바구니 상품은 최대 30일간 저장됩니다.</span><br /> <span>ㆍ가격, 옵션 등
					정보가 변경된 경우 주문이 불가할 수 있습니다.</span>
			</div>
			<div class="cart_body">
				<div class="checkArea">
					<input type="checkbox" id="allCheck1"><label
						for="allCheck1">상품전체선택</label>
					<button type="button" id="checkDel1">선택상품삭제</button>
				</div>
				<hr />
				<div class="products">
					<form action="" method="post">
						<c:choose>
							<%--조회결과가 없는 경우 --%>
							<c:when test="${output == null || fn:length(output) ==0}">
								<tr>
									<td colspan="3" align="center">조회결과가 없습니다.</td>
								</tr>
							</c:when>
							<%-- 조회결과가 있는 경우 --%>
							<c:otherwise>
								<%-- 조회 결과에 따른 반복 처리 --%>
								<c:forEach var="item" items="${output}" varStatus="status">





									<div class="cart_product clearfix" id="${item.cart_id}"
										data-id="${item.cart_id}">
										<div class="clearfix">
											<div>
												<input type="checkbox" id="${item.cart_id}"
													value="${item.cart_id}" name="product_check"
													class="product" /><label for="${item.cart_id}">현재
													상품 선택</label>
											</div>
											<div class="image_box">
												<a id="product1"
													href="/jsp/assemble.do?data=${item.product_id}"><img
													class="product_img" src="${item.thumb}"
													alt="${item.name} 상품상세이미지"></a>
											</div>
											<div class="info_box">
												<a id="product_name"
													href="/jsp/assemble.do?data=${item.product_id}"><strong>${item.name}</strong></a><br />
												<span id="price">${item.price}원</span></br>
											</div>
											<div class="amountArea">
												<button type="button" class="plus">
													<svg viewBox="0 0 16 16" class="bi bi-plus-square"
														fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd"
															d="M8 3.5a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-.5.5H4a.5.5 0 0 1 0-1h3.5V4a.5.5 0 0 1 .5-.5z" />
  <path fill-rule="evenodd"
															d="M7.5 8a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0V8z" />
  <path fill-rule="evenodd"
															d="M14 1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
</svg>
												</button>
												<input type="text" class="amount" name="amount1"
													id="${item.cart_id}" value="${item.product_amount}"
													readonly>
												<button type="button" class="minus">
													<svg viewBox="0 0 16 16" class="bi bi-dash-square"
														fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd"
															d="M14 1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
  <path fill-rule="evenodd"
															d="M3.5 8a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.5-.5z" />
</svg>
												</button>
												<button type="button" href="optionPop.do"
													data-toggle="modal" data-target="#optionChange"
													data-whatever="${item.cart_id}"
													class="btn-primary option_change">옵션변경</button>
											</div>

											<div class="optionArea">
												<span><strong>선택옵션 : </strong></span><br /> <span
													class='show_option'>그래픽카드 : ${item.vga_name}</span><br />
												<span class='show_option'>RAM : ${item.ram_name}</span><br />
												<span class='show_option'>POW : ${item.pow_name}</span><br />
												<span class='show_option'>SSD : ${item.name}</span><br />
											</div>
										</div>
										<div class="buttonArea clearfix">
											<button value="${item.cart_id}" id="delete"
												class="btn btn-default" type="button">삭제</button>
											<button value="${item.cart_id}" type="button" id="payment"
												class="btn btn-success"
												onclick="location.href='${pageContext.request.contextPath}/jsp/payment.do?cart_id=2'">주문하기</button>
										</div>
										<div class="priceArea clearfix">
											<div class="col-xs-8 text-right">
												<span><strong>금액 :</strong></span>
											</div>
											<div class="col-xs-4 text-left">
												<span id="product_total_price" class="product_total_price">${item.product_amount * item.price}원</span>
											</div>
										</div>
									</div>












								</c:forEach>
							</c:otherwise>
						</c:choose>
					</form>
				</div>
				<hr />

				<div class="finalArea clearfix">
					<div class="finalPrice clearfix">
						<div class="col-xs-7 text-right">
							<span><strong>제품금액 :<span class="total_product"></span></strong></span><br />
							<span><strong> 배송비 :</strong></span><br /> <span><strong>총
									금액 :</strong></span><br />
						</div>
						<div class="col-xs-5 text-right">
							<span id="product_price">75,000 원</span><br /> <span
								id="delivery_price">5,000 원</span><br /> <span id="full_price">80,000
								원</span><br />
						</div>
					</div>
					<br />
					<button class="btn btn-success" type="button"
						onclick="location.href='${pageContext.request.contextPath}/jsp/payment.do?cart_id=4'">선택상품주문</button>
					<button class="btn btn-danger" type="button"
						onclick="location.href='${pageContext.request.contextPath}/jsp/payment.do?cart_id=3'">전체상품주문</button>
				</div>
			</div>
		</div>
		<%@ include file="../inc/footer.jsp"%>
	</div>


	<script
		src="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/plugins/sweetalert/sweetalert2.all.min.js"></script>
	<!-- <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script> -->
	<!-- Javascript -->
	<!-- 
	<script type="text/x-handlebars-template" id="product-items-tmpl">

{{#item}}
	<div class="cart_product clearfix" id="{{product_num}}" data-id="{{product_num}}">
	<div class="clearfix">
		<div>
			<input type="checkbox" id="{{product_num}}" name="product_check" class="product" /><label
				for="{{product_num}}">현재 상품 선택</label>
		</div>
		<div class="image_box">
			<a id="product1" href="{{product_href}}"><img class="product_img"
				src="{{product_img}}" alt="{{product_name}}상품상세이미지"></a>
		</div>
		<div class="info_box">
			<a id="product_name" href="{{product_href}}"><strong>{{product_name}}</strong></a><br /> <span
				id="price">{{product_price}}원</span></br>
		</div>
		<div class="amountArea">
			<button class="plus">
				<svg viewBox="0 0 16 16" class="bi bi-plus-square" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M8 3.5a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-.5.5H4a.5.5 0 0 1 0-1h3.5V4a.5.5 0 0 1 .5-.5z"/>
  <path fill-rule="evenodd" d="M7.5 8a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0V8z"/>
  <path fill-rule="evenodd" d="M14 1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
</svg>
			</button>
			<input type="text" class="amount" name="amount1" id="{{product_num}}" value="{{product_amount}}" readonly>
			<button class="minus">
				<svg viewBox="0 0 16 16" class="bi bi-dash-square" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M14 1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
  <path fill-rule="evenodd" d="M3.5 8a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.5-.5z"/>
</svg>
			</button>
			<button href="optionPop.do" data-toggle="modal" data-target="#optionChange" 
			data-whatever="{{product_num}}" class="btn-primary option_change">옵션변경</button>
		</div>

		<div class="optionArea">
		{{#if product_option}}
			<span><strong>선택옵션 : </strong></span><br />

		{{#if product_option.cpu}}
			<span class='show_option'>CPU : {{product_option.cpu}}</span><br />
		{{/if}}
		{{#if product_option.gpu}}
			<span class='show_option'>그래픽카드 : {{product_option.gpu}}</span><br />
		{{/if}}
		{{#if product_option.hdd}}
			<span class='show_option'>HDD : {{product_option.hdd}}</span><br />
		{{/if}}
		{{#if product_option.ssd}}
			<span class='show_option'>SSD : {{product_option.ssd}}</span><br />
		{{/if}}
		{{#if product_option.ram}}
			<span class='show_option'>RAM : {{product_option.ram}}</span><br />
		{{/if}}
		{{/if}}
		</div>
	</div>
	<div class="buttonArea clearfix">
		<button id="delete"class="btn btn-default">삭제</button>
		<button id="payment" class="btn btn-success" onclick="location.href='payment.do'">주문하기</button>
	</div>
	<div class="priceArea clearfix">
		<div class="col-xs-8 text-right">
			<span ><strong>금액 :</strong></span>
		</div>
		<div class="col-xs-4 text-left">
			<span id="product_total_price" class="product_total_price">{{product_price}}원</span>
		</div>
	</div>
</div>
{{/item}}
	</script>
	<script
		src="${pageContext.request.contextPath}/assets/plugins/handlebars/handlebars-v4.0.11.js"></script>
	<script type="text/javascript">
		$(function() {
			var template = Handlebars.compile($("#product-items-tmpl").html());
			var html = template(data);
			$(".products").append(html);
		});
		//$(".total_product").append(total_product.val())
		
	</script>
	 -->
	<script src="${pageContext.request.contextPath}/assets/js/cart.js"></script>
</body>

</html>