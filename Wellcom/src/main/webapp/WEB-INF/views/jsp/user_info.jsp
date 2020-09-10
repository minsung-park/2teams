<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->
<head>
<%@ include file="../inc/head.jsp"%>
<!-- 시각적 확인을 위한 css 적용 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/user_info.css">
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/sweetalert/sweetalert2.min.css" />
<title>index</title>
</head>
<body>
	<div id="container">
		<%@ include file="../inc/header.jsp"%>
		<div id="content">
			<div id="content_header">회원정보</div>
			<ol class="breadcrumb" id="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/jsp/account.do">마이페이지</a></li>
				<li class="active">회원정보</li>
				<!-- 여기가 현재 페이지를 의미합니다. - active클래스 적용됨 -->
			</ol>
			<form class="form-horizontal" name="user_info" id="user_info">
				<div id="content_main">
					<form class="form-horizontal" role="form">
						<fieldset>
							<h4>개인정보</h4>
							<div id="info_header">
								<div id="info_header1" class="clear">
									<div id="usericon">
										<span class="glyphicon glyphicon-user"></span>
									</div>
									<div id="username">오정규</div>
									<span>님의 구매등급은</span>
									<div id="usergrade">[일반회원]</div>
									<span>입니다.</span>
								</div>
								<div id="info_header2" class="clear">
									<div id="point">
										<div id="point1" class="point">
											<span>적립금 : </span>
										</div>
										<div id="point2" class="point">
											<span> 3,000원</span>
										</div>
									</div>
									<div id=coupon>
										<div id="coupon1" class="coupon">
											<span>쿠폰 : </span>
										</div>
										<div id="coupon2" class="coupon">
											<span>50개</span>
										</div>
									</div>
								</div>
							</div>
							<br />
							<!-- 입력양식 -->
							<div id="content_main_form" class="clear">

								<div class="form-group">
									<label for="user_id" class="col-md-2 control-label">
										아이디 : </label>
									<div class="col-md-10">
										<input type="text" name="user_id" id="user_id"
											class="form-control" placeholder="ohjk2020" readonly>
									</div>
								</div>





								<div class="form-group">
									<label for="name" class="col-md-2 control-label"> 이름 :
									</label>
									<div class="col-md-10">
										<input type="text" name="user_name" id="user_name"
											class="form-control" placeholder="이름을 입력하세요.">
									</div>
								</div>
								<!--// 입력양식 -->
								<div class="form-group">
									<label for="birthdate" class="col-md-2 control-label">생년월일
										: </label>
									<div class="col-md-10">
										<input type="date" name="birthdate" class="form-control"
											id="birthdate">
									</div>
								</div>
								<!-- 입력양식 -->
								<div class="form-group">
									<label for="email" class="col-md-2 control-label">이메일
										주소 : </label>
									<div class="col-md-10">
										<input type="text" name="email" id="email"
											class="form-control" placeholder="이메일을 입력하세요.">
									</div>
								</div>
								<div class="form-group" id="mobile">
									<label for="mobile" class="col-md-2 control-label">전화번호
										: </label>
									<div class="col-md-10">
										<input type="text" class="form-control" name="mobile"
											id="mobile" placeholder="'-' 를 제외한 전화번호를 입력하세요.">
									</div>
								</div>
								<!--// 입력양식 -->
								<!-- 입력양식 -->
								<br />
								<h4>배송주소</h4>

								<!--// 입력양식 -->

								<div id="postcode">
									<label for="sample3_postcode" class="col-md-2 control-label"></label>
									<div class="col-md-10">
										<input type="text" name="sample3_postcode"
											id="sample3_postcode" class="form-control" placeholder="우편번호">
									</div>
									<div id="postcode_button">
										<input type="button" onclick="sample3_execDaumPostcode()"
											value="우편번호 찾기" class="btn btn-primary">
									</div>
								</div>


								<!-- 검색 화면  -->
								<div id="wrap" class="clear"
									style="display: none; border: 1px solid; width: 100%; height: 300px; margin: 5px 0; position: relative">
									<img
										src="https://t1.daumcdn.net/postcode/resource/images/close.png"
										id="btnFoldWrap"
										style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1"
										onclick="foldDaumPostcode()" alt="접기 버튼">
								</div>




								<!--// 입력양식 -->
								<!-- 입력양식 -->
								<div id="address" class="clear">
									<label for="sample3_address" class="col-md-2 control-label"></label>
									<div class="col-md-10">
										<input type="text" name="sample3_address" id="sample3_address"
											class="form-control" placeholder="주소">
									</div>
								</div>
								<div id="address1">
									<label for="sample3_detailAddress"
										class="col-md-2 control-label"></label>
									<div class="col-md-10">
										<input type="text" name="sample3_detailAddress"
											id="sample3_detailAddress" class="form-control"
											placeholder="상세주소">
									</div>
								</div>


								<br /> <br />

								<div id=password_group>
									<h4>비밀번호 설정</h4>
									<br />

									<div class="form-group">
										<label for="user_pw1" class="col-md-2 control-label">기존
											비밀번호 : </label>
										<div class="col-md-10">
											<input type="password" name="user_pw1" class="form-control"
												id="user_pw1" placeholder="*************">
										</div>
									</div>
									<!--// 입력양식 -->
									<div class="form-group">
										<label for="user_pw2" class="col-md-2 control-label">새로운
											비밀번호 : </label>
										<div class="col-md-10">
											<input type="password" name="user_pw2" class="form-control"
												id="user_pw2" placeholder="*************">
										</div>
									</div>
									<div class="form-group">
										<label for="user_pw3" class="col-md-2 control-label">비밀번호
											확인 : </label>
										<div class="col-md-10">
											<input type="password" name="user_pw3" class="form-control"
												id="user_pw3" placeholder="*************">
										</div>
									</div>
								</div>
								<br />
								<!-- 입력양식 -->
								<div class="form-group">
									<div class="col-md-offset-2 col-md-10">
										<button type="submit" class="btn btn-primary btn-block">변경
											사항 저장</button>
									</div>
								</div>

								<!--// 입력양식 -->
								<div class="form-group">
									<div class="col-md-offset-2 col-md-10">
										<button type="button" onclick="location.href='${pageContext.request.contextPath}/jsp/account.do'"
											class="btn btn-primary btn-block">확인</button>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-offset-2 col-md-10">
										<button type="button" onclick="location.href='${pageContext.request.contextPath}/jsp/account.do'"
											class="btn btn-primary btn-block">마이페이지 홈</button>
									</div>
								</div>

								<br />
						</fieldset>
					</form>
				</div>
			</form>
		</div>







	</div>
	<%@ include file="../inc/footer.jsp"%>
	</div>
	<!-- Javascript -->

	<script src="${pageContext.request.contextPath}/assets/plugins/validate/jquery.validate.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/plugins/validate/additional-methods.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/plugins/sweetalert/sweetalert2.min.js"></script>
	<script type="text/javascript">
		// 우편검색기능	

		var element_wrap = document.getElementById('wrap');

		function foldDaumPostcode() {
			// iframe을 넣은 element를 안보이게 한다.
			element_wrap.style.display = 'none';
		}

		function sample3_execDaumPostcode() {
			// 현재 scroll 위치를 저장해놓는다.
			var currentScroll = Math.max(document.body.scrollTop,
					document.documentElement.scrollTop);
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample3_postcode').value = data.zonecode;
							document.getElementById("sample3_address").value = addr;

							// iframe을 넣은 element를 안보이게 한다.
							// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
							element_wrap.style.display = 'none';

							// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
							document.body.scrollTop = currentScroll;
						},
						// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
						onresize : function(size) {
							element_wrap.style.height = size.height + 'px';
						},
						width : '100%',
						height : '100%'
					}).embed(element_wrap);

			// iframe을 넣은 element를 보이게 한다.
			element_wrap.style.display = 'block';

		}
		//우편검색기능완료

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
			$.validator.addMethod("kor", function(value, element) {
				return this.optional(element) || /^[ㄱ-ㅎ가-힣]*$/i.test(value);
			});

			$.validator.addMethod("phone", function(value, element) {
				return this.optional(element)
						|| /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/i.test(value)
						|| /^\d{2,3}\d{3,4}\d{4}$/i.test(value);
			});

			/** 입력검사 **/
			$("#user_info").validate({
				/** 입력검사 규칙 */
				rules : {
					// [아이디] 필수 + 알파벳,숫자 조합만 허용
					user_id : {
						required : true,
						alphanumeric : true
					},

					// [이름] 필수
					user_name : {
						required : true,
						kor : true
					},
					// [생년월일] 필수 + 날짜 형식 일치 필요
					birthdate : {
						required : true,
						date : true
					},
					// [이메일] 필수 + 이메일 형식 일치 필요
					email : {
						required : true,
						email : true
					},
					// [모바일] 필수
					mobile : {
						required : true,
						phone : true
					},

					sample3_postcode : {
						required : true,
						digits : true,
						minlength : 5

					},
					sample3_address : {
						required : true,
						maxlength : 30
					},

					sample3_detailAddress : {
						required : true,
						maxlength : 10
					},

					sample3_extraAddress : {
						maxlength : 10
					},

					// [비밀번호] 필수 + 글자수 길이 제한
					user_pw1 : {
						required : true,
						minlength : 4,
						maxlength : 20
					},

					// 새 비밀번호 입력
					user_pw2 : {
						minlength : 4,
						maxlength : 20
					},
					// 새 비밀번호 확인
					user_pw3 : {

						equalTo : "#user_pw2"
					}

				},

				/** 규칙이 맞지 않을 경우의 메시지 */
				messages : {
					user_id : {
						required : "아이디를 입력하세요.",
						alphanumeric : "아이디는 영어,숫자만 입력 가능합니다."
					},

					user_name : {
						required : "이름을 입력하세요.",
						kor : "이름은 한글만 입력 가능합니다."
					},

					birthdate : {
						required : "생년월일을 입력하세요.",
						date : "생년월일의 형식이 잘못되었습니다."
					},
					email : {
						required : "이메일을 입력하세요.",
						email : "이메일 형식이 잘못되었습니다."
					},
					mobile : {
						required : "연락처를 입력하세요.",
						phone : "연락처 형식이 잘못되었습니다."
					},

					sample3_postcode : {
						required : "우편번호를 입력해주세요",
						digits : "숫자만 입력가능합니다",
						minlength : "입력가능 숫자갯수가 초과하였습니다."

					},
					sample3_address : {
						required : "주소를 입력해주세요.",
						maxlength : "입력가능 글자수가 초과하였습니다."
					},
					sample3_detailAddress : {
						required : "상세주소를 입력해주세요",
						maxlength : "입력가능 글자수가 초과하였습니다."
					},
					sample3_extraAddress : {
						maxlength : "입력가능 글자수가 초과하였습니다."
					},

					user_pw1 : {
						required : "비밀번호를 입력해주세요.",
						minlength : "비밀번호는 4글자 이상 입력하셔야 합니다.",
						maxlength : "비밀번호는 최대 20자까지 가능합니다."
					},

					user_pw2 : {

						minlength : "비밀번호는 4글자 이상 입력하셔야 합니다.",
						maxlength : "비밀번호는 최대 20자까지 가능합니다."

					},
					user_pw3 : {
						required : "새 비밀번호를 입력하세요.",
						equalTo : "비밀번호 확인이 잘못되었습니다."
					},
				}
			}); // end validate()

		});
	</script>
</body>

</html>