<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->
<head>
<%@ include file="../inc/head.jsp" %>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/board_read.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/board_common.css">
    <title>(주)웰컴</title>
</head>

<body>
	<%-- 화면 전체 영역 --%>
    <div id="container">
        <%@ include file="../inc/header.jsp"%>

		<%-- 본문 영역 --%>
        <div id="content">
            <%-- 글 상세 페이지 제목 영역 --%>
            <div id="content_header">
            	<%-- JSTL 분기 처리 - 글 상세 페이지 제목 --%>
				<c:set var="type" value="${output.type }" />
				<c:choose>
	            	<c:when test="${type eq 1 }">
	            		공지사항
	           		</c:when>
	           		<c:when test="${type eq 2 }">
	           			이벤트
	       			</c:when>
	       			<c:when test="${type eq 3 }">
	       				이용 후기
	      			</c:when>
	      			<c:when test="${type eq 4 }">
	      				자주 묻는 질문
	      			</c:when>
	      			<c:when test="${type eq 5 }">
	      				문의 게시판
	     			</c:when>
	    		</c:choose>
            </div>
            <%-- 글 상세 페이지 제목 영역 끝 --%>
            
            <%-- 상단 카테고리 뎁스 영역 --%>
            <ol class="breadcrumb" id="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/jsp/board.do">커뮤니티</a></li>
                <li class="active">
					<%-- JSTL 분기 처리 - 카테고리 뎁스 --%>
					<c:choose>
		            	<c:when test="${type eq 1 }">
		            		공지사항
		           		</c:when>
		           		<c:when test="${type eq 2 }">
		           			이벤트
		       			</c:when>
		       			<c:when test="${type eq 3 }">
		       				이용 후기
		      			</c:when>
		      			<c:when test="${type eq 4 }">
		      				자주 묻는 질문
		      			</c:when>
		      			<c:when test="${type eq 5 }">
		      				문의 게시판
		     			</c:when>
		    		</c:choose>   
                </li>
            </ol>
            <%-- 상단 카테고리 뎁스 영역 끝 --%>
            
			<%-- 게시판 제목글 영역 --%>
            <div id="article_header" class="article_header">
                <span id="article_heading" class="article_time">${output.head}</span><br/>
                <%-- <span id="article_time" class="aritlce_time">${output.reg_date }</span> --%>
                <span id="article_time" class="aritlce_time">
               		${output.reg_date}
	                <%-- 수정한 날짜가 있으면 수정한 날짜가, 없으면 등록한 날짜가 출력 
	                <c:choose>
	                	<c:when test="${output.edit_date ne null}">
	                		${output.edit_date }
	               		</c:when>
	               		<c:otherwise>
	               			${output.reg_date }
	               		</c:otherwise>
	              	</c:choose> --%>        
                </span>
                <span id="article_view" class="article_view">조회 ${output.hit }</span>
                <span id="article_writer" class="article_writer">${output.user_name}</span>
              
            </div>
            <%-- 게시판 제목글 영역 끝 --%>     
            <hr/>
       
       		<%-- 게시판 내용 영역 --%>
            <div id="article_content" class="article_content">	
                ${output.content}<br/>
                <%-- 이미지 로드 (미완성) --%>
                <img src="${item.fileUrl }" width="240" />	
            </div>
            <%-- 게시판 내용 영역 끝 --%>
            <hr />
            
            <%-- 버튼 영역 --%>
            <div id="commit_bottom" class="commit_bottom">
				<a href="${pageContext.request.contextPath}/jsp/board_list.do?type=${output.type }" id="pagelist" class="pagelist">
					<button type="button" id="listbutton" class="btn btn-primary" value="목록">목록</button></a>
				<a href="${pageContext.request.contextPath}/jsp/board_edit.do?type=${output.type }&bbs_board_id=${output.bbs_board_id}" id="update" class="update">
					<button type="button" id="updatebutton" class="btn btn-primary" value="수정">수정</button></a>
				<a href="${pageContext.request.contextPath }/jsp/board_delete_ok.do?type=${output.type }&bbs_board_id=${output.bbs_board_id}" id="delete" class="delete">
					<button type="button" id="deletebutton" class="btn btn=primary" value="삭제">삭제</button></a>
			 </div>
			 <%-- 버튼 영역 끝 --%>
		</div>
		<%-- 본문 영역 끝 --%>
		<%@ include file="../inc/footer.jsp"%>
	</div>
	<%-- 화면 전체 영역 --%>

	<!-- Javascript -->
	<script type="text/javascript">
		$(function() {
			// 삭제 버튼 클릭스 이벤트 정의
			$("#deletebutton").click(function(e){
				e.preventDefault();		// 기본 동작 방지
				// sweetalert 플러그인 구현
				swal({
					title : '삭제',
					text : '삭제 하시겠습니까?',
					type : 'question',
					confirmButtonText : 'yes',
					showCancelButton : true,
					cancelButtonText : 'No',
				}).then(function(result) {
					if (result.value) {
						location.replace("${pageContext.request.contextPath }/jsp/board_delete_ok.do?type=${output.type }&bbs_board_id=${output.bbs_board_id}");
					} // end of if
				}); // end of .then(function(result){
			}); // end of $("#deletebutton").click(function(e){
	
			// 목록 버튼 클릭 이벤트 정의
       	 	$('.pagelist').click(function(e) {
				e.preventDefault();
				location.replace("${pageContext.request.contextPath }/jsp/board_list.do?type=${output.type}");
			}); // end of $('.pagelist').click(function(e){ */
		}); // end of $(function(){ 
	</script>
</body>

</html>