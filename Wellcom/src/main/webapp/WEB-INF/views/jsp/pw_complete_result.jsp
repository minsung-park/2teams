<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->

<head>
    <%@ include file="../inc/head.jsp"%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/id_complete.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/pw_complete_result.css">
    <title>(주)웰컴</title>
</head>

<body>
    <div id="container">
        <%@ include file="../inc/header.jsp"%>
        <div id="content">
            <div id="title_area">
                 <h2>find password</h2>
            </div>
            <div id="find_complete_box">
                <strong>임시 비밀번호가</strong><br>
                <span class="red">고객님의 메일로 전송되었습니다.</span>
            </div>
            <form id="find_pw_form">
                <fieldset>
                <ul>
                    <li class="table_th">ID</li>
                    <li class="table_td">
                       <!-- 비밀번호 찾기 시 작성한 유저 정보와 일치하는 유저 ID -->
                    </li>
                    <li class="table_th">이메일</li>
                    <li class="table_td">
                       <!-- 비밀번호 찾기 시 작성한 유저 정보와 일치하는 유저 email -->
                    </li>
                </ul>
                </fieldset>
            </form>
            <div id="button_area">
            <button type="button" id="move_login">
                <a href="${pageContext.request.contextPath}/jsp/login.do">로그인</a>
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