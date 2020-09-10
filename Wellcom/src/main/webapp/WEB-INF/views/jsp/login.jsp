<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->

<head>
    <%@ include file="../inc/head.jsp"%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/login.css">
    <title>(주)웰컴</title>
</head>

<body>
    <div id="container">
       <%@ include file="../inc/header.jsp"%>
        <div id="content">
            <div id="title_area">
                <h2>login</h2>
            </div>
        
        <ul class="tab">
			<li data-tab="tab1" class='tabmenu member' id="default"><a href="#">회원</a></li>
			<li data-tab="tab2" class='tabmenu nomember'><a href="#">비회원</a></li>
		</ul>
		<div id="tabcontent"></div>
           
        <div id="login_util">
             <!-- 현재 페이지 위치를 표시하기 위한 목록 -->
             <ol class="breadcrumb util_list">
                 <li><a href="${pageContext.request.contextPath}/jsp/find_id.do">아이디찾기</a></li>
                 <li><a href="${pageContext.request.contextPath}/jsp/find_pw.do">비밀번호찾기</a></li>
                 <!-- 여기가 현재 페이지를 의미합니다. - active클래스 적용됨 -->
                 <li><a href="${pageContext.request.contextPath}/jsp/join.do">회원가입</a></li>
             </ol>
        </div>
    </div>
        <%@ include file="../inc/footer.jsp"%>
    </div>
    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript">
    $(function() {
    	// tab operation
		$('.tabmenu').click(function() {
			var activeTab = $(this).attr('data-tab');
			$('li').css('background-color', '#fff');
			$(this).css('background-color', '#FFF7F7');
			$.ajax({
				type : 'GET',                 //get방식으로 통신
				url : activeTab + ".do",     //탭의 data-tab속성의 값으로 된 html파일로 통신
				dataType : "html",            //html형식으로 값 읽기
				error : function() {          //통신 실패시
					alert('통신실패!');
				},
				success : function(data) {    //통신 성공시 탭 내용담는 div를 읽어들인 값으로 채운다.
					$('#tabcontent').html(data);
				}
			});
		});
		$('#default').click();
		
		
	});
</script>
</body>

</html>