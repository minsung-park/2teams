<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<%@ include file="../inc/head.jsp"%>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/customer_service_write.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/sweetalert/sweetalert2.min.css" />
	<title>1:1 문의</title>
</head>

<body>
	<div id="container">
		<%@ include file="../inc/header.jsp"%>
		<!-- 본문 영역 -->
		<div id="content">
			<!-- 글쓰기 제목 영역 -->
			<div id="content_header">1:1 문의</div>
			<!-- 상단 카테고리 뎁스 영역 -->
			<ol class="breadcrumb" id="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/jsp/account.do">마이페이지</a></li>
				<li><a href="${pageContext.request.contextPath}/jsp/customer_service.do">고객센터</a></li>
				<li class="active">1:1 글쓰기</li>
			</ol>
			
			<!-- 게시글 작성 제목 영역 -->
			<form method="post" action="${pageContext.request.contextPath }/jsp/customer_service_write.do" id="writeForm">
				<%-- <input type="hidden" name="user_name" value="${output.user_name }" /> --%>
				<input type="hidden" name="type" value="${type }" />
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th id="th_title" class="th_title">제목</th>
								<td>
									<input type="text" name=head id="board_write head" class="board_write" placeholder="제목을 입력해 주세요.">

								</td>
							</tr>
						</thead>

						<tbody>
							<tr>
								<th colspan="3" id="th_desc" class="th_desc">내용</th>
							</tr>
						</tbody>

					</table>
				</div>

				<!-- 게시글 작성 본문 영역 -->

				<div class="text_content" id="text_content ">
					<textarea id="write_content" class="ckeditor" name="content" placeholder="내용을 입력하세요."></textarea>
				</div>


				<!-- 버튼 영역 -->
				<div class="write_button">
					<button type="submit" id="save_button" class="btn btn-primary">등록</button>
					<button type="reset" id="cancel_button" class="btn btn-primary">취소</button>
				</div>
			</form>
			
			<!-- 글쓰기 영역
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th id="th_title" class="th_title">제목</th>
							<td><input type="text" id="board_write" class="board_write" placeholder="제목을 입력해 주세요."></td>
							<td><span class="glyphicon glyphicon-picture"></span></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th colspan="3" id="th_desc" class="th_desc">내용</th>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="text_content" id="text_content">
				<textarea id="write_content" class="ckeditor" name="write_content" placeholder="내용을 입력하세요."></textarea>
			</div>
			<div class="write_button">
				<button type="button" id="save_button" class="btn btn-primary">등록</button>
				<button type="button" id="cancel_button" class="btn btn-primary">취소</button>
			</div> -->
		</div>
		
		<%@ include file="../inc/footer.jsp"%>
	</div>
	<script src="http://cdn.ckeditor.com/4.14.1/basic/ckeditor.js"></script>
	<script src="${pageContext.request.contextPath}/assets/plugins/sweetalert/sweetalert2.min.js"></script>
	<script type="text/javascript">
		$(function () {
			$('#save_button')
				.click(
					function () {

						if ($(".board_write").val().trim() == ""
							|| $(".board_write").val().length > 20
							|| $(".board_write").val().length < 4) {
							swal('제목을 확인해주세요.',
								'제목은 4글자 이상 20자 이하까지 입력 가능합니다.',
								'question').then(function (result) {
									setTimeout(function () {
										$("#board_write").focus();
									}, 100);
								});

						} else if (CKEDITOR.instances['write_content']
							.getData().trim() == "") {
							swal('내용을 확인해주세요.', '내용을 입력해주세요.',
								'question')
								.then(
									function (result) {
										setTimeout(
											function () {
												CKEDITOR.instances.write_content
													.focus();
											}, 100);
									});

						} else {

							// 작성 완료, 취소 버튼에 따른 후속 처리 구현
							swal({
								title: '확인',
								text: "글을 작성하시겠습니까?",
								type: 'question',
								confirmButtonText: 'Yes',
								showCancelButton: true,
								cancelButtonText: 'No',
							})
								.then(
									function (result) {
										if (result.value) {
											swal(
												'확인',
												'작성이 완료되었습니다.<br/>자동으로 게시판으로 이동합니다.',
												'success');

											setTimeout(
												function () {
													history
														.back()
												}, 1000);
										}

									}); // end of .then(function(result){
						} // end of else {
					}); // end of $('#save_button').click(function(){
			$('#cancel_button').click(function () {
				swal({
					title: '취소',
					text: '게시판으로 돌아가시겠습니까?',
					type: 'question',
					confirmButtonText: 'yes',
					showCancelButton: true,
					cancelButtonText: 'No',
				}).then(function (result) {
					if (result.value) {
						history.back();
					}
				}); // end of .then(function(result){

			}); // end of $('#cancel_button').click(function(){

		}); // end of $(function(){
	</script>
</body>

</html>