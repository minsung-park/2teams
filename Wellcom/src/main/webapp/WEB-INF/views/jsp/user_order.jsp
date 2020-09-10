<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->
<head>
<%@ include file="../inc/head.jsp"%>
<!-- 시각적 확인을 위한 css 적용 -->

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/user_order.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css">
<title>index</title>
</head>
<body>
	<div id="container">
		<%@ include file="../inc/header.jsp"%>
		<div id="content">






			<div id="content_header">나의 주문</div>
			<ol class="breadcrumb" id="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/jsp/account.do">마이페이지</a></li>
				<li class="active">나의주문</li>
				<!-- 여기가 현재 페이지를 의미합니다. - active클래스 적용됨 -->
			</ol>
			<div id="content_main">


				<div id="headbars">
					<div id="status">
						<div id="status_label">
							<label for="statusbar" id="label_status">상태</label>
						</div>
						<select name="statusbar" id="statusbar" class="form-control">
							<option value="전체주문처리 상태" selected class="form-control">전체주문처리
								상태</option>
							<option value="주문 완료 상태" class="form-control">주문 완료 상태</option>
							<option value="배송중 상태" class="form-control">배송중 상태</option>
						</select>

					</div>


					<div id="date_selector">
						<div id="date_selector_label" class="clear">
							<label for="reportrange" id="label_date">기간</label>
						</div>

						<!-- Calendar starts -->


						<!-- display -->


						<!-- button layout -->
						<div id="date_select_btn" class="set_term(1)">

								<!-- 숨긴표시한 날짜표시 -->
							<span id="date_selector_left"></span><span
								id="date_selector_right"></span> 
								
								
								<!-- 날짜선택 버튼 -->
								<input type="button"
								onclick="set_term(1)" class="btn btn-outline-light"
								id="for_today" value="오늘" /> <input type="button"
								onclick="set_term(7)" class="btn btn-outline-light"
								id="for_lastweek" value="7일" /> <input type="button"
								onclick="set_term(14)" class="btn btn-outline-light"
								id="for_last2weeks" value="14일" /> <input type="button"
								onclick="set_term(30)" class="btn btn-outline-light"
								id="for_lastMonth" value="30일" /> <input type="button"
								onclick="set_term(60)" class="btn btn-outline-light"
								id="for_last2months" value="60일" />
						</div>

						<input type="text" name="daterange" id="reportrange"
							class="form-control" value="01/01/2018 - 01/15/2018" />



						<!--Calendar ends  -->

					</div>
				</div>

				<!-- 배송예정일 항목 -->


				<div id="order_shipped" class="rounded-lg">

					<!-- 배송 예정 기간 표시 -->
					<h5>
						<span id="order_shipped_eta">배송예정일 20.07.15 ~ 20.07.20</span>
					</h5>
					<!-- 상품 이미지 표시 -->

					<a href="${pageContext.request.contextPath}/jsp/user_order2.do">
						<div id="order_shipped_content">

							<div id="order_shipped_content_head">
								<span><img src="${pageContext.request.contextPath}/assets/img/case/case_1_22500.jpg" alt="..."
									class="rounded-sm"> </span> <span><img
									src="${pageContext.request.contextPath}/assets/img/cpu/amd_ryzen3th_3300x_thumb.jpg" alt="..."
									class="rounded-sm"> </span> <span><img
									src="${pageContext.request.contextPath}/assets/img/hdd/seagate_barracuda_hdd_2t.jpg" alt="..."
									class="rounded-sm"> </span> <span id="extra_number">+2</span>
							</div>
							<!--주문상태줄 -->

							<span id="order_status1" class="left">주문상태 : </span><span
								id="order_status2" class="right">발송완료</span><br /> <span
								id="order_number1" class="left">주문번호 : </span> <span
								id="order_number2" class="right">1234567</span><br /> <span
								id="order_total_cost1" class="left">총비용 : </span><span
								id="order_total_cost2" class="right">w 1.200.000 </span><br />
							<span id="order_date1" class="left">주문일 : </span><span
								id="order_date2" class="right">20.07.14</span><br /> <span
								id="order_shipping_point1" class="left">배송지 : </span><span
								id="order_shipping_point2" class="right">서울 서초구xxxxx</span><br />
							<span id="order_payment_method1" class="left">결제방식 : </span><span
								id="order_payment_method2" class="right">Mastercard</span>



						</div>

					</a>
					<!-- 버튼-->
					<div id="button_area" class="clear">
						<button id="button_track" type="button" class="btn btn-primary2"
							value="배송추적"
							onclick="location.href='https://www.cjlogistics.com/ko/tool/parcel/tracking'">배송추적</button>
						<button id="button_query1" type="button" class="btn btn-primary2"
							value="상품문의" onclick="location.href='${pageContext.request.contextPath}/jsp/customer_service_write.do'">상품문의</button>

					</div>




				</div>

				<br /> <br />

				<!-- 주문완료된 항목 -->



				<div id="order_completed" class="rounded-lg">

					<!-- 배송 예정 기간 표시 -->
					<h5>
						<span id="order_completed_number">주문번호 : 1234567</span>
					</h5>
					<!-- 상품 이미지 표시 -->
					<div id="order_completed_content">

						<div id="order_completed_content_head">
							<span><img src="${pageContext.request.contextPath}/assets/img/case/case_1_22500.jpg" alt="..."
								class="rounded-sm"> </span> <span><img
								src="${pageContext.request.contextPath}/assets/img/cpu/amd_ryzen3th_3300x_thumb.jpg" alt="..."
								class="rounded-sm"> </span> <span><img
								src="${pageContext.request.contextPath}/assets/img/hdd/seagate_barracuda_hdd_2t.jpg" alt="..."
								class="rounded-sm"> </span> <span id="extra_number">+2</span>
						</div>
						<!--주문상태줄 -->

						<span id="order_status1" class="left">주문상태 : </span><span
							id="order_status2" class="right">발송완료</span><br /> <span
							id="order_total_cost1" class="left">총비용 : </span><span
							id="order_total_cost2" class="right">w 1.200.000 </span><br /> <span
							id="order_date1" class="left">주문일 : </span><span id="order_date2"
							class="right">20.07.14</span><br />

						<!-- 버튼-->
					</div>

					<div id="button_area" class="clear">
						<button id="button_query2" type="button" class="btn btn-primary2"
							value="상품문의" onclick="location.href='${pageContext.request.contextPath}/jsp/customer_service_write.do'">상품문의</button>


					</div>

				</div>


				<button id="button_return_mypage" type="button"
					class="btn btn-primary2" value="마이페이지 홈"
					onclick="location.href='${pageContext.request.contextPath}/jsp/account.do'">마이페이지 홈</button>

			</div>
			<%@ include file="../inc/footer.jsp"%>
		</div>
	</div>


	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<script type="text/javascript">
		// 달력 기능//

		/*  $('#reportrange')
				.daterangepicker(
						{
							"locale" : {
								"format" : "YYYY/MM/DD",
								"separator" : " - ",
								"applyLabel" : "Apply",
								"cancelLabel" : "Cancel",
								"fromLabel" : "From",
								"toLabel" : "To",
								"customRangeLabel" : "Custom",
								"weekLabel" : "W",
								"daysOfWeek" : [ "일","월", "화", "수", "목",
										"금", "토" ],
								"monthNames" : [ "1월", "2월",
										"3월", "4월", "5월", "6월",
										"7월", "8월", "9월",
										"10월", "11월", "12월" ],
								"firstDay" : 1
							},
							"startDate" : "2020/05/20",
							"endDate" : "2020/08/10"
						},
						function(start, end, label) {
							console.log('New date range selected: '
									+ start.format('YYYY-MM-DD') + ' to '
									+ end.format('YYYY-MM-DD')
									+ ' (predefined range: ' + label + ')');
						}); 
		 */

		$(function() {
			$('input[name="daterange"]')
					.daterangepicker(
							{

								"locale" : {
									"format" : "YYYY/MM/DD",
									"separator" : " ~ ",
									"applyLabel" : "Apply",
									"cancelLabel" : "Cancel",
									"fromLabel" : "From",
									"toLabel" : "To",
									"customRangeLabel" : "Custom",
									"weekLabel" : "W",
									"daysOfWeek" : [ "일", "월", "화", "수", "목",
											"금", "토" ],
									"monthNames" : [ "1월", "2월", "3월", "4월",
											"5월", "6월", "7월", "8월", "9월",
											"10월", "11월", "12월" ],
									"firstDay" : 1
								},
								"startDate" : "2020/05/20",
								"endDate" : "2020/08/10"

							}, function(start, end, label) {

							});
		});

		//달력 끝//

		function set_term(days) {
			var date = new Date();
			var yy = date.getFullYear(); // 년도
			var mm = date.getMonth() + 1; // 월
			var dd = date.getDate(); // 일
			var str, str1 = "";
			date.setDate(date.getDate() - days);
			var yyy = date.getFullYear(); // 년도
			var mmm = date.getMonth() + 1; // 월
			var ddd = date.getDate() + 1; // 일
			str1 = yy + "-" + mm + "-" + dd;
			str = yyy + "-" + mmm + "-" + ddd;
			document.getElementById("date_selector_left").innerHTML = str;
			document.getElementById("date_selector_right").innerHTML = str1;
			$('input[name="daterange"]').val(str + " ~ " + str1)
		}
	</script>
</body>

</html>