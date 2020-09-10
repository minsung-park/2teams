<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello JSP</title>

	<style>
		.tab {
	list-style: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}
#tabcontent {
	display: block;
	background: #fff;
	padding: 8px 12px;
	color: #fff;
}

.tab a {
	display: inline-block;
	color: #333333;
	text-align: center;
	text-decoration: none;
	padding: 7px 8px;
	font-size: 11px;
	transition: 0.3s;
	text-decoration: none;
}


.tab li {
	float: left;
	display: inline-block;
	width: 50%;
	text-align: center;
	text-decoration: none;
	font-size: 13px;
	padding: 5px;
}

.checkbox label {
	color: #000;
}

.btn-primary {
	border: none;
}
	</style>
</head>
<body>
            <div id="login_form_box">
                <form id="login_complete_form" class="form-inline" role="form" method="post" action="../api/login2_ok.do">
                    <fieldset>
                        <div class="form-group">
                            <input type="text" name="user_name" id="user_id" class="form-control" placeholder="주문자명"/>
                        </div>
                        <div class="form-group">
                            <input type="password" name="user_number" id="user_number" class="form-control" placeholder="주문번호"/>
                        </div>
                        <div class="form-group">
                            <input type="password" name="user_pw" id="user_pw" class="form-control" placeholder="비회원 주문 패스워드"/>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox">로그인 상태 유지
                            </label>
                            <label>
                                <input type="checkbox">자동 로그인
                            </label>
                        </div>
                        <button type="submit" class="btn btn-primary">로그인</button>
                    </fieldset>
                </form>
            </div>
            
    

	

    <!-- ajaxForm-->
    <script src="http://code.jquery.com/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/plugins/ajax-form/jquery.form.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/plugins/validate/jquery.validate.min.js"></script>
    <!-- ajax-helper -->
    <script src="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.js"></script>
    
    <script type="text/javascript">
    $(function() {
		/** 유효성 검사 플러그인이 ajaxForm보다 먼저 명시되어야 한다. */
		$("#login_complete_form").validate({
			// alert 함수로 에러메시지 표시하기 옵션
			onkeyup: false,
			onclick: false,
			onfocusout: false,
			showErrors: function(errorMap, errorList) {
				if(errorList.length < 1) {
					return;
				}
				alert(errorList[0].message);
			},
			// 검사 규칙 정의
			rules: {
				user_name: "required",
				user_number: "required",
				user_pw: "required"
			},
			// 검사 조건을 충족하지 않을 경우의 메시지 내용
			messages: {
				user_name: "주문자이름을 입력하세요.",
				user_number: "주문번호를 입력하세요.",
				user_pw: "비밀번호를 입력하세요."
			}
		});

		$("#login_complete_form").ajaxForm({
			// submit 전에 호출된다.
			beforeSubmit: function (arr, form, options) {
				// validation 플러그인을 수동으로 호출하여 결과를 리턴한다.
				// 검사규칙에 위배되어 false가 리턴될 경우 submit을 중단한다.
        		return $(form).val();
    		},
    		success: function(json) {
				if (json.result == "FAIL") {
					alert("주문자명 및 주문번호, 비밀번호를 확인하세요.");
					return false;
				}

				alert("로그인 되셨습니다.");
				window.location.reload();
			}
		}); // end ajaxForm
	});
</script>
</body>
</html>