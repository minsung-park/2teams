<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->
<head>
<%@ include file="inc/head.jsp"%>
<!-- 시각적 확인을 위한 css 적용 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index.css" />
<title>index</title>
</head>
<body>
	<div id="container">
		<%@ include file="inc/header.jsp"%>
		<div id="content">
			<div class="contains">
				<div class="popular_item1">
					<div class="title">
						<h1>대표상품</h1>
					</div>
					<div class="item_box">
						<div class="scroll">
							<ul class="clearfix">
								<li class="product"><a href="${pageContext.request.contextPath}/jsp/assemble.do">
										<img src="${pageContext.request.contextPath}/assets/img/amd_sample.jpg" class="thumb" />
										<div class="desc">
											<span class="name">웰컴 초이스 No.01</span>
											<span class="price">325,850원</span>
										</div>
									</a></li>
								<li class="product"><a href="${pageContext.request.contextPath}/jsp/assemble.do">
										<img src="${pageContext.request.contextPath}/assets/img/intel_sample.jpg" class="thumb" />
										<div class="desc">
											<span class="name">웰컴 초이스 No.01</span>
											<span class="price">325,850원</span>
										</div>
									</a></li>
								<li class="product"><a href="${pageContext.request.contextPath}/jsp/assemble.do">
										<img src="${pageContext.request.contextPath}/assets/img/amd_sample.jpg" class="thumb" />
										<div class="desc">
											<span class="name">웰컴 초이스 No.01</span>
											<span class="price">325,850원</span>
										</div>
									</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="popular_item2 clear">
					<div class="title">
						<h1>인기상품</h1>
					</div>
					<div class="item_box">
						<ul>
							<c:forEach var="item" items="${item}" varStatus="status">
								<c:url value="jsp/product_info.do" var="viewUrl">
									<c:param name="data" value="${item.id}" />
								</c:url>
								<c:set var="thumb_length" value="${fn:length(item.thumb)}" />
								<c:set var="rootPath" value="${fn:indexOf(item.thumb, 'assets')}" />
								<li class="product"><a href="${viewUrl}">
										<img src="${fn:substring(item.thumb, rootPath, thumb_length)}" class="thumb" />
										<div class="desc">
											<span class="name">${item.name }</span>
											<span class="price">${item.price}</span>
										</div>
									</a></li>
							</c:forEach>
						</ul>
					</div>
					<button id="more">
						<!-- <a href="javascript:MoreItem()"> -->더보기</a>
					</button>
				</div>
			</div>
		</div>
		<%@ include file="inc/footer.jsp"%>
	</div>
	<!-- Javascript -->
	<script type="text/javascript">
		 $(function() {
			
		}); // end of $(function(){
	</script>
</body>

</html>