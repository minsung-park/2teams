<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->
<head>
<!-- 시각적 확인을 위한 css 적용 -->
<%@ include file="../inc/head.jsp"%>
<link rel="stylesheet" type="text/css" href="../css/payment.css">
<title>index</title>
<style type="text/css">

</style>
</head>
<body>
	<div id="container">
		<%@ include file="../inc/header.jsp"%>
		<div id="content">
			<img src="../img/loading.png">
		</div>

		<%@ include file="../inc/footer.jsp"%>
	</div>
	<!-- validate 플러그인 참조 -->
	<script src="../plugins/validate/jquery.validate.min.js"></script>
	<script src="../plugins/validate/additional-methods.min.js"></script>
	<script>
		setTimeout(function() {
			swal({
				title : '결제가 성공적으로 끝났습니다',
				type : 'info',
				confirmButtonColor : '#3085d6',
				cancelButtonColor : '#d33',
				confirmButtonText : '확인',

			}).then(function(result) {
				location.href = "../index.jsp";
			});
		}, 3000);
	</script>
</body>

</html>
