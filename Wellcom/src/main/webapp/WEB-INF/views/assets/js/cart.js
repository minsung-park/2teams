$(function() {

	setTotalPrice();


	function setPrice(price, amount) {
		return price * amount;
	}

	function setTotalPrice() {
		var length = $('.cart_product').length;
		var product_price = 0;
		for (var i = 0; i < length; i++) {
			product_price += Number($('.product_total_price').eq(i).html()
				.replace(/[^0-9]/g, ''));
		}

		var delivery_price = 10000 * length;
		var final_price = Number(product_price) + Number(delivery_price);
		/*		
				product_price = product_price.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
				delivery_price = delivery_price.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
				final_price = final_price.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
			*/
		$(".finalPrice #product_price").html(product_price + "원");
		$(".finalPrice #delivery_price").html(delivery_price + "원");
		$(".finalPrice #full_price").html(final_price + "원");

	}


	$("#allCheck1").on("click", function() {
		if (($("#allCheck1").prop("checked"))) {
			$("input:checkbox[name='product_check']").prop("checked", true);
			$("input:checkbox[id='allCheck2']").prop("checked", true);
		} else {
			$("input:checkbox[name='product_check']").prop("checked", false);
			$("input:checkbox[id='allCheck2']").prop("checked", false);
		}
	});

	$("#allCheck2").on("click", function() {
		if (($("#allCheck1").prop("checked"))) {
			$("input:checkbox[name='product_check']").prop("checked", true);
			$("input:checkbox[id='allCheck1']").prop("checked", true);
		} else {
			$("input:checkbox[name='product_check']").prop("checked", false);
			$("input:checkbox[id='allCheck1']").prop("checked", false);
		}
	});
	function getContextPath() {
		var hostIndex = location.href.indexOf(location.host) + location.host.length;
		return location.href.substring(hostIndex, location.href.indexOf('/', hostIndex + 1));
	}

	$(".amountArea button").on(
		"click",
		function() {
			var amount = $(this).parent(".amountArea").find(".amount")
				.val()
			if ($(this).hasClass("plus")) {
				amount++;
			} else if ($(this).hasClass("minus")) {
				if (amount != 1) {
					amount--;
				}
			}
			var price = $(this).parents(".cart_product").find(
				".info_box #price").html().replace(/[^0-9]/g, '');

			var cost = setPrice(price, amount);

			$(this).parent(".amountArea").find(".amount").val(amount);
			$(this).parents(".cart_product").find("#product_total_price")
				.html(cost + "원");

			setTotalPrice();
		});

	$("input:checkbox[name='product_check']").on("change", function() {
		$("#allCheck1").prop("checked", false);
	});

	$('#optionChange').on('shown.bs.modal', function(e) {
		var button = $(e.relatedTarget);
		var recipient = button.data('whatever');
		var modal = $(this);
		modal.find("#hidden-title").val(recipient);
	});

	$('#checkDel1').on('click', function(e) {
		e.preventDefault();
		swal({
			title: '선택하신 상품을 \n삭제하시겠습니까?', // 제목
			type: 'question', // 종류
			confirmButtonColor: '#3085d6',
			showCancelButton: true, // 취소버튼 표시 여부
			cancelButtonColor: '#d33',
			confirmButtonText: '삭제',
			cancelButtonText: '취소'
		}).then(function(result) {
			if (result.value) {
				/*
				alert("length = " + $('input:checkbox[name="product_check"]:checked').length);
				if ($('input:checkbox[name="product_check"]:checked').length != 0) {
					var value = 0;
					var loc = getContextPath() + "/cart/deleteCart.do?";
					$('input:checkbox[name="product_check"]:checked').each(function() {
						loc += "cart_id=" + $(this).val() + "&";
					});
					loc = loc.substring(0, loc.length - 1);
					location.href = loc;
					}
* */
				swal({
					type: 'warning',
					title: '삭제되었습니다!',
					confirmButtonText: '확인'
				})
			} else if (result.dismiss === 'cancel') {
				swal({
					type: 'error',
					title: '취소되었습니다!',
					confirmButtonText: '확인'
				});
			}
		})
	});

	$('#delete').on('click', function(e) {
		e.preventDefault();
		swal({
			title: '선택하신 상품을 \n삭제하시겠습니까?', // 제목
			type: 'question', // 종류
			confirmButtonColor: '#3085d6',
			showCancelButton: true, // 취소버튼 표시 여부
			cancelButtonColor: '#d33',
			confirmButtonText: '삭제',
			cancelButtonText: '취소'
		}).then(function(result) {
			if (result.value) {
				swal({
					type: 'warning',
					title: '삭제되었습니다!',
					confirmButtonText: '확인'
				})
			} else if (result.dismiss === 'cancel') {
				swal({
					type: 'error',
					title: '취소되었습니다!',
					confirmButtonText: '확인'
				});
			}
		})
	});

	$('.buttonArea #favorite').on('click', function() {
		swal({
			title: '선택하신 상품을 \n관심상품에 \n추가하시겠습니까?',
			type: 'question',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: '추가',
			cancelButtonText: '취소'

		}).then(function(result) {
			if (result.value) {
				swal({
					type: 'warning',
					title: '추가되었습니다!',
					confirmButtonText: "확인"
				});
			} else if (result.dismiss === 'cancel') {
				swal({
					type: 'error',
					title: '취소되었습니다!',
					confirmButtonText: '확인'
				});
			}
		});
	});

	/** 모달 창이 닫히는 경우의 이벤트 */
	// ".modal"로 지정할 경우 : 모든 모달창에 적용됨
	// "#아이디"로 지정할 경우 : 특정 모달 창에 적용
	$('#optionChange').on('hidden.bs.modal', function() {
		// 모달창 내의 내용을 강제로 지움.
		$(this).removeData('bs.modal');
	});

	$(document)
		.on(
			'submit',
			'#changing-form',
			function(e) {
				// 페이지 이동이 방지된다.
				// -> form 내부의 스크립트를 완성한 후, 제거
				e.preventDefault();

				var id = $(this).find("#hidden-title").val();
				var count = 0;
				var inputText = "<span><strong>선택옵션 : </strong></span><br />";
				if ($(this).find("#changeCPU").val() != "") {
					inputText += "<span class='show_option'>CPU : "
						+ $(this).find("#changeCPU").val()
						+ "</span><br/>";
					count++;
				}
				if ($(this).find("#changeGPU").val() != "") {
					inputText += "<span class='show_option'>그래픽카드 : "
						+ $(this).find("#changeGPU").val()
						+ "</span><br/>";
					count++;
				}
				if ($(this).find("#changeHDD").val() != "") {
					inputText += "<span class='show_option'>HDD : "
						+ $(this).find("#changeHDD").val()
						+ "</span><br/>";
					count++;
				}
				if ($(this).find("#changeSSD").val() != "") {
					inputText += "<span class='show_option'>SSD : "
						+ $(this).find("#changeSSD").val()
						+ "</span><br/>";
					count++;
				}
				if ($(this).find("#changeRam").val() != "") {
					inputText += "<span class='show_option'>RAM : "
						+ $(this).find("#changeRam").val()
						+ "</span><br/>";
					count++;
				}

				if (count != 0) {
					$('#' + id).find('.optionArea').html(inputText);
				} else {
					$('#' + id).find('.optionArea').html("");
				}
				$("#optionChange").modal('hide');
			});
}); // end of $(function(){
