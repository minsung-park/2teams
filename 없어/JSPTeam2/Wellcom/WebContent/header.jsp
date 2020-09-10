<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<link rel="stylesheet" type="text/css" href="css/reset.css">
<!-- bootstrap -->
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap.min.css" />
<!-- 모바일 웹 페이지 설정 -->
<link rel="shortcut icon" href="assets/ico/favicon.ico" />
<link rel="apple-touch-icon-precomposed"
	href="assets/ico/apple-touch-icon-144-precomposed.png" />
	
<link rel="stylesheet" type="text/css" href="css/common.css">
</head>
<body>
	<button class="onTop" id="onTop">
		<img src="img/onTop.png">
	</button>
	<!-- header/footer영역 공통사용 -->
	<div id="header" class="row box">
		<div class="col-xs-4 header_height">
			<a id="menu" href="#"><img src="img/menubar2.png" alt=""></a>
		</div>
		<!-- 모달로 꾸밀 박스 -->
		<div class="gray_layer" id="gray_layer"></div>
		<div class="over_layer" id="over_layer">
			<div id="toggle_menu">
				<span id="iconalign" class="glyphicon glyphicon-remove-circle"></span>
				<a href="html/login.html" id="user_name" class="user_name">로그인을
					해주세요</a>
				<div id="button_align">
					<a href="html/login.html">
						<button type="button" id="login" class="login btn btn-primary"
							value="로그인" style="font-size: 12px;">로그인</button>
					</a> <a href="html/button.html">
						<button type="button" id="join" class="join btn btn-primary"
							value="회원가입" style="font-size: 12px;">회원가입</button>
					</a>
				</div>
			</div>
			<div class="menucategory panel-group" id="accordion">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a class="accordion-toggle downcategory" data-toggle="collapse"
								data-parent="#accordion" href="#collapseOne">웰컴이 추천하는 조립 PC<span
								class="glyphicon"></span>
							</a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse in">
						<div class="panel-body">
							<ul class="category">
								<li><a href="html/product.html" class="board">완제품 이벤트
										PC</a></li>
							</ul>
							<ul class="category">
								<li><a href="html/product.html" class="board">특가 상품</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a class="accordion-toggle downcategory collapsed"
								data-toggle="collapse" data-parent="#accordion"
								href="#collapseTwo">조립 PC 부품<span class="glyphicon"></span></a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse">
						<div class="panel-body">
							<ul class="category">
								<li><a href="html/product.html" class="board">CPU</a></li>
							</ul>
							<ul class="category">
								<li><a href="html/product.html" class="board">그래픽카드</a></li>
							</ul>
							<ul class="category">
								<li><a href="html/product.html" class="board">메인보드</a></li>
							</ul>
							<ul class="category">
								<li><a href="html/product.html" class="board">메모리카드</a></li>
							</ul>
							<ul class="category">
								<li><a href="html/product.html" class="board">기타 부품</a></li>
							</ul>
						</div>
					</div>
				</div>
				<ul class="category">
					<li><a href="html/board.html" class="board">커뮤니티</a></li>
				</ul>
				<ul class="category">
					<li><a href="html/board_notice.html" class="board">공지사항</a></li>
				</ul>
				<ul class="category">
					<li><a href="html/board_event.html" class="board">이벤트</a></li>
				</ul>
				<ul class="category">
					<li><a href="html/customer_service.html" class="board">고객센터</a></li>
				</ul>
			</div>
		</div>
		<!---->
		<div class="col-xs-4 header_height">
			<a id="logo_section" href="index.jsp"><img src="img/logo.png"
				alt=""></a>
		</div>
		<div class="col-xs-2 header_height">
			<a id="search" href="#"><img src="img/search.png" alt=""></a>
		</div>
		<div class="col-xs-2 header_height">
			<a id="cart" href="html/cart.html"><img src="img/cart.png" alt=""></a>
		</div>
		<!-- search -->
		<div class="search_toggle" id="search_toggle">
			<div class="input-group" id="search_toggle_input_group">
				<input type="text" class="form-control" id="search_input"> <span
					class="input-group-btn">
					<button class="btn btn-primary" type="button" id="search_button">검색</button>
				</span>
			</div>
		</div>
		<!-- search end -->
	</div>
</body>
</html>