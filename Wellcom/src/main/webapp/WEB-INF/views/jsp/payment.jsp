<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->
<head>
<!-- 시각적 확인을 위한 css 적용 -->
<%@ include file="../inc/head.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/payment.css">
<title>index</title>
</head>
<body>
	<div id="container">
		<%@ include file="../inc/header.jsp"%>
		<div id="content">
			<div class="modal fade" id="address_set">
				<div class="modal-dialog modal-sm" id="deliv_pop">
					<div class="modal-content">
						<!-- 이 곳에 다른 HTML 파일이 연결된다. -->
					</div>
				</div>
			</div>

			<div class="delivery">
				<div class="panel-collapse collapse in">
					<a class="accordion-toggle" data-toggle="collapse"
						href="#collapseDelivery">배송지 <span class="down_arrow">
					</span>
					</a>
					<div id="collapseDelivery" class="panel-collapse collapse in">
						<div class="clearfix">
							<label for="receiver_name"> 받는사람 : </label><input type="text"
								name="receiver_name" id="receiver_name" placeholder="받는사람">
							<button href="${pageContext.request.contextPath}/jsp/delivery_address.do" data-toggle="modal"
								data-target="#address_set" data-whatever=""
								class="btn btn-default" id="deliv_list">주소록</button>
						</div>
						<div class="clearfix">
							<label for="wellcom_postcode"> 우편번호 : </label><input type="text"
								name="wellcom_postcode" id="wellcom_postcode" placeholder="우편번호"
								readonly="readonly"> <input id="execDaumPost"
								type="button" onclick="wellcom_execDaumPostcode()"
								value="우편번호 찾기">
						</div>
						<div class="clearfix">
							<label for="wellcom_address"> 주소 : </label><input type="text"
								name="wellcom_address" id="wellcom_address" placeholder="주소"
								readonly="readonly"><input type="text"
								id="wellcom_extraAddress" placeholder="참고항목" readonly="readonly">
						</div>
						<div class="clearfix">
							<label for="wellcom_detailAddress"> 상세주소 : </label><input
								type="text" name="wellcom_detailAddress"
								id="wellcom_detailAddress" placeholder="상세주소">
						</div>
						<div id="wrap"
							style="display: none; border: 1px solid; width: 100%; margin: 5px 0; position: relative">
							<img
								src="http://t1.daumcdn.net/postcode/resource/images/close.png"
								id="btnFoldWrap"
								style="cursor: pointer; position: absolute; width: 20px; height: 20px; right: 0px; top: -1px; z-index: 1"
								onclick="foldDaumPostcode()" alt="접기 버튼">
						</div>
						<div class="wellcom_phoneNumber clearfix">
							<label for="phone_number1"> 연락처 :</label> <select
								id="phone_number1" name="phone_number1">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
								<option value="direct">직접입력</option>
							</select> <span> - </span> <input id="phone_number2" name="phone_number2"
								maxlength="4" value="" type="text" /> <span> - </span> <input
								id="phone_number3" name="phone_number3" maxlength="4" size="4"
								value="" type="text" /> <input type="text"
								id="phone_number1_direct" name="phone_number1_direct" />
						</div>
						<div class="wellcom_email clearfix">
							<label for="email"> 이메일 :</label> <input id="email1"
								name="email1" class="mailId" value="" type="text" /><span>@</span>
							<select id="email3" name="email3">
								<option value="" selected="selected">-이메일 선택-</option>
								<option value="naver.com">naver.com</option>
								<option value="hanmail.net">hanmail.net</option>
								<option value="nate.com">nate.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="direct">직접입력</option>
							</select> <input type="text" id="email3_direct" name="email3_direct" />
						</div>

						<div class="wellcom_memo clearfix">
							<label for="memo">배송메모 : </label> <select name="message_select"
								id="message_select" name="message_select">
								<option value="Message-0" selected="selected">-- 메시지 선택
									(선택사항) --</option>
								<option value="Message-1">배송 전에 미리 연락바랍니다.</option>
								<option value="Message-2">부재 시 경비실에 맡겨주세요.</option>
								<option value="Message-3">부재 시 문 앞에 놓아주세요.</option>
								<option value="Message-4">빠른 배송 부탁드립니다.</option>
								<option value="Message-5">택배함에 보관해 주세요.</option>
								<option value="direct">직접 입력</option>
							</select> <input type="text" id="Message_direct" name="Message_direct" />
						</div>

					</div>
					<div class="panel-collapse collapse in">
						<a class="accordion-toggle collapsed" data-toggle="collapse"
							href="#collapseProduct">주문상품 <span class="down_arrow">
						</span></a>
					</div>
					<div id="collapseProduct" class="panel-collapse collapse clearfix">
						<!-- 개별 제품 시작-->
						<div class="order_product clearfix">
							<div class="image_box">
								<a id="product1" href="${pageContext.request.contextPath}/jsp/assemble.jsp"><img
									class="product_img" src="../img/amd_sample.jpg" alt="상품상세이미지"></a>
							</div>
							<div class="info_box">
								<a id="product1_name" href="#"><strong>씨게이트 바라쿠다
										SSD &nbsp</strong></a>
							</div>
							<div class="amountArea">
								<span id="amount1"> <strong>1개</strong></span> <br /> <span
									id="price1">75,000원</span>
							</div>

							<div class="optionArea">
								<span><strong>선택옵션 : </strong></span><br /> <span
									class="show_option">CPU : AMD 라이젠5-3세대 3600XT (마티스) (정품)</span><br />
								<span class="show_option">HDD : 1TB</span><br /> <span
									class="show_option">SSD : 250G</span><br /> <span
									class="show_option">RAM : 8GB</span><br />
							</div>
						</div>

						<div class="priceArea clearfix">
							<div class="col-xs-8 text-right">
								<span class=""><strong>상품 금액 :</strong></span>
							</div>
							<div class="col-xs-4 text-left">
								<span class="">75,000 원</span>
							</div>
						</div>
						<!-- 개별 제품 끝 -->
					</div>
					<div class="payment_cost">
						<div></div>
					</div>
				</div>
				<div class="panel-collapse">
					<span class="accordion-toggle">결제정보</span>
				</div>
			</div>
			<div id="collapsePayment" class="panel-group">
				<input class="radio" id="collapsePayone" type="radio" name="group1"
					value="1" checked> <label for="collapsePayone"
					class="data_align_first">무통장 입금</label><br />
				<div id="payment1" class="panel-collapse collapse">
					<label for="message_select" class="data_align_second"> 입금은행
						: </label> <select id="message_select" name="message_select">
						<option value="Message-0" selected="selected">신한은행 :
							110-161-254532</option>
						<option value="Message-1">농협은행 : 212010-25-552255</option>
						<option value="Message-2">기업은행 : 010-2052-5253</option>
						<option value="Message-3">국민은행 : 201-450-321415</option>
					</select>
				</div>
				<input class="radio" id="collapsePaytwo" type="radio" name="group1"
					value="2"><label for="collapsePaytwo">계좌 이체</label><br />
				<div id="payment2" class="panel-collapse">
					<!-- <input type="checkbox" id="product2" class="product" /> -->
					<label id="product_check" for="product2">에스크로를 이용합니다</label>
				</div>
				<input class="radio" id="collapsePaythree" type="radio"
					name="group1" value="3"><label for="collapsePaythree">카드
					결제</label><br />
				<div id="payment3" class="panel-collapse">
					<select id="card_select" name="card_select">
						<option value="card-0" selected="selected">내카드 [신한카드
							110-4324-252523]</option>
						<option value="direct">직접입력</option>
					</select> <input type="text" id="card-direct" name="card-direct" />
				</div>
				<input class="radio" id="collapsePayfour" type="radio" name="group1"
					value="4"><label for="collapsePayfour">휴대폰 결제</label><br />
				<div id="payment4" class="panel-collapse">
					<label for="paymentPhone"> 휴대폰 번호 : &nbsp;</label> <input
						type="text" id="paymentPhone" placeholder="결제할 휴대폰 번호">
				</div>
			</div>
			<div class="checkArea">
				<div>
					<input type="checkbox" id="allCheck2"><label
						for="allCheck2">전체 동의하기</label>
				</div>
				<div>
					<input type="checkbox" id="agree1" class="agreeCheck" /><label
						id="product_check" for="agree1">[필수] 구매 조건 확인 및 결제진행 동의</label>
				</div>
				<div>
					<input type="checkbox" id="agree2" class="agreeCheck" /><label
						id="product_check" for="agree2">[필수] 쇼핑몰 이용약관 동의</label>
				</div>
				<button id="btn_payment_check" class="btn btn-default">결제하기</button>
			</div>

		</div>

		<%@ include file="../inc/footer.jsp"%>
	</div>
	<!-- validate 플러그인 참조 -->
	<script src="${pageContext.request.contextPath}/assets/plugins/validate/jquery.validate.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/plugins/validate/additional-methods.min.js"></script>
	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/payment.js"></script>
	<script>
		
	</script>
</body>

</html>
