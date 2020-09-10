var user = {
	minsung : {
		"user_name" : "박민성",
		"post_number" : "10472",
		"main_address" : "경기 고양시 덕양구 화정동 858",
		"sub_address" : "달빛마을 110동 2004호",
		"phone_number1" : "010",
		"phone_number2" : "8606",
		"phone_number3" : "6993",
		"email_address1" : "altp12",
		"email_address2" : "hanmail.net"
	},
	ezen : {
		"user_name" : "이젠IT컴퓨터학원",
		"post_number" : "10472",
		"main_address" : "서울 서초구 서초대로 77길 55",
		"sub_address" : "에이프로 스퀘어 3층",
		"phone_number1" : "02",
		"phone_number2" : "532",
		"phone_number3" : "6509",
		"email_address1" : "j.purplerose",
		"email_address2" : "gmail.com"
	}
}

function collap() {
	var inputid = $("input:radio[name='group1']:checked").val();

	$('#payment1').collapse('show');
	$('#payment2').collapse('show');
	$('#payment3').collapse('show');
	$('#payment4').collapse('show');
	// $('#payment' + id).collapse('show');
}
$('#collapsePayone,#collapsePaytwo,#collapsePaythree,#collapsePayfour').on(
		'change', function(e) {
			e.preventDefault();
			var inputid = $("input:radio[name='group1']:checked").val();

			collap(inputid);

		});
$(document).on('submit', '#changing-form', function(e) {
	// 페이지 이동이 방지된다.
	// -> form 내부의 스크립트를 완성한 후, 제거
	e.preventDefault();

	var select = $('#changeAddress').val();
	if (select != "") {
		$("#receiver_name").val(user[select].user_name);
		$("#wellcom_postcode").val(user[select].post_number);
		$("#wellcom_address").val(user[select].main_address);
		$("#wellcom_detailAddress").val(user[select].sub_address);
		$("#phone_number1").val(user[select].phone_number1);
		$("#phone_number2").val(user[select].phone_number2);
		$("#phone_number3").val(user[select].phone_number3);
		$("#email1").val(user[select].email_address1);
		$("#email3").val(user[select].email_address2);

		if ($("#phone_number1").val() == null) {
			$("#phone_number1").val('direct');
			$("#phone_number1_direct").val(user[select].phone_number1);
			$("#phone_number1_direct").show();
		} else {
			$("#phone_number1_direct").hide();
		}

		if ($("#email3").val() == null) {
			$("#email3").val('direct');
			$("#email3_direct").val(user[select].email_address2);
			$("#email3_direct").show();
		} else {
			$("#email3_direct").hide();
		}
	} else {
		$("#receiver_name").val("");
		$("#wellcom_postcode").val("");
		$("#wellcom_address").val("");
		$("#wellcom_detailAddress").val("");
		$("#phone_number1").val("");
		$("#phone_number2").val("");
		$("#phone_number3").val("");
		$("#email1").val("");
		$("#email3").val("");
	}

	$("#address_set").modal('hide');
});

$('#btn_payment_check').on(
		'click',
		function() {
			if ($("#receiver_name").val() == "") {
				validateSwal("받는사람 이름을 작성해주세요.");
				return false;
			}
			if ($("#wellcom_postcode").val() == ""
					|| $("#wellcom_address").val() == "") {
				validateSwal("주소를 검색해 주세요.");
				return false;
			}

			if ($("#wellcom_detailAddress").val() == "") {
				validateSwal("상세주소를 입력해주세요.");
				return false;
			}
			if ($("#phone_number1").val() == ""
					|| $("#phone_number2").val() == ""
					|| $("#phone_number3").val() == "") {
				validateSwal("전화번호를 정확히 입력해주세요.");
				return false;
			}

			if ($("#email1").val() == "" || $("#email3").val() == "") {
				validateSwal("이메일 주소를 정확히 입력해주세요.");
				return false;
			}

			if ($("#agree1").is(":checked") == false) {
				validateSwal("구매 조건 및 결제진행에 동의해주세요.");
				return false;
			}

			if ($("#agree2").is(":checked") == false) {
				validateSwal("쇼핑몰 이용약관에 동의해주세요.");
				return false;
			}
			swal({
				title : '이대로 결제하시겠습니까?',
				type : 'question',
				showCancelButton : true,
				confirmButtonColor : '#3085d6',
				cancelButtonColor : '#d33',
				confirmButtonText : '확인',
				cancelButtonText : '취소'
			}).then(function(result) {
				location.href = "payment_complete.jsp";
			});
		});

