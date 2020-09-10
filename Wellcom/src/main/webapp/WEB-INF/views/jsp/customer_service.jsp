<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<%@ include file="../inc/head.jsp"%>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/customer_service.css">
	<title>(주)웰컴</title>
</head>

<body>
	<div id="container">
		<%@ include file="../inc/header.jsp"%>
		<!-- 본문 영역 -->
		<div id="content">
			<!-- 후기 게시판 제목 영역 -->
			<div id="content_header">고객센터</div>
			<!-- 상단 카테고리 뎁스 영역 -->
			<ol class="breadcrumb" id="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/jsp/account.do">마이페이지</a></li>
				<li class="active">고객센터</li>
				<!-- 여기가 현재 페이지를 의미합니다. - active클래스 적용됨 -->
			</ol>
			<div class="content-box">
				<div id="call-box">
					<div>
						<h2>전화 문의</h2>
						<a href="tel: 15771234"> 
							<img src="${pageContext.request.contextPath}/assets/img/call.png" />
						</a>
					</div>
					<div class="number">
						<a href="tel:15771234">1577-1234</a>
					</div>
					<div class="text">
						<span> 통화 가능시간<br> 09:00 ~ 12:00 </span><br>
						<span> 13:00 ~ 18:00</span><br>
						<span> 토, 일 공휴일 휴무</span>
					</div>
				</div>
				<div class="link-box">
					<div class="chat">
						<button type="button" onclick="location.href='http://pf.kakao.com/_xndxfqK/chat'"
							class="btn_image" id="img_btn">
							<img src="${pageContext.request.contextPath}/assets/img/chat.png">
						</button>
						<a href="http://pf.kakao.com/_xndxfqK/chat">카카오톡 문의</a>
					</div>
					<div class="write">
						<button type="button" onclick="location.href='${pageContext.request.contextPath}/jsp/customer_service_write.do'" class="btn_image"
							id="img_btn">
							<img src="${pageContext.request.contextPath}/assets/img/write.png">
						</button>
						<a href="${pageContext.request.contextPath}/jsp/customer_service_write.do">1:1 글쓰기</a>
					</div>
					<div class="read">
						<button type="button" onclick="location.href='${pageContext.request.contextPath}/jsp/customer_service_read.do'" class="btn_image"
							id="img_btn">
							<img src="${pageContext.request.contextPath}/assets/img/read.png">
						</button>
						<a href="${pageContext.request.contextPath}/jsp/customer_service_read.do">내가 쓴 글 보기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../inc/footer.jsp"%>
	<!-- Javascript -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
</body>

</html>