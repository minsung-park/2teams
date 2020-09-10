<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<button class="onTop" id="onTop">
	<img src="${pageContext.request.contextPath}/assets/img/onTop.png">
</button>
<!-- header/footer영역 공통사용 -->
<div id="header" class="row box">
	<div class="col-xs-4 header_height">
		<a id="menu" href="#">
			<i class="fas fa-bars"></i>
		</a>
	</div>
	<!-- 모달로 꾸밀 박스 -->
	<div class="gray_layer" id="gray_layer"></div>
	<!-- end of gray_layer -->
	<div class="over_layer" id="over_layer">
		<div class="close_icon">
			<i class="fas fa-times"></i>
		</div>
		<div class="over_layer_content" id="over_layer_content">
			<!-- 토글 메뉴바 상단 글씨 및 버튼 영역 -->
			<div id="toggle_menu">
				<span class="toggle_menu_heading">로그아웃 상태입니다.</span>
				<span class="toggle_menu_title">로그인을 하시면 많은 혜텍을 받으실 수 있습니다.</span>
				<br />
				<div id="button_align">
					<button type="button" onclick="location.href='${pageContext.request.contextPath}/jsp/login.do'" id="login" class="login btn" value="로그인">로그인</button><!--
 				--><button type="button" id="join" onclick="location.href='${pageContext.request.contextPath}/jsp/join.do'" class="join btn" value="회원가입">회원가입</button>
				</div>
			</div>
			<!-- 토글 메뉴바 상단 글씨 및 버튼 영역 -->

			<!-- 메뉴토글 상단 영역 버튼 및 아이콘 설정 영역 -->
			<div class="menu_img_group clearfix" id="icon_align">
				<a href="${pageContext.request.contextPath}/jsp/board_list.do?type=1" class="notice menu_img">
					<img src="<%=request.getContextPath()%>/assets/img/notice.png" />
					<span class="icon_name">공지사항</span>
				</a>
				<a href="${pageContext.request.contextPath}/jsp/user_info.do" class="mypage menu_img">
					<img src="<%=request.getContextPath()%>/assets/img/mypage.png" />
					<span class="icon_name">회원정보</span>
				</a>
				<a href="${pageContext.request.contextPath}/jsp/customer_service.do" class="write menu_img">
					<img src="<%=request.getContextPath()%>/assets/img/write3.png" />
					<span class="icon_name">고객센터</span>
				</a>
				<a href="${pageContext.request.contextPath}/jsp/cart.do?members_id=3" class="menubar_cart menu_img">
					<img src="<%=request.getContextPath()%>/assets/img/menubar_cart.png" />
					<span class="icon_name">장바구니</span>
				</a>

			</div>
			<!-- 메뉴토글 상단 영역 버튼 및 아이콘 설정 영역 끝 -->

			<!-- 검색 영역 -->
			<div class="menu_search clearfix" id="menu_search">
				<input type="text" name="menu_search_area" class="menu_search_area" id="menu_search_area" placeholder="검색어를 입력해주세요.">
				<a id="menu_search_click" class="menu_search_click">
					<i class="fas fa-search"></i>
				</a>
			</div>
			<!-- 검색 영역 끝 -->



			<!-- 카테고리 메뉴 영역 -->
			<div class="category_item" id="category_item">
				<ul class="category_item_list first_acc acc">
					<li class="category_item_list_medium"><h2 class="category_heading accordion">
							<i class="fas fa-chevron-down"></i>웰컴이 추천하는 완제품
						</h2></li>
					<li class="category_item_list_child first_child ach"><a href="${pageContext.request.contextPath}/jsp/product.do">미래의 게이머들을 위한 게이밍 PC </a></li>
					<li class="category_item_list_child first_child ach"><a href="${pageContext.request.contextPath}/jsp/product.do">가격과 성능을 다 갖춘 가성비 PC </a></li>
					<li class="category_item_list_child first_child ach"><a href="${pageContext.request.contextPath}/jsp/product.do">두번 다시 안오는 기획 이벤트 특가 PC </a></li>
				</ul>

				<ul class="category_item_list second_acc acc">

					<li class="category_item_list_medium"><h2 class="category_heading accordion">
							<img src="${pageContext.request.contextPath}/assets/img/up_arrow.png" />
							조립 PC
						</h2></li>
					<li class="category_item_list_child second_child ach"><a href="${pageContext.request.contextPath}/jsp/product.do?data=cpu">CPU </a></li>
					<li class="category_item_list_child second_child ach"><a href="${pageContext.request.contextPath}/jsp/product.do?data=board">메인보드 </a></li>
					<li class="category_item_list_child second_child ach"><a href="${pageContext.request.contextPath}/jsp/product.do?data=vga">그래픽카드 </a></li>
					<li class="category_item_list_child second_child ach"><a href="${pageContext.request.contextPath}/jsp/product.do?data=ram">메모리카드 </a></li>
					<li class="category_item_list_child second_child ach"><a href="${pageContext.request.contextPath}/jsp/product.do?data=pow">파워 </a></li>
					<li class="category_item_list_child second_child ach"><a href="${pageContext.request.contextPath}/jsp/product.do?data=etc">기타 부품 </a></li>
				</ul>

				<ul class="category_item_list">

					<li class="category_item_list_medium"><h2 class="category_heading"><a href="${pageContext.request.contextPath}/jsp/board.do">커뮤니티</a></h2></li>	
					<li class="category_item_list_child"><a href="${pageContext.request.contextPath}/jsp/board_list.do?type=2">이벤트
					</a></li>	
					<li class="category_item_list_child"><a href="${pageContext.request.contextPath}/jsp/board_list.do?type=3">이용 후기
					</a></li>	
					<li class="category_item_list_child"><a href="${pageContext.request.contextPath}/jsp/customer_service.do">고객센터
					</a></li>
					<li class="category_item_list_child"><a href="${pageContext.request.contextPath}/jsp/board_list.do?type=4">자주 묻는 질문
					</a></li>	
					<li class="category_item_list_child"><a href="${pageContext.request.contextPath}/jsp/board_list.do?type=5">문의 게시판
					</a></li>	

				</ul>
			</div>
		</div>
		<!-- end of over_layer_content -->
	</div>
	<!-- end of over_layer -->

	<!-- 상단 fixed 영역 -->
	<div class="col-xs-4 header_height">
		<a id="logo_section" href="${pageContext.request.contextPath}">
			<img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="">
		</a>
	</div>
	<div class="col-xs-2 header_height">
		<a id="search" href="#">
			<i class="fas fa-search"></i>
		</a>
	</div>
	<div class="col-xs-2 header_height">
		<a id="cart" href="${pageContext.request.contextPath}/jsp/cart.do?members_id=3">
			<i class="fas fa-shopping-cart"></i>
		</a>
	</div>
	<!-- 상단 fixed 영역 끝 -->

	<!-- search -->
	<div class="search_toggle" id="search_toggle">
		<div class="input-group" id="search_toggle_input_group">
			<input type="text" class="form-control" id="search_input">
			<span class="input-group-btn">
				<button class="btn btn-primary" type="button" id="search_button">검색</button>
			</span>
		</div>
	</div>
	<!-- search end -->

</div>
