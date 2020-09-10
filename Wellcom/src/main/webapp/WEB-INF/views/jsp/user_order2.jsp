<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->

<head>
<%@ include file="../inc/head.jsp"%>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/user_order2.css">
<title>(주)웰컴</title>
</head>

<body>
	<div id="container">
		<%@ include file="../inc/header.jsp"%>
		<!-- 본문 영역 -->
		<div id="content">

			<!-- 공지사항 제목 영역 -->
			<div id="content_header">주문세부정보</div>
			<ol class="breadcrumb" id="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/jsp/account.do">마이페이지</a></li>
				<li><a href="${pageContext.request.contextPath}/jsp/user_order.do">나의 주문</a></li>
				<li class="active">주문세부정보</li>
				<!-- 여기가 현재 페이지를 의미합니다. - active클래스 적용됨 -->
			</ol>
			
			
			
			<div id="content_main">
			<div id="order_heading" class="order_heading">
				<h3><span class="heading_span">발송완료</span></h3><br/>
				<h4><span class="delivery">배송 예정일 20.07.15 ~ 20.07.20</span></h4>
			</div>
			
			<div id="order_list_area" class="order_list_area">
			
				<div id="order_list1" class="order_list">
			
			<div id="order_list1_divider">	<span id="order_list1_img"><img src="${pageContext.request.contextPath}/assets/img/ram/ram8g_adata_pc4_21300.jpg"></span></div>
			<div id="order_list1_divider2">
			<div id="order_list1_divider3">	<span class="order_list_title">ADATA 8G PC4-21300</span></div>
			<div id="order_list1_divider4">	<span class="qty">수량 : 1</span>
				<span class="price">가격 : 324,000</span>
				<span class="product_status">상태 : 발송 완료</span></div>
				</div>
				</div>
				
				
				
				<div id="order_list2" class="order_list">
				
			<div id="order_list2_divider">	<span id="order_list2_img"><img src="${pageContext.request.contextPath}/assets/img/ram/ram8g_geil_pc4_25600_2.jpg"></span></div>
			<div id="order_list2_divider2">
			<div id="order_list2_divider3">	<span class="order_list_title">ADATA 8G PC4-21300</span></div>
			<div id="order_list2_divider4">	<span class="qty">수량 : 1</span>
				<span class="price">가격 : 324,000</span>
				<span class="product_status">상태 : 발송 완료</span></div>
				</div>
				</div>
				
				
																		
				<div id="order_list3" class="order_list">	
	
			<div id="order_list3_divider">	<span id="order_list3_img"><img src="${pageContext.request.contextPath}/assets/img/ram/ram8g_samsung_pc4_21300.jpg"></span></div>
			<div id="order_list3_divider2">
			<div id="order_list3_divider3">	<span class="order_list_title">ADATA 8G PC4-21300</span></div>
			<div id="order_list3_divider4">	<span class="qty">수량 : 1</span>
				<span class="price">가격 : 324,000</span>
				<span class="product_status">상태 : 발송 완료</span></div>
				</div>
				</div>
			
			
			<br/>
			
			
			<div id="order_info_area" class="order_list_area">
			<h3><span class="order_info_area_title">주문 내역</span></h3>
			<br/>
				<div id="order_number">
				<span id="order_number_heading">주문번호 : 1234567</span><br/>
				<span id="order_date" class="detail">주문일 : 20.06.20 오전 10:00</span><br/>
				<span id="order_product_qty" class="detail">총 상품 : 6</span><br/>
				<span id="order_discount" class="detail">사용한 할인 : 통신사 할인</span><br/>
				<span id="order_discount2" class="detail">멤버쉽 : xxxx-xxxx-xxxx-xxxx</span><br/>
				<span id="order_delivery_price" class="detail">배송비 : 2500</span>
				<br/>
				</div>
				
				<div id="order_detail">
				<span id="order_detail_heading">배송 세부사항</span><br/>
				<span id="order_name" class="detail">성함 : 오정규</span><br/>
				<span id="order_address" class="detail">주소 : <br/>서울 서초구 서초대로 77길 55 301호</span><br/>
				</div>
				
				<div id="order_payment">
				<span id="order_payment_heading">결제 세부 사항</span><br/>
				<span id="order_payment_method" class="detail_left">결제 방식 : </span><span id="order_payment_method2" class="detail_right">Mastercard</span><br/>
				<span id="order_payment_name" class="detail_left">이름 : </span><span id="order_payment_name2" class="detail_right">오정규</span><br/>
				<span id="order_payment_card" class="detail_left">카드 번호 : </span><span id="order_payment_card2" class="detail_right">****-****-****-****</span><br/>
				<span id="order_payment_expirydate" class="detail_left">만료일 : </span><span id="order_payment_expirydate2" class="detail_right">03/24</span><br/>
				</div>
			
			</div>
			
			</div>
			
			<div id="button_area" class="button_area">
			<button id="button_area1" type="button" class="btn btn-primary2" value="마이페이지 홈" onclick="location.href='${pageContext.request.contextPath}/jsp/account.do'">마이페이지 홈</button>
			<button id="button_area2" type="button" class="btn btn-primary2" value="로그아웃">로그아웃</button>
			
			</div>
			
			
			
		</div>
		<%@ include file="../inc/footer.jsp"%>
	</div>


	<!-- Javascript -->
	<script type="text/javascript">
		$(function() {

		}); // end of $(function(){
	</script>
</body>


</html>