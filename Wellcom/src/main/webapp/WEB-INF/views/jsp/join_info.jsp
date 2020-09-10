<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <%@ include file="../inc/head.jsp"%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/sweetalert/sweetalert2.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/join_info.css">
    <title>(주)웰컴</title>
</head>

<body>
    <div id="container">
        <%@ include file="../inc/header.jsp"%>
        <div id="content">
            <div id="title_area">
                <h2>join us</h2>
            </div>
            <div id="progress">
                <ul>
                    <li class="done">약관동의</li>
                    <li class="done">정보입력</li>
                    <li class="done">가입완료</li>
                </ul>
            </div>
        
        <!-- 가입폼 시작 -->
        <div id="button_type">
        <form class="form-horizontal" name="join_form" id="join_form" method="post" action="join_complete.jsp">
        <div class="form-group" id="subtitle_area">
            <ul>
                <li class="col-md-12 left">
                    <h4>기본정보</h4>
                    <span class='identify'>*필수</span>
                </li>
            </ul>
        </div>
        <div class="form-group">
		<label for='user_id' class="col-md-2">아이디 <span class='identify'>*</span></label>
		
			<div class="col-md-10">
			<input type="text" class="form-control" name="user_id" id="user_id" />
			<span class="input-group-btn ">
				<button class="btn btn-primary" type="button" id="id_uniq_check">중복검사</button>
			</span>
			</div>
		
		</div>
        <div class="form-group">
            <label for='user_pw' class="col-md-2">비밀번호 <span class='identify'>*</span></label>
            <div class="col-md-10">
                <input type="password" name="user_pw" id="user_pw" class="form-control" />
            </div>
        </div>
        <div class="form-group">
            <label for='user_pw' class="col-md-2">비밀번호 확인 <span class='identify'>*</span></label>
            <div class="col-md-10">
                <input type="password" name="user_pw_re" id="user_pw_re" class="form-control" />
            </div>
        </div>
        <div class="form-group">
            <label for='user_name' class="col-md-2">이름 <span class='identify'>*</span></label>
            <div class="col-md-10">
                <input type="text" name="user_name" id="user_name" class="form-control" />
            </div>
        </div>
        <div class="form-group">
            <label for='email' class="col-md-2">이메일 <span class='identify'>*</span></label>
            <div class="col-md-10">
                <input type="email" name="email" id="email" class="form-control" />
            </div>
        </div>
        <div class="form-group">
            <label for='tel' class="col-md-2">연락처 <span class='identify'>*</span></label>
            <div class="col-md-10">
                <input type="tel" name="tel" id="tel" class="form-control" />
            </div>
        </div>

        <div class="form-group" id="subtitle_area">
            <ul>
                <li class="col-md-12 left">
                    <h4>추가정보</h4>
                </li>
            </ul>
        </div>
        <div class="form-group">
            <label for='birthdate' class="col-md-2">생년월일 <span class='identify'>*</span></label>
            <div class="col-md-10">
                <input type="date" name="birthdate" id="birthdate" class="form-control" />
            </div>
        </div>
        <div id="button_style">
                <button type="submit" id="button_next">가입하기</button>
                <button type="button" id="button_cancel"><a href="${pageContext.request.contextPath}/jsp/login.do">취소</a></button>
        </div>
        
        </form>
        </div>
        </div>
		<!-- 하단 공통 내용 -->
        <%@ include file="../inc/footer.jsp"%>
    </div>
    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <!-- ajaxForm-->
    <script src="${pageContext.request.contextPath}/assets//plugins/ajax-form/jquery.form.min.js"></script> 
    <!-- sweetalert 플러그인 참조 -->
    <script src="${pageContext.request.contextPath}/assets//plugins/sweetalert/sweetalert2.min.js"></script>
    <!-- validate 플러그인 참조 -->
    <script src="${pageContext.request.contextPath}/assets//plugins/validate/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets//plugins/validate/additional-methods.min.js"></script>
   
    <script type="text/javascript">
        $(function() {
            /** 플러그인의 기본 설정 옵션 추가 */
            jQuery.validator.setDefaults({
                onkeyup:false,          // 키보드입력시 검사 안함
                onclick:false,          // <input>태그 클릭시 검사 안함
                onfocusout:false,       // 포커스가 빠져나올 때 검사 안함
                showErrors:function(errorMap, errorList){ // 에러 발생시 호출되는 함수 재정의
                    // 에러가 있을 때만..
                    if(this.numberOfInvalids()) {
                        // 0번째 에러 메시지에 대한 javascript 기본 alert 함수 사용
                        //alert(errorList[0].message);
                        // 0번째 에러 발생 항목에 포커스 지정
                        //$(errorList[0].element).focus();
                        
                        swal({
                            text: errorList[0].message, 
                            type: "error"
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
                return this.optional(element) ||
                    /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/i.test(value) ||
                    /^\d{2,3}\d{3,4}\d{4}$/i.test(value);
            });

            /** form태그에 부여한 id속성에 대한 유효성 검사 함수 호출 */
            $("#join_form").validate({
                /** 입력검사 규칙 */
                rules: {
                    // [아이디] 필수 + 알파벳,숫자 조합만 허용
                    user_id: { required: true, alphanumeric: true, minlength: 5 },
                    // [비밀번호] 필수 + 글자수 길이 제한
                    user_pw: { required: true, minlength: 4, maxlength: 20 },
                    // [비밀번호 확인] 필수 + 특정 항목과 일치 (id로 연결)
                    user_pw_re: { required: true, equalTo: "#user_pw" },
                    // [이름] 필수
                    user_name: { required: true, kor: true },
                    // [이메일] 필수 + 이메일 형식 일치 필요
                    email: { required: true, email: true },
                    // [연락처] 필수
                    tel: { required: true, phone: true },
                    // [생년월일] 필수 + 날짜 형식 일치 필요
                    birthdate: { required: true, date: true }
                },
                /** 규칙이 맞지 않을 경우의 메시지 */
                messages: {
                    user_id: {
                        required: "아이디를 입력하세요.",
                        minlength: "아이디는 4글자 이상 입력하셔야 합니다.",
                        alphanumeric: "아이디는 영어,숫자만 입력 가능합니다."
                    },
                    user_pw: {
                        required: "비밀번호를 입력하세요.",
                        minlength: "비밀번호는 4글자 이상 입력하셔야 합니다.",
                        maxlength: "비밀번호는 최대 20자까지 가능합니다."
                    },
                    user_pw_re: {
                        required: "비밀번호 확인값을 입력하세요.",
                        equalTo: "비밀번호 확인이 잘못되었습니다."
                    },
                    user_name: {
                        required: "이름을 입력하세요.",
                        kor: "이름은 한글만 입력 가능합니다."
                    },
                    email: {
                        required: "이메일을 입력하세요.",
                        email: "이메일 형식이 잘못되었습니다."
                    },
                    tel: {
                        required: "연락처를 입력하세요.",
                        phone: "연락처 형식이 잘못되었습니다."
                    },
                    birthdate: {
                        required: "생년월일을 입력하세요.",
                        date: "생년월일의 형식이 잘못되었습니다."
                    }
                }

            }); // end validate()
            
            /** 버튼 클릭시 이벤트 */
            var user_id_val = false;
    		$("#id_uniq_check").click(function() {
    			// 입력값을 취득하고, 내용의 존재여부를 검사한다.
    			user_id_val = $("#user_id").val();

    			if (!user_id_val) {	// 입력되지 않았다면?
    				alert("아이디를 입력하세요.");	// <-- 메시지 표시
    				$("#user_id").focus();			// <-- 커서를 강제로 넣기
    				return false;					// <-- 실행 중단
    			}

    			// 위의 if문을 무사히 통과했다면 내용이 존재한다는 의미이므로,
    			// 입력된 내용을 Ajax를 사용해서 웹 프로그램에게 전달한다.
    			$.post("${pageContext.request.contextPath}/api/id_unique_check.do", { user_id: user_id_val }, function(req) {
    				// 사용 가능한 아이디인 경우 --> req = { result: "OK" }
    				// 사용 불가능한 아이디인 경우 --> req = { result: "FAIL" }
    				if (req.result == 'OK') {					
    					alert("사용 가능한 아이디 입니다.");
    					user_id_val = true;
    				} else {
    					alert("사용할 수 없는 아이디 입니다.");
    					$("#user_id").val("");
    					$("#user_id").focus();
    				}
    			}); // end $.get
    		}); // end click


    		$("#join_form").ajaxForm({
    			// submit 전에 호출된다.
    			beforeSubmit: function (arr, form, options) {
    				// validation 플러그인을 수동으로 호출하여 결과를 리턴한다.
    				// 검사규칙에 위배되어 false가 리턴될 경우 submit을 중단한다.
            		return $(form).valid();
        		},
        		success: function() {
        			if (user_id_val == false) {
        				alert("아이디 중복검사를 해주세요.");
        				$("#id_uniq_check").focus();
        				return false;
        			} 
        				
        			// 확인, 취소버튼에 따른 후속 처리 구현
                    swal({
                        title: 'Congratulations!',                // 제목
                        text: "회원가입을 축하드립니다.",  // 내용
                        type: 'warning',              // 종류
                        confirmButtonText: 'Yes',     // 확인버튼 표시 문구
                        confirmButtonColor: '#DC3937', // 확인버튼 색상
                        showCancelButton: false,       // 취소버튼 표시 여부
                        cancelButtonText: 'No',       // 취소버튼 표시 문구
                    }).then(function(result) {        // 버튼이 눌러졌을 경우의 콜백 연결
                    	window.location = "join_complete.do";
                    });
    			}
    		}); // end ajaxForm
			
    		
        });
        </script>
</body>

</html>