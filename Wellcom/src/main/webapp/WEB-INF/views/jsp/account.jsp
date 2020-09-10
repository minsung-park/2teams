<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->
<head>
<%@ include file="../inc/head.jsp"%>
<!-- 시각적 확인을 위한 css 적용 -->
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/account.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css">
<title>index</title>
</head>
<body>
	<div id="container">
		<%@ include file="../inc/header.jsp"%>
		<div id="content">
			
  <div id ="account">
        마이페이지
    </div>

    <div id="accountA">

    <ul>
    <li>
       <div id="user_order" class="accA">
    <a href="${pageContext.request.contextPath}/jsp/user_order.do">나의 주문
    </a>
    </div>
    </li>
    <br/>
    <li>
        <div id="user_info" class="accA">
    <a href="${pageContext.request.contextPath}/jsp/user_info.do">회원정보</a>
    </div>


    </li>
  <br/>
    <li>

<div id="user_wallet" class="accA">
    <a href="${pageContext.request.contextPath}/jsp/user_wallet.do">나의 지갑
    </a>
    </div>


    </li>
      <br/>
    <li>
          <div id="review" class="accA">
    <a href="${pageContext.request.contextPath}/jsp/review.do">상품후기
    </a>
    </div>


    </li>
      <br/>
<li>
    <div id="customer_service" class="accA">
    <a href="${pageContext.request.contextPath}/jsp/customer_service.do">고객센터
    </a>
    </div>


</li>

</ul>

</div>





				

			</div>
		<%@ include file="../inc/footer.jsp"%>
	</div>
	<!-- Javascript -->


	<script src="${pageContext.request.contextPath}/assets/plugins/handlebars/handlebars-v4.0.11.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#more').click(
					function(e) {
						e.preventDefault();
						var position = $(document).scrollTop();
						var template = Handlebars.compile($(
								"#popular-items-tmpl").html());
						var html = template();
						$(".popular_item2 .item_box ul").append(html);

						$('html').animate({
							scrollTop : position
						}, 0);

					}); // end of $('.btn-primary').click(function(e) {
		}); // end of $(function(){
			
			

			
			
			
	</script>
</body>

</html>