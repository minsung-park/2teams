<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->
<head>
<%@ include file="../inc/head.jsp"%>
<!-- 시각적 확인을 위한 css 적용 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/user_wallet.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/sweetalert/sweetalert2.min.css" />

<title>나의 지갑</title>
</head>
<body>
	<div id="container">
		<%@ include file="../inc/header.jsp"%>
		<div id="content">
			<div id="content_header">나의 지갑</div>
			<ol class="breadcrumb" id="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/jsp/account.do">마이페이지</a></li>
				<li class="active">나의지갑</li>
				<!-- 여기가 현재 페이지를 의미합니다. - active클래스 적용됨 -->
			</ol>
			<div id="content_main">





				<div id="card_wrapper">
					<div id="card">



						<div id="payment_card">
						
						<div id="card_img">	<span class="paymentCard_imageTab"> <svg
									class="paymentCard_imageTab_svg"
									xmlns="http://www.w3.org/2000/svg" width="70" height="70"
									viewBox="0 0 32 32">
   <path class="paymentCard_imageTab_svg-payment_path" fill="#111111"
										d="M29 4h-26c-1.65 0-3 1.35-3 3v18c0 1.65 1.35 3 3 3h26c1.65 0 3-1.35 3-3v-18c0-1.65-1.35-3-3-3zm-26 2h26c.542 0 1 .458 1 1v3h-28v-3c0-.542.458-1 1-1zm26 20h-26c-.542 0-1-.458-1-1v-9h28v9c0 .542-.458 1-1 1zm-25-6h2v4h-2zm4 0h2v4h-2zm4 0h2v4h-2z"></path>
</svg>

							</span>
							</div>
						
						</div>




						<div id="card_detail">
						
						
						<div id="card_detail_box">
						
						<p class="paymentCard_text">************2409</p>
                              <p class="paymentCard_text">Mastercard</p>
                              <p class="paymentCard_text">Expiry Date: 10/2021</p>
                           
						
						
						</div>
						<div id="card_detail_button" class="btn-group1">
					
						<button id="button_detail1" type="button" class="btn btn-light"
						onclick="location.href='${pageContext.request.contextPath}/jsp/user_wallet_manage.do'">관리</button>
                         
                         
                        
                         <button id="button_detail2" type="button" class="btn btn-light">삭제</button>
					
						</div>
						
						
						
						</div>




					</div>
				</div>
<button id="button_return_mypage" type="button"
					class="btn btn-primary2" value="마이페이지 홈"
					onclick="location.href='${pageContext.request.contextPath}/jsp/account.do'">마이페이지 홈</button>
			</div>



</div>
			<%@ include file="../inc/footer.jsp"%>
			
		</div>
		<!-- Javascript -->

		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/plugins/sweetalert/sweetalert2.all.min.js"></script>


		<script type="text/javascript">
			

			// sweetalert//
			
			 $(function() {
			 $("#button_detail2").click(function() {
                // 확인, 취소버튼에 따른 후속 처리 구현
                swal({
                    title: '확인',                // 제목
                    text: "정말 선택하신 결제카드를 삭제하시겠습니까?",  // 내용
                    type: 'warning',              // 종류
                    confirmButtonText: 'Yes',     // 확인버튼 표시 문구
                    showCancelButton: true,       // 취소버튼 표시 여부
                    cancelButtonText: 'No',       // 취소버튼 표시 문구
                }).then(function(result) {        // 버튼이 눌러졌을 경우의 콜백 연결
                    if (result.value) {           // 확인 버튼이 눌러진 경우
                        swal('삭제', '성공적으로 삭제되었습니다.', 'success');
                    	setTimeout(function(){  location.href="${pageContext.request.contextPath}/jsp/user_wallet_none.do" }, 1000);
                    } else if (result.dismiss === 'cancel') {   // 취소버튼이 눌러진 경우
                        swal('취소', '삭제가 취소되었습니다.', 'error');
                    }
                });
            });
			
			
			 });
			
			
		</script>
</body>

</html>