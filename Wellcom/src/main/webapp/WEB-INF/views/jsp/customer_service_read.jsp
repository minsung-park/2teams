<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<%@ include file="../inc/head.jsp"%>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/customer_service_read.css">
	<title>(주)웰컴</title>
</head>

<body>
	<div id="container">
		<%@ include file="../inc/header.jsp"%>
		<!-- 본문 영역 -->
		<div id="content">
			<!-- 후기 게시판 제목 영역 -->
			<div id="content_header">1:1 문의</div>
			<!-- 상단 카테고리 뎁스 영역 -->
			<ol class="breadcrumb" id="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/jsp/account.do">마이페이지</a></li>
				<li><a href="${pageContext.request.contextPath}/jsp/board.do">고객센터</a></li>
				<li class="active">내가 쓴 글</li>
				<!-- 여기가 현재 페이지를 의미합니다. - active클래스 적용됨 -->
			</ol>
			<!-- 게시판 본문 영역 -->
			<div class="table-responsive">
				<table id="search_table" class="table table-striped table-bordered">
					<thead>
						<tr>
							<td class="text-center">No</td>
							<td class="text-center">글제목</td>
						</tr>
					</thead>
					<tbody id="add_tbody" class="add_tbody">
					<c:forEach var="item" items="${list }">
						<tr>
							<td><c:out value = "${item.bbs_board_id}" /></td>
							<td><c:out value = "${item.head}"/></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<!-- 글쓰기 -->
			<div id="writer">
				<a href="${pageContext.request.contextPath}/jsp/customer_service_write.do" id="write" class="write">
					<button type="button" class="btn btn-primary write">글쓰기</button>
				</a>
			</div>
			<div class="text-center">
				<ul class="pagination pager" id="pager">
					<li class="disabled"><a href="#">&lt;</a></li>
					<li class="active">
						<span>1<span class="sr-only">(current)</span></span>
					</li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">&gt;</a></li>
				</ul>
			</div>

			<!-- 검색 영역 -->
			<div id="search">
				<form class="navbar-form navbar-right" role="search">
					<div class="form-group">
						<input type="text" id="keyword" class="form-control" placeholder="Search">
					</div>
					<!-- <button type="submit" class="btn btn-default">검색</button> -->
				</form>
			</div>
		</div>

		<%@ include file="../inc/footer.jsp"%>
	</div>
	<!-- Javascript -->
	<script src="${pageContext.request.contextPath}/assets/plugins/handlebars/handlebars-v4.0.11.js"></script>
	<script id="category_item_tmpl" type="text/x-handlebars-template">


	{{#item}}

	<tr>
<td class="listtd">{{commas no}}</td>
<td class="desc listtd">{{desc}}</td>
<td class="listtd">{{commas view}}</td>

</tr>

	{{/item}}
</script>

	<script type="text/javascript">
		$(function () {
			Handlebars.registerHelper('commas', function (value) {
				return value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			});

			$('.desc').click(function () {
				window.open('customer_service_read.jsp', '_self');

			}); // end of $('.desc').click(function(){
		}); // end of $(function(){

		$.getJSON("../json/customer_service_read.json", function (item) {

			var template = Handlebars.compile($("#category_item_tmpl").html());
			var html = template(item);
			$(".add_tbody").append(html);
			$('.desc').click(function () {
				window.open('customer_service_read.jsp', "_self");
			}); // end of $('.desc').click(function(){

		}); // end of $.getJSON("../json/customer_service_read.json",function(item){

		$("#pager li").click(function (e) {
			e.preventDefault();
			$(this).addClass("active");
			$("#pager li").not(this).removeClass("active");

		}); // end of $("#pager li").click(function(){
	</script>
</body>

</html>