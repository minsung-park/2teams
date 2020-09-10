<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->
<head>
<%@ include file="../inc/head.jsp"%>
<!-- 시각적 확인을 위한 css 적용 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/user_wallet_manage.css">
<title>index</title>
</head>
<body>
	<div id="container">
		<%@ include file="../inc/header.jsp"%>
		<div id="content">
			<div id="content_header">카드 관리</div>
			<ol class="breadcrumb" id="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/jsp/account.do">마이페이지</a></li>
				<li><a href="${pageContext.request.contextPath}/jsp/user_wallet.do">나의 지갑</a></li>
				<li class="active">카드 관리</li>
				<!-- 여기가 현재 페이지를 의미합니다. - active클래스 적용됨 -->
			</ol>
			<div id="content_main">




				<!--카드이미지 -->
				<div id="card">

					<span class="paymentCard_imageTab"> <svg id="card_img"
							class="paymentCard_imageTab_svg"
							xmlns="http://www.w3.org/2000/svg" width="70" height="70"
							viewBox="0 0 32 32">
   <path class="paymentCard_imageTab_svg-payment_path" fill="#111111"
								d="M29 4h-26c-1.65 0-3 1.35-3 3v18c0 1.65 1.35 3 3 3h26c1.65 0 3-1.35 3-3v-18c0-1.65-1.35-3-3-3zm-26 2h26c.542 0 1 .458 1 1v3h-28v-3c0-.542.458-1 1-1zm26 20h-26c-.542 0-1-.458-1-1v-9h28v9c0 .542-.458 1-1 1zm-25-6h2v4h-2zm4 0h2v4h-2zm4 0h2v4h-2z"></path>
</svg>
					</span>

				</div>


				<!-- 이름 -->
				
				<form id="user_wallet_manage" class="form-horizontal" name="user_wallet">
				<div class="form-group">
					<label for="name" class="col-md-2 control-label"> 이름 : </label>
					<div class="col-md-10">
						<input type="text" name="user_name" id="user_name"
							class="form-control" placeholder="Jeongkyu Oh">
					</div>
				</div>
				<!-- 카드번호 -->
				<div class="form-group">
					<label for="card_number" class="col-md-2 control-label">
						카드번호 : </label>
					<div class="col-md-10">
						<input type="text" name="card_number" id="card_number"
							class="form-control" placeholder="1234****2344****" disabled>
					</div>
				</div>

				<!-- 만기일 -->
				<label for="expirydate" class="col-md-2 control-label">카드만료일 </label>
				<div class="form-group" id="expirydate">
					
					<div id="expirydate1" class="col-md-10">
						<label for="expirydate_select1">월 : </label> <select
							class="form-control" id="expirydate_select1">
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
					</div>


					<div id="expirydate2" class="col-md-10">
						<label for="expirydate_select2">년도 : </label> <select
							class="form-control" id="expirydate_select2">
							<option>2020</option>
							<option>2021</option>
							<option>2022</option>
							<option>2023</option>
							<option>2024</option>
							<option>2025</option>
							<option>2026</option>
							<option>2027</option>
							<option>2028</option>
							<option>2029</option>
							<option>2030</option>
							<option>2031</option>
						</select>
					</div>
				</div>

</div>



<!-- 버튼 -->
						<div id="content_bottom">
<!-- 입력양식 -->
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <button type="submit" class="btn btn-primary btn-block">변경 사항 저장</button>
                            </div>
                        </div>
 <!--// 입력양식 -->
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <button type="button" onclick="location.href='${pageContext.request.contextPath}/jsp/user_wallet.do'"class="btn btn-primary btn-block">확인</button>
                            </div>
                        </div>
                 
</div>



	</form>

		</div>
		  
		<%@ include file="../inc/footer.jsp"%>




	</div>

	<script type="text/javascript">
	
	
	
	$(function() {

		/** 플러그인의 기본 설정 옵션 추가 */
		jQuery.validator.setDefaults({
			onkeyup : false, // 키보드입력시 검사 안함
			onclick : false, // <input>태그 클릭시 검사 안함
			onfocusout : false, // 포커스가 빠져나올 때 검사 안함
			showErrors : function(errorMap, errorList) { // 에러 발생시 호출되는 함수 재정의
				// 에러가 있을 때만..
				if (this.numberOfInvalids()) {
					// 0번째 에러 메시지에 대한 javascript 기본 alert 함수 사용
					//alert(errorList[0].message);
					// 0번째 에러 발생 항목에 포커스 지정
					//$(errorList[0].element).focus();

					swal({
						title : "에러",
						text : errorList[0].message,
						type : "error"
					}).then(function(result) {
						// 창이 닫히는 애니메이션의 시간이 있으므로,
						// 0.1초의 딜레이 적용 후 포커스 이동
						setTimeout(function() {
							$(errorList[0].element).val('');
							$(errorList[0].element).focus();
						}, 100);
					});
				}
			}
		});

		/** 유효성 검사 추가 함수 */
		$.validator.addMethod("eng", function(value, element) {
			return this.optional(element) || /^[a-zA-Z]*$/i.test(value);
		});

		/** 입력검사 **/
		$("#user_wallet_manage").validate({
			/** 입력검사 규칙 */
			rules : {
				// [이름] 필수
				user_name : {
					required : true,
					eng : true
				},
			
				
				

			},

			/** 규칙이 맞지 않을 경우의 메시지 */
			messages : {

				user_name : {
					required : "이름을 입력하세요.",
					eng : "이름은 영문만 입력 가능합니다."
				},

			}
		}); // end validate()

	});
	
	
	
		
	</script>
</body>

</html>