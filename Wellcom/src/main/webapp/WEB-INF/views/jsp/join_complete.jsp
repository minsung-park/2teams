<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String userId = request.getParameter("user_id");
	String userName = request.getParameter("user_name");
	String userEmail = request.getParameter("email");
	
%>

<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->

<head>
    <%@ include file="../inc/head.jsp"%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/join_complete.css">
    <title>(주)웰컴</title>
</head>

<body>
    <div id="container">
        <%@ include file="../inc/header.jsp"%>
        <div id="content">
            <div id="title_area">
                <h2>join complete</h2>
            </div>
            <div id="progress">
                <ul>
                    <li class="done">약관동의</li>
                    <li class="done">정보입력</li>
                    <li class="done">가입완료</li>
                </ul>
            </div>
            <div id="join_complete_box">
                <strong>회원가입이 완료되었습니다.</strong><br>
                <span class="red">Wellcom</span>에 오신것을 환영합니다. 
            </div>
            <form id="join_info_form">
                <fieldset>
                <ul>
                    <li class="table_th">아이디</li>
                    <li class="table_td">
                       <!-- 회원가입 시 작성한 유저 ID -->
                       <%=userId%>
                    </li>
                    <li class="table_th">이 름</li>
                    <li class="table_td">
                       <!-- 회원가입 시 작성한 유저 name -->
                       <%=userName%>
                    </li>
                    <li class="table_th">이메일</li>
                    <li class="table_td">
                       <!-- 회원가입 시 작성한 유저 email -->
                       <%=userEmail%>
                    </li>
                </ul>
                </fieldset>
            </form>
            <div id="button_type">
                <div id="button_style">
                    <button type="submit" id="button_next"><a href="${pageContext.request.contextPath}/jsp/login.do">로그인</a></button>
                </div>
            </div>
        </div>
        <%@ include file="../inc/footer.jsp"%>
    </div>
    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <!-- validate 플러그인 참조 -->
    <script src="${pageContext.request.contextPath}/assets//plugins/validate/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets//plugins/validate/additional-methods.min.js"></script>
    <!-- sweetalert 플러그인 참조 -->
    <script src="${pageContext.request.contextPath}/assets//plugins/sweetalert/sweetalert2.min.js"></script>        
    <script type="text/javascript">
        $(function() {
            
        });
    </script>
</body>

</html>