<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->

<head>
    <%@ include file="../inc/head.jsp"%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/join.css">
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
            <div id="agree">
                <div id="agree_all">
                    <h3>전체 동의</h3>
                    <span class="location">
                        <input type="checkbox" id="all_check">
                        <label for="">
                            이용약관 및 개인정보수집 및 이용,<br>
                            쇼핑정보 수신(선택)에 모두 동의합니다.
                        </label>
                    </span>
                </div>
                <nav class="list-group">
                    <!-- 목록의 아이템 -->
                    <!-- 목록의 아이템 + badge 사용 -->
                    <div class="list-group-item">
                        <input type="checkbox" id="ok_no1" class="check" value="1">
                        <label for="ok_no">
                            이용약관 동의
                            <span class="label label-danger">필수</span>
                        </label>
                        <button id="agree_page_Btn" class="btn">전체 보기</button>
                        <!-- 회원가입 확인 Modal-->
                        <div class="modal fade" id="pop_Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                            <button type="button" class="close x_hide" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        </button>
                                        <h3 class="modal-title" id="exampleModalLabel">이용약간 동의</h5>
                                    </div>
                                    <div class="modal-body">
                                        <div class="contents">
                                            <p>
                                                <h4>제1조 목적</h3><br>
                                                    이 약관은 주식회사 에버프리(전자상거래 사업자)가 운영하는 에버프리 (이하 “몰”)에서 제공하는 인터넷 관련 서비스(이하 “서비스)를 이용함에 있어 몰과 이용자의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.
                                                    PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.
                                            </p><br>
                                            <p>
                                                <h4>제 2 조 (정의)</h4><br>
                                                ① '몰'이란 회사가 설립 한 가상의 사업장으로 컴퓨터 및 정보 통신 시설을 이용하여 상품이나 서비스를 교환하여 이용자에게 상품과 서비스를 제공하는 것을 말합니다. 이 용어는 사이버 몰을 운영하는 회사로 정의 될 수도 있습니다.
                                                ② '이용자'란이 약관에 따라 '몰'이 제공하는 서비스를 이용하기 위해 '몰'에 접속 한 회원 및 비회원을 말합니다.
                                                ③ '회원'은 회원 가입을하여 '몰'이 제공하는 서비스를 이용하는 이용자를 말합니다.
                                                ④ '비회원'이란 '몰'이 제공하는 서비스를 가입없이 사용하는 이용자를 말합니다.
                                            </p><br>
                                            <p>
                                                <h4>3 조 (이용 약관의 표시)</h4><br>
                                                ① "몰"은 이용자가 쉽게 알 수 있도록 본 약관의 내용, 회사 명 및 대표자, 사업장 (고객 불만 처리 주소 등)을 표시하여야합니다. ), 전화 번호, 팩스 번호, 이메일 주소, 사업자 라이센스 번호, 전자 상거래 허가 번호 및 '몰'메인 페이지에있는 개인 정보 관리자의 이름. 이 약관의 내용 만 링크 페이지를 통해 표시 할 수 있습니다.
                                                ② '몰'은 본 약관에 대한 최종 동의에 앞서 별도의 링크 또는 팝업 화면을 제공하여 해지 권한, 배송 책임, 환불 조건 및 기타 중요한 사항에 대한 사용자의 확인을 얻습니다.
                                                ③ "몰"은 "전자 상거래 소비자 보호에 관한 법률", "약관 규정", "전자 상거래 및 전자 문서에 관한 프레임 워크 법", "전자 금융 거래"등 관련 법령을 위반하지 않고 허용 범위 내에서 수정을 할 수 있습니다. 법」, 「전자 서명법」, 「정보 통신망 이용 촉진에 관한 법률」, 「문간 판매법」, 「소비자에 관한 프레임 워크 법」및 그 밖의 관련 소비자 보호법.
                                                ④ "몰"은 효력 발생 일과 약관의 변경 사유를 명시하고 효력 발생 일 전날까지 효력 발생 일 전 7 일 동안 초기 화면에 게시하여야합니다.
                                                개정이 사용자의 불이익으로 수정 된 경우, '몰'은 통지를 위해 최소 30 일의 유예 기간을 부여해야합니다. 이 경우 '몰'은 '이해하기 쉬운'변경 사항을 '이해하기 쉬운'방식으로 명확히해야합니다.
                                                ⑤``몰 ''이 약관에 대한 수정을하는 경우, 수정 된 약관은 발효 일 이후에 체결 된 계약에만 적용되며, 효력 발생 일 이전에 체결 된 모든 계약은 기존 약관에 따라 유지됩니다. 단, 계약서에 이미 서명 한 이용자가 개정을 원할 경우에는 ③ 항에 기재된 통고 기간 내에 이용자는 '몰'에게 의도를 송부하고 '몰'로부터 동의를 얻을 수 있습니다. 그에 따라 적용됩니다.
                                                ⑥ 본 약관에 명시되고 해석되지 않은 정보는 공정 거래위원회가 제공하는 전자 상거래 거래 지침 및 관련 소비자 보호법 및 기타 해당 소비자 보호법 및 T & C 법 규정에 따라야합니다.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <a class="btn" id="modalY" href="#">동의합니다</a>
                                        <button class="btn" type="button" data-dismiss="modal">취소</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <input type="checkbox" id="ok_no2" class="check" value="1">
                        <label for="ok_no">
                            개인정보 수집 동의
                            <span class="label label-danger">필수</span>
                        </label>
                        <button id="agree_page_Btn2" class="btn">전체 보기</button>
                        <!-- 회원가입 확인 Modal-->
                        <div class="modal fade" id="pop_Modal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                            <button type="button" class="close x_hide" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        </button>
                                        <h3 class="modal-title" id="exampleModalLabel">개인정보 수집 동의</h5>
                                    </div>
                                    <div class="modal-body">
                                    	<div class="contents">
                                            <p>
                                                <h4>가. 개인정보의 수집 및 이용 목적</h3><br>
                                                    ① 국가공간정보포털은 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며, 이용 목적이 변경되는 경우에는 개인정보 보호법 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.
                                            </p><br>
                                            <p>
                                                <h4>나. 수집하는 개인정보의 항목</h4><br>
                                                ① 국가공간정보포털 회원정보(필수): 이름, 이메일(아이디), 비밀번호
                                            </p><br>
                                            <p>
                                                <h4>다. 개인정보의 보유 및 이용기간</h4><br>
                                                ① 국가공간정보포털은 법령에 따른 개인정보 보유ㆍ이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의 받은 개인정보 보유ㆍ이용기간 내에서 개인정보를 처리ㆍ보유합니다.
                                            </p><br>
                                            <p>
                                                <h4>라. 동의 거부 권리 및 동의 거부에 따른 불이익</h4><br>
                                                위 개인정보의 수집 및 이용에 대한 동의를 거부할 수 있으나, 동의를 거부할 경우 회원 가입이 제한됩니다.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <a class="btn" id="modalY2" href="#">동의합니다</a>
                                        <button class="btn" type="button" data-dismiss="modal">취소</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <input type="checkbox" id="ok_no3" class="check" value="1">
                        <label for="ok_no">
                            쇼핑정보 수집 동의
                            <span class="label label-warning">선택</span>
                        </label>
                        <button id="agree_page_Btn3" class="btn">전체 보기</button>
                        <!-- 회원가입 확인 Modal-->
                        <div class="modal fade" id="pop_Modal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                            <button type="button" class="close x_hide" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        </button>
                                        <h3 class="modal-title" id="exampleModalLabel">마케팅/홍보의 수집 및 이용 동의</h5>
                                    </div>
                                    <div class="modal-body">
                                    	<div class="contents">
                                            <p>
                                                <h4>1. 개인정보의 수집 및 이용 목적</h3><br>
                                                    신규 서비스 개발 및 마케팅ㆍ광고에의 활용<br>
