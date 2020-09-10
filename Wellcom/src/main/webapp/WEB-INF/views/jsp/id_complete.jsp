<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->

<head>
    <%@ include file="../inc/head.jsp"%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/id_complete.css">
    <title>(주)웰컴</title>
</head>

<body>
    <div id="container">
        <%@ include file="../inc/header.jsp"%>
        <div id="content">
            <div id="find_complete_box">
                <strong>아이디 찾기가 완료되었습니다.</strong><br>
                <span class="font13">가입된 아이디가 총 <span class="red">1개</span> 있습니다.</span>
            </div>
            <form id="find_id_form">
                <fieldset>
                <ul>
                    <li class="table_th">이름</li>
                    <li class="table_td">송승하</li>
                    <li class="table_th">이메일</li>
                    <li class="table_td">
                       ilbo18@naver.com
                    </li>
                </ul>
                <ul>
                    <li class="find_id">
                        <input type="radio" name="option"
                        id="call_type" checked="checked">
                        ilbo18(개인회원, 2017-03-01 가입)
                    </li>
                </ul>
                </fieldset>
            </form>
            <div id="button_area">
            <button type="button" id="move_login">
                <a href="${pageContext.request.contextPath}/jsp/login.do">로그인</a>
            </button>
            <button type="button" id="move_find_pw">
                <a href="${pageContext.request.contextPath}/jsp/find_pw.do">비밀번호 찾기</a>
            </button>
            </div>
        </div>
        <!-- 하단 공통 내용 -->
        <%@ include file="../inc/footer.jsp"%>
    </div>
    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script type="text/javascript">
    $(function() {

    }); // end of $(function(){
    </script>
</body>

</html>