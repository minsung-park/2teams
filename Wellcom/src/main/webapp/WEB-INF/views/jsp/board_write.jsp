<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->
<head>
	<%@ include file="../inc/head.jsp"%>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/board_common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/board_write.css">
	<title>(주)웰컴</title>
</head>

<body>
	<%-- 화면 전체 영역 --%>
	<div id="container">
		<%@ include file="../inc/header.jsp"%>
		
		<%-- 본문 영역 --%>
		<div id="content">
			<%-- 글쓰기 제목 영역 --%>
			<div id="content_header">글쓰기</div>
			<%-- 상단 카테고리 뎁스 영역  --%>
			<ol class="breadcrumb" id="breadcrumb">
				<li>
					<a href="${pageContext.request.contextPath}/jsp/board.do">커뮤니티</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath }/jsp/board_list.do?type=${type}">
						<%-- JSTL 분기 처리 - 글쓰기 페이지 제목 --%>
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
					</a>
				</li>
				<li class="active">글쓰기</li>
			</ol>
			<%-- 상단 카테고리 뎁스 영역 끝 --%>

			<%-- 게시글 작성 영역 --%>
			<form method="post" action="${pageContext.request.contextPath }/jsp/board_write_ok.do" id="writeForm" enctype="multipart/form-data">
				<%-- <input type="hidden" name="user_name" value="${output.user_name }" /> --%>
				<input type="hidden" name="type" value="${type }" />
				
				<%-- 게시글 작성 제목 영역 테이블 - bootstrap 사용 --%>
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
				<%-- 게시글 작성 제목 영역 테이블 - bootstrap 사용 끝 --%>

				<%-- 게시글 작성 본문 영역 --%>
				<div class="text_content" id="text_content ">
					<textarea id="write_content" class="ckeditor" name="content" placeholder="내용을 입력하세요."></textarea>
				</div>
				<div>
					<input type="file" name="photo" id="photo" />
				</div>
				<%-- 게시글 작성 본문 영역 끝 --%>

				<%-- 버튼 영역 --%>
				<div class="write_button">
					<button type="submit" id="save_button" class="btn btn-primary">등록</button>
					<button type="reset" id="cancel_button" class="btn btn-primary">취소</button>
				</div>
				<%-- 버튼 영역 끝 --%>
			</form>
			<%-- 게시글 작성 영역 끝 --%>
		</div>
		<%-- 본문 영역 --%>
		<%@ include file="../inc/footer.jsp"%>
	</div>
	<%-- 화면 전체 영역 끝 --%>

	<!-- Javascript -->
	<%-- CKEDITOR 5 버전 --%>
	<script src="${pageContext.request.contextPath }/assets/plugins/ckeditor5/build/ckeditor.js"></script>
	<%-- <script src="${pageContext.request.contextPath }/assets/js/CustomUploadAdapter.js"></script> --%>

	<script>
    // CKEditor5를 생성할 textarea 지정, CKEditor5 설정
    let editor;
    
	ClassicEditor
		.create( document.querySelector( '#write_content' ), {	
			toolbar: {
				items: [
					'heading',
					'|',
					'bold',
					'italic',
					'numberedList',
					'bulletedList',
					'|',
					'fontFamily',
					'fontSize',
					'fontColor',
					'|',
					'imageUpload',
					'|'
				]
			},
			language: 'ko',
			image: {
				toolbar: [
					'imageTextAlternative',
					'imageStyle:full',
					'imageStyle:side'
				]
			},
			table: {
				contentToolbar: [
					'tableColumn',
					'tableRow',
					'mergeTableCells'
				]
			},
			licenseKey: '',	
		}).then( newEditor => {
			editor = newEditor;
			editor.plugins.get("FileRepository").createUploadAdapter = function(loader){
				return new CustomUploadAdapter(loader, "${pageContext.request.contextPath}/assets/imageUpload", function(result){
					var fileSeq = isEmpty(result[0]) ? "noimage" : result[0];
					var imageUrl = "${pageContext.request.contextPath}/assets/imageUpload/" + fileSeq;
					return {"default" : imageUrl};
				}); // end return new if CustomUploadAdapter(loader, "${pageContext.request.contextPath}/assets/imageUpload", function(result){
			}; // end of function(loader){
			
			}).catch( error => {
				console.error( 'Oops, something went wrong!' );
				console.error( 'Please, report the following error on https://github.com/ckeditor/ckeditor5/issues with the build id and the error stack trace:' );
				console.warn( 'Build id: 38v9nbjuzp97-cvzpa373fdk' );
				console.error( error );
			}); // end of catch( error => {
 
 			 document.querySelector('#save_button').addEventListener('click', () => {
 				const editorData = editor.getData();
 			}); // end of  document.querySelector('#save_button').addEventListener('click', () => {
  			
    </script>

	<script type="text/javascript">
		$(function() {	
			// 등록 버튼 클릭시 이벤트 정의
			 $('#save_button').click(function(e){
				e.preventDefault();	// 기본 동작 수행 방지
			/* 	$(".ck-hidden").attr("name","photo");
				$(".ck-hidden").attr("id","photo"); */
			
				// 유효성 검사. 제목과 내용이 공백인지, 정해진 글자수 범위 내에 있는지 확인.
				var board_write =  $(".board_write").val(); 
				// 변수 board_write에 $(".board_write").val(); 할당
				
				// 만약 제목의 값이 공백이거나, 4글자 미만이거나 30글자 초과하는 경우
				if($(".board_write").val().trim() == "" || $(".board_write").val().length < 4 || $(".board_write").val().length > 30){
					swal('제목을 확인해주세요.', '제목은 4글자 이상 <br/> 30글자 이하로 입력해 주세요.','warning').then(function(result) {
						// 알림창 	확인 후 포커스 이동 - 전환 시간이 있으므로 딜레이를 줌		
						setTimeout(function() {
							$(".board_write").focus();}, 100);
					}); // end of swal('제목을 확인해주세요.', '제목은 4글자 이상 <br/> 30글자 이하로 입력해 주세요.','question').then(function(result) {	
						
					// 본문 영역의 값이 공백이거나, 값이 10글자 미만일 경우 - ckeditor가 기본적으로 8글자를 가지고 있음
				} else if (editor.getData().trim() == "" || editor.getData().length < 17 ){
					swal('내용을 확인해주세요.', '내용은 10글자 이상 <br/> 입력해 주세요.','warning').then(function(result) {
						// 알림창 	확인 후 포커스 이동 - 전환 시간이 있으므로 딜레이를 줌	
						setTimeout(function() {
							$(".ck-content").focus();}, 100);
					}); // end of swal('내용을 확인해주세요.', '내용은 10글자 이상 <br/> 입력해 주세요.','warning').then(function(result) {
					} else {
						// 유효성 검사를 다 통과하고 난 뒤의 sweetalert 
						swal({
							title : '등록',
							text : '글 작성을 완료 하시겠습니까??',
							type : 'question',
							confirmButtonText : 'yes',
							showCancelButton : true,
							cancelButtonText : 'No',
						}).then(function(result){
							if(result.value){
								$("#writeForm").submit();
							} // end of if(result.value){
						}); // end of then(function(result){
					} // end of else {
				}); // end of $('#save_button').click(function(e){
			
			$('#cancel_button').click(function() {
				// 취소 버튼을 눌렀을 때 이벤트 정의 
			 	swal({
					title : '취소',
					text : '게시판으로 돌아가시겠습니까?',
					type : 'question',
					confirmButtonText : 'yes',
					showCancelButton : true,
					cancelButtonText : 'No',
				}).then(function(result) {
					if (result.value) {
						history.back(); 
					} // end of if
				}); // end of .then(function(result){
			}); // end of $('#cancel_button').click(function(){
		}); // end of $(function(){
	</script>
</body>

</html>