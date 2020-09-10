<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->

<head>
    <%@ include file="../inc/head.jsp"%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/pw_complete.css">
    <title>(주)웰컴</title>
</head>

<body>
    <div id="container">
        <!-- header/footer영역 공통사용 -->
        <%@ include file="../inc/header.jsp"%>
        <div id="content">
                        <div id="title_area">
                            <h2>find password</h2>
                        </div>
                        <form id="find_pw_form">
                            <fieldset>

                                <ul>
                                    <li class="table_th">임시 비밀번호</li>
                                    <li class="table_td type_radio">
                                        <input type="radio" name="option"
                                        id="call_type" checked="checked">이메일
                                    </li>
                                </ul>
                                <!-- Backend에서 받아본 정보가 true 이면 이메일 value에 유저의 이메일 보여준다. -->
                                <ul>
                                    <li class="table_th">이메일</li>
                                    <li class="table_td">
                                        <input type="text" id="find_user_email">
                                    </li>
                                </ul>
                            </fieldset>
                        </form>
                        <!-- 유저가 작성한 이메일로 임시 비밀번호 mathrandom
                        보내기 -->
                        <div id="button_area">
                            <button type="submit" id="submit_button">
                                <a href="${pageContext.request.contextPath}/jsp/pw_complete_result.do">임시 비밀번호 전송</a>
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