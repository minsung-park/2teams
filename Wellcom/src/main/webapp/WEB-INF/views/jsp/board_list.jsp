<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->
<head>
	<%@ include file="../inc/head.jsp"%>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/board_common.css" />
<%-- 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/board_list.css" /> --%>
	<title>(주)웰컴</title>
</head>

<body>
	<%-- 화면 전체 영역 --%>
	<div id="container">
		<%@ include file="../inc/header.jsp"%>
		
		<%-- 검색 모달창 배경 레이어 --%>
		<!-- <div id="search_background_modal" class="search_background_modal"></div> -->
		
		<%-- 검색 모달창 --%>
		<!-- <div id="search_modal_button_area" class="search_modal_buton_area">
		<button type="button" class="search_modal_find_button modal_button">검색</button>
		<button type="button" class="search_modal_close_button modal_button">닫기</button>
		</div> -->
		
		<%-- 본문 영역 --%>
		<div id="content">
			<%-- 게시판 제목 영역 --%>
			<div id="content_header">
				<%-- JSTL 분기 처리 - 게시판 제목 --%>
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

			<%-- 상단 카테고리 뎁스 영역 --%>
			<ol class="breadcrumb" id="breadcrumb">
				<li>
					<a href="${pageContext.request.contextPath}/jsp/board.do">커뮤니티</a>
				</li>
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

			<%-- 본문 테이블 영역 - bootstrap 사용 --%>
			<div class="table-responsive">
				<table id="search_table" class="table table-striped table-bordered paginated">
					<thead>
						<tr>
							<td class="text-center">No</td>
							<td class="text-center">글제목</td>
							<td class="text-center">조회</td>
							<td class="text-center">작성자</td>
							<td class="text-center">작성일</td>
						</tr>
					</thead>
					<tbody id="add_tbody" class="add_tbody">
					
						<%-- JSTL 분기 처리 - 게시글 생성 --%>
						<c:choose>
							<%--조회결과가 없는 경우 --%>
							<c:when test="${output == null || fn:length(output) == 0 }">
								<tr>
									<td colspan="5" align="center">게시글이 없습니다. 게시글을 작성해 주세요.</td>
								</tr>
							</c:when>

							<%-- 조회결과가 있는 경우 --%>
							<c:otherwise>
								<%-- 조회 결과에 따른 반복 처리 --%>
								<c:forEach var="item" items="${output }" varStatus="status">
									<%-- 출력을 위해 준비한 칼럼 --%>
									<c:set var="type" value="${item.type }" />
									<c:set var="bbs_board_id" value="${item.bbs_board_id }" />
									<c:set var="head" value="${item.head }" />
									<c:set var="hit" value="${item.hit }" />
									<c:set var="user_name" value="${item.user_name }" />
									<c:set var="reg_date" value="${item.reg_date }" />
									<c:set var="edit_date" value="${item.edit_date }" />
									
									<%-- 검색어가 있다면? --%>
									<c:if test="${keyword != '' }"></c:if>

									<%-- 상세페이지로 이동하기 위한 URL --%>
									<c:url value="/jsp/board_read.do" var="viewUrl">
										<c:param name="type" value="${item.type }" />
										<c:param name="bbs_board_id" value="${item.bbs_board_id }" />
										<c:param name="hit" value="${item.hit }" />
									</c:url>
									
									<%-- JSTL 분기 처리 - 게시판 타입에 따른 분기 --%>
									<c:choose>
										<%-- 공지사항 --%>
										<c:when test="${type eq 1 }">
											<tr>
												<%-- 게시글 번호 코드 --%>
												<td align="center">${(pageData.totalCount - status.index)-((pageData.nowPage - 1) * pageData.listCount)}</td>
												<td class="desc">
													<a href="${viewUrl }">${head }</a>
												</td>
												<td align="center">${hit }</td>
												<td align="center">${user_name}
												<td align="center">${reg_date}
												<%-- 글 수정시 수정한 날짜 출력	
												<c:if test="${edit_date ne null }">
													${edit_date }
												</c:if>
												<c:if test="${edit_date eq null }">
													${reg_date }
												</c:if> --%>
												</td>
											</tr>
										</c:when>
										
										<%-- 이벤트 게시판 --%>
										<c:when test="${type eq 2 }">
											<tr>
												<%-- 게시글 번호 코드 --%>
												<td align="center">${(pageData.totalCount - status.index)-((pageData.nowPage - 1) * pageData.listCount)}</td>
												<td class="desc">
													<a href="${viewUrl }">${head }</a>
												</td>
												<td align="center">${hit }</td>
												<td align="center">${user_name}
												<td align="center">${reg_date }</td>
											</tr>
										</c:when>
										
										<%-- 이용 후기 게시판 --%>
										<c:when test="${type eq 3 }">
											<tr>
												<%-- 게시글 번호 코드 --%>
												<td align="center">${(pageData.totalCount - status.index)-((pageData.nowPage - 1) * pageData.listCount)}</td>
												<td class="desc">
													<a href="${viewUrl }">${head }</a>
												</td>
												<td align="center">${hit }</td>
												<td align="center">${user_name}
												<td align="center">${reg_date }</td>
											</tr>
										</c:when>
										
										<%-- 자주 묻는 질문 게시판 --%>
										<c:when test="${type eq 4 }">
											<tr>
												<%-- 게시글 번호 코드 --%>
												<td align="center">${(pageData.totalCount - status.index)-((pageData.nowPage - 1) * pageData.listCount)}</td>
												<td class="desc">
													<a href="${viewUrl }">${head }</a>
												</td>
												<td align="center">${hit }</td>
												<td align="center">${user_name}
												<td align="center">${reg_date }</td>
											</tr>
										</c:when>
										
										<%-- 문의 게시판 --%>
										<c:when test="${type eq 5 }">
											<tr>
												<%-- 게시글 번호 코드 --%>
												<td align="center">${(pageData.totalCount - status.index)-((pageData.nowPage - 1) * pageData.listCount)}</td>
												<td class="desc">
													<a href="${viewUrl }">${head }</a>
												</td>
												<td align="center">${hit }</td>
												<td align="center">${user_name}
												<td align="center">${reg_date }</td>
											</tr>
										</c:when>
									</c:choose>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
			<%-- 본문 테이블 영역 - bootstrap 사용 끝 --%>

			<%-- 페이지네이션 영역 --%>
			<div id="paging_area">
				<%-- 이전 그룹에 대한 링크 --%>
				<c:choose>
					<%-- 이전 그룹으로 이동 가능하다면? --%>
					<c:when test="${pageData.prevPage > 0 }">
						<%-- 이동할 URL 생성 --%>
						<c:url value="/jsp/board_list.do" var="prevPageUrl">
							<c:param name="type" value="${type }" />
							<c:param name="page" value="${pageData.prevPage }" />
							<c:param name="keyword" value="${keyword }" />
						</c:url>
						
						<a href="${prevPageUrl }">
							<span class="move_page">이전</span>
						</a>
					</c:when>		
					<c:otherwise>
						<span class="move_page">이전</span>
					</c:otherwise>
				</c:choose>

				<%-- 페이지 번호(시작 페이지부터 끝 페이지까지 반복) --%>
				<c:forEach var="i" begin="${pageData.startPage }" end="${pageData.endPage }" varStatus="status">
					<%-- 이동할 URL 생성 --%>
					<c:url value="/jsp/board_list.do" var="pageUrl">
						<c:param name="type" value="${type }" />
						<c:param name="page" value="${i }" />
						<c:param name="keyword" value="${keyword }" />
					</c:url>

					<%-- 페이지 번호 출력 --%>
					<c:choose>
						<%-- 현재 머물고 있는 페이지 번호를 출력할 경우 링크 적용 안함 --%>
						<c:when test="${pageData.nowPage==i }">
							<strong class="now_page page_number">${i }</strong>
						</c:when>
						<%-- 나머지 페이지의 경우 링크 적용함 --%>
						<c:otherwise>
							<a href="${pageUrl }" class="link_page page_number">${i }</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<%-- 다음 그룹에 대한 링크 --%>
				<c:choose>
					<%-- 다음 그룹으로 이동 가능하다면? --%>
					<c:when test="${pageData.nextPage > 0 }">
						<%-- 이동할 URL 생성 --%>
						<c:url value="/jsp/board_list.do" var="nextPageUrl">
							<c:param name="type" value="${type }" />
							<c:param name="page" value="${pageData.nextPage }" />
							<c:param name="keyword" value="${keyword }" />
						</c:url>
						<a href="${nextPageUrl }">
							<span class="move_page">다음</span>
						</a>
					</c:when>
					<c:otherwise>
						<span class="move_page">다음</span>
					</c:otherwise>
				</c:choose>

			</div>
			<%-- 페이지네이션 영역 끝 --%>

			<%-- 글쓰기 영역 --%>
			<div id="writer">
				<%--  
				<c:url value="/jsp/board_write.do" var="write">
					<c:param name="type" value="${output.type }" />
					<c:param name="user_name" value="${output.user_name }" />
				</c:url>
				<a href="${write }">  --%>
				<a href="${pageContext.request.contextPath}/jsp/board_write.do?type=${type}" id="write" class="write">
					<button type="button" class="btn btn-primary write">글쓰기</button>
				</a>
			</div>
			<%-- 글쓰기 영역 끝 --%>

			<%-- 검색 영역 --%>
			<div id="search">
				<form method="get" action="${pageContext.request.contextPath }/jsp/board_list.do?type=${type}">
					<input type="hidden" name="type" value="${type }" />
					<input type="text" id="keyword" name="keyword" placeholder="검색어를 입력해 주세요." value="${keyword }" />
					<button type="submit" class="search_button">검색</button>	
				</form>
			</div>
			<%-- 검색 영역 끝 --%>
			
		</div>
		<%-- 본문 영역 끝 --%>
		<%@ include file="../inc/footer.jsp"%>
	</div>
	<%-- 화면 전체 영역 끝 --%>

	<!-- Javascript -->

<%-- 	<script src="${pageContext.request.contextPath}/assets/js/board_common.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/assets/js/board_list.js"></script> --%>

</body>

</html>