function validateSwal(valTitle) {
	swal({
		title : valTitle,
		type : 'warning',
		confirmButtonColor : '#3085d6',
		confirmButtonText : '확인',
	})
}
$(function() {
	$("input:checkbox[class='agreeCheck']").on("change", function() {
		$("#allCheck2").prop("checked", false);
	});
	// 직접입력 인풋박스 기존에는 숨어있다가
	$("#phone_number1_direct").hide();
	$("#phone_number1").on('change', function() {
		// 직접입력을 누를 때 나타남
		if ($("#phone_number1").val() == "direct") {
			$("#phone_number1_direct").show();
		} else {
			$("#phone_number1_direct").hide();
			$("#phone_number1_direct").val("");
		}
	});

	// 직접입력 인풋박스 기존에는 숨어있다가
	$("#email3_direct").hide();
	$("#email3").on('change', function() {
		// 직접입력을 누를 때 나타남
		if ($("#email3").val() == "direct") {
			$("#email3_direct").show();
		} else {
			$("#email3_direct").hide();
		}
	});

	// 직접입력 인풋박스 기존에는 숨어있다가
	$("#Message_direct").hide();
	$("#message_select").on('change', function() {
		// 직접입력을 누를 때 나타남
		if ($("#message_select").val() == "direct") {
			$("#Message_direct").show();
		} else {
			$("#Message_direct").hide();
		}
	});

	// 직접입력 인풋박스 기존에는 숨어있다가
	$("#card-direct").hide();
	$("#card_select").on('change', function() {
		// 직접입력을 누를 때 나타남
		if ($("#card_select").val() == "direct") {
			$("#card-direct").show();
		} else {
			$("#card-direct").hide();
		}
	});

	$("#allCheck2").on('click', function() {
		if ($("#allCheck2").prop("checked")) {
			$("input:checkbox[class='agreeCheck']").prop("checked", true);
		} else {
			$("input:checkbox[class='agreeCheck']").prop("checked", false);
		}
	});

	collap();
});

// 우편번호 찾기 찾기 화면을 넣을 element
var element_wrap = document.getElementById('wrap');

function foldDaumPostcode() {
	// iframe을 넣은 element를 안보이게 한다.
	element_wrap.style.display = 'none';
}

function wellcom_execDaumPostcode() {
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

					// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을
						// 경우
						addr = data.roadAddress;
					} else { // 사용자가 지번 주소를 선택했을 경우(J)
						addr = data.jibunAddress;
					}

					// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
					if (data.userSelectedType === 'R') {
						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraAddr += (extraAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraAddr !== '') {
							extraAddr = ' (' + extraAddr + ')';
						}
						// 조합된 참고항목을 해당 필드에 넣는다.
						document.getElementById("wellcom_extraAddress").value = extraAddr;

					} else {
						document.getElementById("wellcom_extraAddress").value = '';
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('wellcom_postcode').value = data.zonecode;
					document.getElementById("wellcom_address").value = addr;
					// 커서를 상세주소 필드로 이동한다.
					document.getElementById("wellcom_detailAddress").focus();

					// iframe을 넣은 element를 안보이게 한다.
					// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
					element_wrap.style.display = 'none';

					// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
					document.body.scrollTop = currentScroll;
				},
				// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의
				// 높이값을
				// 조정한다.
				onresize : function(size) {
					element_wrap.style.height = size.height + 'px';
				},
				width : '100%',
				height : '100%'
			}).embed(element_wrap);

	// iframe을 넣은 element를 보이게 한다.
	element_wrap.style.display = 'block';
}