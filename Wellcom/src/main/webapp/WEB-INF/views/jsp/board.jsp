<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->
<head>
	<%@ include file="../inc/head.jsp"%>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/board_common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/board.css">
	<title>(주)웰컴</title>
</head>

<body>
	<%-- 화면 전체 영역 --%>
	<div id="container">
		<%@ include file="../inc/header.jsp"%>
		<%-- 본문 영역 --%>
		<div id="content">
			<div id="content_header">커뮤니티</div>
			<%-- 상단 카테고리 뎁스 영역 --%>
			<ol class="breadcrumb" id="breadcrumb">
				<li><a href="${pageContext.request.contextPath}">홈페이지</a></li>
				<li class="active">커뮤니티</li>
			</ol>
			<%-- 상단 카테고리 뎁스 영역 끝 --%>

			<%-- 게시판 본문 영역 - 공지사항 - bootstrap 사용 --%>
			<div class="table table_notice">
				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<td class="text-left">공지사항</td>
						</tr>
					</thead>
					<tbody id="add_tbody_notice" class="add_tbody_notice">
						<%-- JSTL 분기 처리 - 게시글 생성 --%>
						<c:choose>
							<%--조회결과가 없는 경우 --%>
							<c:when test="${output1 == null || fn:length(output1) == 0 }">
								<tr>
									<td>게시글이 없습니다. 게시글을 작성해 주세요.</td>
								</tr>
							</c:when>
							<%-- 조회결과가 있는 경우 --%>
							<c:otherwise>
								<%-- 조회 결과에 따른 반복 처리 --%>
								<c:forEach var="item" items="${output1 }" begin="0" end="4"
									varStatus="status">
									<%-- 출력을 위해 준비한 칼럼 --%>
									<c:set var="type" value="${item.type }" />
									<c:set var="head" value="${item.head }" />
									
									<%-- 상세페이지로 이동하기 위한 URL --%>
									<c:url value="/jsp/board_read.do" var="viewUrl">
										<c:param name="type" value="${item.type }" />
										<c:param name="bbs_board_id" value="${item.bbs_board_id }" />		
									</c:url>
									
									<c:if test="${type eq 1 }">
										<tr>
											<td class="desc"><a href="${viewUrl }">${head }</a></td>
										</tr>
									</c:if>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
				<%-- 공지사항 게시판 - 더보기 버튼 영역 --%>
				<div class="more">
					<a href="${pageContext.request.contextPath}/jsp/board_list.do?type=1&page=1"> 
						<button type="button" id="notice_more" class="btn btn-primary">더보기</button>
					</a>
				</div>
				<%-- 공지사항 게시판 - 더보기 버튼 영역 끝 --%>
			</div>
			<%-- 게시판 본문 영역 - 공지사항 - bootstrap 사용 끝 --%>

			<%-- 게시판 본문 영역 - 이벤트 - bootstrap 사용 --%>
			<div class="table table_event">
				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<td class="text-left">이벤트</td>
						</tr>
					</thead>
					<tbody id="add_tbody_event" class="add_tbody_event">
						<%-- JSTL 분기 처리 - 게시글 생성 --%>
						<c:choose>
							<%--조회결과가 없는 경우 --%>
							<c:when test="${output2 == null || fn:length(output2) == 0 }">
								<tr>
									<td>게시글이 없습니다. 게시글을 작성해 주세요.</td>
								</tr>
							</c:when>
							<%-- 조회결과가 있는 경우 --%>
							<c:otherwise>
								<%-- 조회 결과에 따른 반복 처리 --%>
								<c:forEach var="item" items="${output2 }" begin="0" end="4"
									varStatus="status">
									<%-- 출력을 위해 준비한 칼럼 --%>
									<c:set var="type" value="${item.type }" />
									<c:set var="head" value="${item.head }" />

									<%-- 상세페이지로 이동하기 위한 URL --%>
									<c:url value="/jsp/board_read.do" var="viewUrl">
										<c:param name="type" value="${item.type }" />
										<c:param name="bbs_board_id" value="${item.bbs_board_id }" />
										""
									</c:url>
									
									<c:if test="${type eq 2 }">
										<tr>
											<td class="desc"><a href="${viewUrl }">${head }</a></td>
										</tr>
									</c:if>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
				<%-- 이벤트 게시판 - 더보기 버튼 영역 --%>
				<div class="more">
					<a href="${pageContext.request.contextPath}/jsp/board_list.do?type=2&page=1">
						<button type="button" id="event_more" class="btn btn-primary">더보기</button>
					</a>
				</div>
				<%-- 이벤트 게시판 - 더보기 버튼 영역 끝 --%>
			</div>
			<%-- 게시판 본문 영역 - 이벤트 - bootstrap 사용 끝 --%>

			<%-- 게시판 본문 영역 - 이용후기 - bootstrap 사용 --%>
			<div class="table table_review">
				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<td class="text-left">이용 후기</td>
						</tr>
					</thead>
					<tbody id="add_tbody_review" class="add_tbody_review">
						<%-- JSTL 분기 처리 - 게시글 생성 --%>
						<c:choose>
							<%--조회결과가 없는 경우 --%>
							<c:when test="${output3 == null || fn:length(output3) == 0 }">
								<tr>
									<td>게시글이 없습니다. 게시글을 작성해 주세요.</td>
								</tr>
							</c:when>
							<%-- 조회결과가 있는 경우 --%>
							<c:otherwise>
								<%-- 조회 결과에 따른 반복 처리 --%>
								<c:forEach var="item" items="${output3 }" begin="0" end="4"
									varStatus="status">
									<%-- 출력을 위해 준비한 칼럼 --%>
									<c:set var="type" value="${item.type }" />
									<c:set var="head" value="${item.head }" />

									<%-- 상세페이지로 이동하기 위한 URL --%>
									<c:url value="/jsp/board_read.do" var="viewUrl">
										<c:param name="type" value="${item.type }" />
										<c:param name="bbs_board_id" value="${item.bbs_board_id }" />
									</c:url>
									
									<c:if test="${type eq 3 }">
										<tr>
											<td class="desc"><a href="${viewUrl }">${head }</a></td>
										</tr>
									</c:if>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
				<%-- 이용후기 게시판 더보기 버튼 영역 --%>
				<div class="more">
					<a href="${pageContext.request.contextPath}/jsp/board_list.do?type=3&page=1">
						<button type="button" id="fnq_more" class="btn btn-primary">더보기</button>
					</a>
				</div>
				<%-- 이용후기 게시판 더보기 버튼 영역 끝 --%>
			</div>
			<%-- 게시판 본문 영역 - 이용후기 - bootstrap 사용 끝 --%>

			<%-- 게시판 본문 영역 - 자주 묻는 질문 - bootstrap 사용 --%>
			<div class="table table_faq">
				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<td class="text-left">자주 묻는 질문</td>
						</tr>
					</thead>
					<tbody id="add_tbody_faq" class="add_tbody_faq">
						<%-- JSTL 분기 처리 - 게시글 생성 --%>
						<c:choose>
							<%--조회결과가 없는 경우 --%>
							<c:when test="${output4 == null || fn:length(output4) == 0 }">
								<tr>
									<td>게시글이 없습니다. 게시글을 작성해 주세요.</td>
								</tr>
							</c:when>
							<%-- 조회결과가 있는 경우 --%>
							<c:otherwise>
								<%-- 조회 결과에 따른 반복 처리 --%>
								<c:forEach var="item" items="${output4 }" begin="0" end="4"
									varStatus="status">
									<%-- 출력을 위해 준비한 칼럼 --%>
									<c:set var="type" value="${item.type }" />
									<c:set var="head" value="${item.head }" />

									<%-- 상세페이지로 이동하기 위한 URL --%>
									<c:url value="/jsp/board_read.do" var="viewUrl">
										<c:param name="type" value="${item.type }" />
										<c:param name="bbs_board_id" value="${item.bbs_board_id }" />
									</c:url>
									
									<c:if test="${type eq 4 }">
										<tr>
											<td class="desc"><a href="${viewUrl }">${head }</a></td>
										</tr>
									</c:if>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
				<%-- 자주 묻는 질문 게시판 더보기 버튼 영역 --%>
				<div class="more">
					<a href="${pageContext.request.contextPath}/jsp/board_list.do?type=4&page=1">
						<button type="button" id="fnq_more" class="btn btn-primary">더보기</button>
					</a>
				</div>
				<%-- 자주 묻는 질문 게시판 더보기 버튼 영역 끝 --%>
			</div>
			<%-- 게시판 본문 영역 - 자주 묻는 질문 - bootstrap 사용 끝 --%>

			<%-- 게시판 본문 영역 - 문의게시판 - bootstrap 사용 --%>
			<div class="table table_qna">
				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<td class="text-left">문의게시판</td>
						</tr>
					</thead>
					<tbody id="add_tbody_qna" class="add_tbody_qna">
						<%-- JSTL 분기 처리 - 게시글 생성 --%>
						<c:choose>
							<%--조회결과가 없는 경우 --%>
							<c:when test="${output5 == null || fn:length(output5) == 0 }">
								<tr>
									<td>게시글이 없습니다. 게시글을 작성해 주세요.</td>
								</tr>
							</c:when>
							<%-- 조회결과가 있는 경우 --%>
							<c:otherwise>
								<%-- 조회 결과에 따른 반복 처리 --%>
								<c:forEach var="item" items="${output5 }" begin="0" end="4"
									varStatus="status">
									<%-- 출력을 위해 준비한 칼럼 --%>
									<c:set var="type" value="${item.type }" />
									<c:set var="head" value="${item.head }" />

									<%-- 상세페이지로 이동하기 위한 URL --%>
									<c:url value="/jsp/board_read.do" var="viewUrl">
										<c:param name="type" value="${item.type }" />
										<c:param name="bbs_board_id" value="${item.bbs_board_id }" />	
									</c:url>
									
									<c:if test="${type eq 5 }">
										<tr>
											<td class="desc"><a href="${viewUrl }">${head }</a></td>
										</tr>
									</c:if>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
				<%-- 문의게시판 더보기 버튼 영역 --%>
				<div class="more">
					<a href="${pageContext.request.contextPath}/jsp/board_list.do?type=5&page=1">
						<button type="button" id="event_more" class="btn btn-primary">더보기</button>
					</a>
				</div>
				<%-- 문의게시판 더보기 버튼 영역 끝 --%>
			</div>
			<%-- 게시판 본문 영역 - 문의게시판 - bootstrap 사용 끝 --%>
		</div>
		<%-- 본문 영역 끝 --%>
		<%@ include file="../inc/footer.jsp"%>
	</div>
	<%-- 화면 전체 영역 끝 --%>

	<script type="text/javascript">
		/* $(function() { */
	</script>
</body>

</html>