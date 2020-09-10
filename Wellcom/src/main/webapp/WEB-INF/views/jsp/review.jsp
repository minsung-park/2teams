<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <%@ include file="../inc/head.jsp"%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/review.css">
    <title>(주)웰컴</title>
</head>

<body>
    <div id="container">
        <%@ include file="../inc/header.jsp"%>
        <!-- 본문 영역 -->
        <div id="content">
        	<!-- 후기 게시판 제목 영역 -->
            <div id="content_header">상품후기</div>
            <!-- 상단 카테고리 뎁스 영역 -->
            <ol class="breadcrumb" id="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/jsp/account.do">마이페이지</a></li>
                <li class="active">상품후기</li>
                <!-- 여기가 현재 페이지를 의미합니다. - active클래스 적용됨 -->
            </ol>
            <ul class="content-box">
                <li><a href="#">
                        <span class="thumb">
                            <img src="${pageContext.request.contextPath}/assets/img/vga/radeon_rx570_thumb.jpg" alt="상품 썸네일1">
                        </span>
                        <span class="desc">
                            <strong>그래픽카드 :</strong>
                            <span class="orange">ASRock Phantom Gaming D 라데온 RX 570 D5 4GB 에즈윈</span>
                            <br> 수량 : 1 <br> 가격 : 151,000 <br> 상태 : 발송 완료 <br> 구매일 : 2020. 07. 12 <br> </span>
                        <span class="review">
                            <span class="title">내가 쓴 리뷰</span>
                            <span class="img">
                                <img src="${pageContext.request.contextPath}/assets/img/review_570.jpg" alt="리뷰 이미지1">
                            </span>
                            <span class="desc">배송이 빠릅니다.</span>
                        </span>
                    </a></li>
                <li><a href="#"> 
                		<span class="thumb">
                            <img src="${pageContext.request.contextPath}/assets/img/vga/nvidia_1660super_thumb.jpg" alt="상품 썸네일2">
                        </span>
                        <span class="desc">
                            <strong>그래픽카드 :</strong>
                            <span class="orange">이엠텍 지포스 GTX 1660 SUPER STORM X Dual OC D6 6GB</span>
                            <br> 수량 : 1 <br> 가격 : 272,600 <br> 상태 : 발송 완료 <br> 구매일 : 2020. 07. 23 <br> </span>
                        <span class="review">
                            <span class="title">내가 쓴 리뷰</span>
                            <span class="img">
                                <img src="${pageContext.request.contextPath}/assets/img/review_1660.jpg" alt="리뷰 이미지2">
                            </span>
                            <span class="desc">다음에 또 구매할게요!</span>
                        </span>
                    </a></li>
                <li><a href="#">
                		<span class="thumb">
                            <img src="${pageContext.request.contextPath}/assets/img/vga/radeon_rx5700_thumb.jpg" alt="상품 썸네일3">
                        </span>
                        <span class="desc">
                            <strong>그래픽카드 :</strong>
                            <span class="orange">이엠텍 지포스 RTX 2070 SUPER GAMER OC D68GB</span>
                            <br> 수량 : 1 <br> 가격 : 612,760 <br> 상태 : 발송 완료 <br> 구매일 : 2020. 08. 12 <br> </span>
                        <span class="review">
                            <span class="title">내가 쓴 리뷰</span>
                            <span class="img">
                                <img src="${pageContext.request.contextPath}/assets/img/review_2070.jpg" alt="리뷰 이미지3">
                            </span>
                                <span class="desc">이쁘네요.</span>
                        </span>
                	</a></li>
            </ul>
            <div class="text-center">
                <ul class="pagination pager" id="pager">
                    <li class="disabled"><a href="#">&lt;</a></li>
                    <li class="active"><span>1<span class="sr-only">(current)</span></span></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">&gt;</a></li>
                </ul>
            </div>
            <button id="button_return_mypage" type="button" class="btn btn-primary2" value="마이페이지 홈"
                onclick="location.href='${pageContext.request.contextPath}/jsp/account.do'">마이페이지 홈
            </button>
        </div>
        <%@ include file="../inc/footer.jsp"%>
    </div>
    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $("#pager li").click(function (e) {
            e.preventDefault();
            $(this).addClass("active");
            $("#pager li").not(this).removeClass("active");

        }); // end of $("#pager li").click(function(){
    </script>

    <body>
        <div id="paging"></div>
    </body>

</html>