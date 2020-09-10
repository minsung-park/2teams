<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->

<head>
    <%@ include file="../inc/head.jsp"%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/find_id.css">
    <title>(주)웰컴</title>
</head>

<body>
    <div id="container">
        <%@ include file="../inc/header.jsp"%>s
        <div id="content">
                        <div id="title_area">
                            <h2>find id</h2>
                        </div>
                        <div id="title_text">
                            <p>
                                가입하신 방법에 따라 <strong>아이디 찾기</strong>가 가능합니다.
                            </p>
                        </div>
                        <form id="find_id_form">
                            <fieldset>

                                <ul>
                                    <li class="table_th">인증방법</li>
                                    <li class="table_td type_radio">
                                        <input type="radio" name="option"
                                        id="call_type" checked="checked">이메일
                                    </li>
                                </ul>
                                <ul>
                                    <li class="table_th">이름</li>
                                    <li class="table_td">
                                        <input type="text" id="find_user_name" value="">
                                    </li>
                                </ul>
                                <ul>
                                    <li class="table_th">이메일</li>
                                    <li class="table_td">
                                        <input type="text" id="find_user_email" value="">
                                    </li>
                                </ul>
                            </fieldset>
                        </form>
                        <div id="button_area">
                            <button type="submit" id="submit_button">
                                <a href="${pageContext.request.contextPath}/jsp/id_complete.do">확인</a>
                            </button>
                        </div>
            </div>
        <!-- 하단 공통 내용 -->
        <%@ include file="../inc/footer.jsp"%>
    </div>
    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script type="text/javascript">
                    $(function() {


     // 아이디 찾기 정규식 표현검사
        // $("#submit_button").click(function(e) {
        //     e.preventDefault();

        //     if ($("#find_user_name").val() == '' && $("#find_user_name").val == ) {
        //         alert("이름을 입력해주세요.");
        //     } else if ($("#find_user_email").val() == '') {
        //         alert("이메일을 입력해주세요.");
        //     }
        // });


        // 정규식 : 이름
        function chkName(user_name)
        {
          var reg_name = /^[가-힣]{2,4}$/;

          if(!reg_name.test(user_name))
          {
             return false;
          }

         return true;
        }

         // 정규식 : 이메일
         function validateEmail(user_email) {
            var reg_email = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
            if (!reg_email.test(user_email))
            {
                return false;
            }

            return true;
        }

         // 폼 전송
         $("#submit_button").click(function(e) {
          // 확인 : 이름
          $('#find_user_name, find_user_email').val($('#find_user_name, find_user_email').val().trim());
          if ($("#find_user_name").val() == '') {
            alert('이름을 입력하세요.');
            $('#find_user_name').focus();
            return false;
          } else if(!chkName($('#find_user_name').val()))
          {
             alert('이름을 확인하세요.');
             $('#find_user_name').focus();
             return false;
         } else if($("#find_user_email").val() == '') {
            alert('이메일을 입력하세요.');
            $('#find_user_email').focus();
            return false;
         } else if(!validateEmail($('#find_user_email').val()))
         {
            alert('이메일을 확인하세요.');
            $('#find_user_email').focus();
            return false;
        }
      }); // end of $(submit_button);

    }); // end of $(function(){
    </script>
</body>

</html>