- 신규 서비스 개발, 이벤트 및 광고성 정보 제공 및 참여기회 제공, 접속 빈도 등 회원의 서비스 이용에 대한 통계
                                            </p><br>
                                            <p>
                                                <h4>2. 수집하는 개인정보의 항목</h4><br>
                                                필수항목 : 이름<br>
선택항목 : 이메일, 연락처(휴대전화번호, 유선전화번호 중 1개 선택)
                                            </p><br>
                                            <p>
                                                <h4>3. 개인정보의 보유 및 이용기간</h4><br>
                                                이용목적의 달성 후 지체없이 파기
                                            </p><br>
                                            <p>
                                                <h4>4. 동의거부권 및 불이익</h4><br>
                                               개인정보의 마케팅/홍보의 수집 및 이용 동의를 거부하시더라도 회원 가입 시 제한은 없습니다. 다만, 마케팅 활용 서비스 안내 및 참여에 제한이 있을 수 있습니다.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <a class="btn" id="modalY3" href="#">동의합니다</a>
                                        <button class="btn" type="button" data-dismiss="modal">취소</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="agree_button">
                        <button type="submit" id="button_next">다음</button>
                        <button type="submit" id="button_cancel"><a href="${pageContext.request.contextPath}/jsp/login.do">취소</a></button>
                    </div>
                    <!-- 목록의 아이템 + badge 사용 -->
                    <!-- <a href="#" class="list-group-item">
                    개인정보처리방침 동의
                    <span class="label label-danger">필수</span>
                    <span class="badge">전체보기</span>
                </a> -->
                    <!-- 목록의 아이템 + badge 사용 + label 사용 -->
                    <!-- <a href="#" class="list-group-item">
                    쇼핑정보 수신 동의
                    <span class="label label-warning">선택</span>
                    <span class="badge">전체보기</span>
                </a> -->
                </nav>
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
             $("#all_check").change(function() {
                $(".check").prop('checked', $(this).prop('checked'));
            });

            $(".x_hide").click(function() {
                $(".modal-backdrop").fadeOut(200);
                $('#pop_Modal, #pop_Modal2, #pop_Modal3').modal("hide");
            });

            $('#agree_page_Btn').click(function(e) {
                e.preventDefault();
                $('#pop_Modal').modal("show");

                $("#modalY").click(function() {
                    $("#ok_no1").prop('checked', true);
                    $('#pop_Modal, .modal-backdrop').fadeOut(200).modal("hide");
                });

            });

            $('#agree_page_Btn2').click(function(e) {
                e.preventDefault();
                $('#pop_Modal2').modal("show");


                $("#modalY2").click(function() {
                    $("#ok_no2").prop('checked', true);
                    $('#pop_Modal2, .modal-backdrop').fadeOut(200).modal("hide");;

                });
            });


            $('#agree_page_Btn3').click(function(e) {
                e.preventDefault();
                $('#pop_Modal3').modal("show");

                $("#modalY3").click(function() {
                    $("#ok_no3").prop('checked', true);
                    $('#pop_Modal3, .modal-backdrop').fadeOut(200).modal("hide");;

                });
            });

            $("#button_next").click(function() {
                if ($("#ok_no1").prop('checked') && $("#ok_no2").prop('checked')) {
                    window.open("join_info.do", "_self");
                    //alert("작동 잘됨");
                } else {
                    alert("필수항목을 체크해주세요.");
                }
            });
        });
        </script>
</body>

</html>