<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->

<head>
<%@ include file="../inc/head.jsp"%>
<!-- 시각적 확인을 위한 css 적용 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/product.css">
</head>

<body>
	<div id="container">
		<%@ include file="../inc/header.jsp"%>
		<div id="content">
			<form id="selectfrm" method="post" action="product.do">
				<ul class="select_group clear">
					<li>
						<button class="select_all">조립PC</button> <span>
							<label>
								<input type="checkbox" name="selectItem" class="user_select" value="assemble" <c:if test = "${fn:indexOf(select, 'assemble') > -1}">checked</c:if> />
								&nbsp; 커스텀 조립pc
							</label>
							<label>
								<input type="checkbox" name="selectItem" class="user_select" value="wellcom" <c:if test = "${fn:indexOf(select, 'wellcom') > -1}">checked</c:if> />
								&nbsp;Wellcom 추천 조립PC
							</label>
						</span>
					</li>
					<li>
						<button class="select_all">CPU</button> <span>
							<label>
								<input type="checkbox" name="selectItem" class="user_select" value="intel" <c:if test = "${fn:indexOf(select, 'intel') > -1}">checked</c:if> />
								&nbsp;Intel
							</label>
							<label>
								<input type="checkbox" name="selectItem" class="user_select" value="amd" <c:if test = "${fn:indexOf(select, 'amd') > -1}">checked</c:if> />
								&nbsp;AMD
							</label>
						</span>
					</li>
					<li>
						<button class="select_all">VGA</button> <span>
							<label>
								<input type="checkbox" name="selectItem" class="user_select" value="nvidia" <c:if test = "${fn:indexOf(select,'nvidia') > -1}">checked</c:if>>
								&nbsp;Nvidia
							</label>
							<label>
								<input type="checkbox" name="selectItem" class="user_select" value="radeon" <c:if test = "${fn:indexOf(select,'radeon') > -1}">checked</c:if>>
								&nbsp;AMD
							</label>
						</span>
					</li>
					<li>
						<button class="select_all">RAM</button> <span>
							<label>
								<input type="checkbox" name="selectItem" class="user_select" value="8g" <c:if test = "${fn:indexOf(select,'8g') > -1}">checked</c:if>>
								&nbsp;8G
							</label>
							<label>
								<input type="checkbox" name="selectItem" class="user_select" value="16g" <c:if test = "${fn:indexOf(select,'16g') > -1}">checked</c:if>>
								&nbsp;16G
							</label>
						</span>
					</li>
					<li>
						<button class="select_all">메인보드</button> <span>
							Intel칩셋 :
							<label>
								<input type="checkbox" name="selectItem" class="user_select" value="1151v2" <c:if test = "${fn:indexOf(select,'1151v2') > -1}">checked</c:if>>
								&nbsp;1151v2
							</label>
							<label>
								<input type="checkbox" name="selectItem" class="user_select" value="1200" <c:if test = "${fn:indexOf(select,'1200') > -1}">checked</c:if>>
								&nbsp;1200
							</label>
							<br> AMD칩셋:
							<label>
								<input type="checkbox" name="selectItem" class="user_select" value="am4" <c:if test = "${fn:indexOf(select,'am4') > -1}">checked</c:if>>
								&nbsp;AM4
							</label>
							<label>
								<input type="checkbox" name="selectItem" class="user_select" value="xrt40" <c:if test = "${fn:indexOf(select,'xrt40') > -1}">checked</c:if>>
								&nbsp;XRT40
							</label>
						</span>
					</li>
					<li>
						<button class="select_all">파워</button> <span>
							<label>
								<input type="checkbox" name="selectItem" class="user_select" value="500w" <c:if test = "${fn:indexOf(select,'500w') > -1}">checked</c:if>>
								&nbsp;500W
							</label>
							<label>
								<input type="checkbox" name="selectItem" class="user_select" value="600w" <c:if test = "${fn:indexOf(select,'600w') > -1}">checked</c:if>>
								&nbsp;600W
							</label>
							<label>
								<input type="checkbox" name="selectItem" class="user_select" value="700w" <c:if test = "${fn:indexOf(select,'700w') > -1}">checked</c:if>>
								&nbsp;700W
							</label>
						</span>
					</li>
					<li>
						<button class="select_all">케이스</button> <span>
							<label>
								<input type="checkbox" name="selectItem" class="user_select" value="case" <c:if test = "${fn:indexOf(select,'case') > -1}">checked</c:if>>
								&nbsp;제품보기
							</label>
						</span>
					</li>
				</ul>
			</form>
			<div class="item_box clear">
				<ul class="item_list clear">
					<!-- 템플릿 영역 -->
					<c:choose>

						<c:when test="${link != null && !empty(link)}">
							<!-- 사이드바를 통해서 접근하는 경우  -->
							<c:forEach items="${link}" var="item" varStatus="status">
								<%-- 상세페이지로 이동하기 위한 URL --%>
								<c:url value="product_info.do" var="viewUrl">
									<c:param name="data" value="${item.id}" />
								</c:url>

								<li class="item ${item.name}"><a href="${viewUrl}">
										<img src="${item.thumb}">
										<span>${item.name}, ${item.price}</span>
									</a></li>
							</c:forEach>
						</c:when>

						<c:otherwise>
							<!-- product페이지에서 checkbox로 상품을 선택하는 경우 -->
							<c:forEach items="${output}" var="item" varStatus="status">
								<%-- 상세페이지로 이동하기 위한 URL --%>
								<c:choose>
									<c:when test="${item.category == 'built'}">
										<c:url value="product_assemble.do" var="viewUrl">
											<c:param name="data" value="${item.id}" />
										</c:url>
									</c:when>
									<c:otherwise>
										<c:url value="product_info.do" var="viewUrl">
											<c:param name="data" value="${item.id}" />
										</c:url>
									</c:otherwise>
								</c:choose>
									<li class="item ${item.name}"><a href="${viewUrl}">
												<img src="${item.thumb}">
												<span>${item.name}, ${item.price}</span>
											</a></li>
							</c:forEach>

						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
		<%@ include file="../inc/footer.jsp"%>
	</div>
	<script src="../assets/plugins/handlebars/handlebars-v4.0.11.js"></script>
	<script type="text/x-handlebars-template" id="item-list-template">
        <li class="item {{item_name}}">
            <a href="product_info.do?data={{item_name}}">
                <img src="{{#item_thumb as |thumb|}}{{#if @first}}{{thumb}}{{/if}}{{/item_thumb}}"> <span>{{item_name}},
                {{item_price}}</span>
            </a>
        </li>
    </script>
	<script type="text/javascript">
		$(function() {
			$('.user_select').change(function() {
				$('#selectfrm').submit();
			})

			$('.select_all')
					.click(
							function() {
								if ($(this).next('span').find('input:checked').length < $(
										this).next('span').find('input').length) {
									$(this).next('span').find('input').prop(
											'checked', true);
								} else {
									$(this).next('span').find('input').prop(
											'checked', false);
								}
								$('#selectfrm').submit();
							})
	<%--// 메뉴바 경로를 통해서 접근하는경우, url에서 파라미터 정보를 얻어옴
    	$.urlParam = function(name){
		    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
		    return results[1] || 0;
		}

       // 각 checkbox의 value값을 담기위한 배열변수 선언
        var value_list = [];

        $.get('../assets/json/product.json', function(product) {
            var template = Handlebars.compile($('#item-list-template').html());
            var html = null;

            // value_list의 각 값을 product.list.item_category와 비교하여 일치하면 출력
            for (var i = 0; i < product.list.length; i++) {
                html = template(product.list[i])
                if (product.list[i].item_name.indexOf($.urlParam('data')) != -1 || product.list[i].item_category.indexOf($.urlParam('data')) != -1 || product.list[i].item_spec.indexOf($.urlParam('data')) != -1) {
                	$('.item_list').append(html)
                }
            }
        })

         // 버튼을 클릭했을때
        $('.select_all').click(function() {

            // 배열의 내용을 초기화.
            value_list = [];

            // 상품 목록의 내용을 초기화.
            $('.item_list').empty();

            // 버튼과 같은 영역에 존재하는 checkbox의 체크여부를 확인하여 'checked' 변경
            if ($(this).next('span').find('input:checked').length < $(this).next('span').find('input').length) {
                $(this).next('span').find('input').prop('checked', true);
            } else {
                $(this).next('span').find('input').prop('checked', false);
            }

            // checked가 부여된 checkbox의 밸류값을 배열에 담는다.
            for (var i = 0; i < $('.select_group').find("input").length; i++) {
                if ($('.select_group').find("input").eq(i).prop('checked')) {
                    value_list.push($('.select_group').find("input").eq(i).val());
                }
            }

            // 체크된 항목이 없는 경우 전체 상품 출력
            if (value_list.length == 0) {
                $.getJSON("../assets/json/product.json", function(product) {
                    var template = Handlebars.compile($('#item-list-template')
                        .html());
                    var html = null;
                    for (var i = 0; i < product.list.length; i++) {
                        html = template(product.list[i])
                        $('.item_list').append(html);
                    }
                })
            }

            // 체크된 항목이 있는 경우 value_list와 대조하여 일치항목 출력
            $.get('../assets/json/product.json', function(product) {
                var template = Handlebars.compile($('#item-list-template').html());
                var html = null;

                // value_list의 각 값을 product.list.item_category와 비교하여 일치하면 출력
                for (var i = 0; i < product.list.length; i++) {
                    html = template(product.list[i])
                    for (var j = 0; j < value_list.length; j++) {
                        if (product.list[i].item_category.indexOf(value_list[j]) != -1) {
                            $('.item_list').append(html)
                        }
                    }
                }
            })
        })

        // 체크박스를 클릭 했을 때
        $('.user_select').click(function() {

            // 배열의 내용을 초기화
            value_list = [];

            // 체크박스의 총 갯수만큼 반복문을 돌리면서, 몇번째 체크박스에 체크가 되어있는지를 파악, 배열에 담는다.
            for (var i = 0; i < $('.select_group').find("input").length; i++) {
                if ($('.select_group').find("input").eq(i).prop('checked')) {
                    value_list.push($('.select_group').find("input").eq(i).val());
                }
            }

            // 상품목록을 비운다
            $('.item_list').empty();

            // 체크된 항목이 없는경우 모든 상품 출력
            if (value_list.length == 0) {
                $.get("../assets/json/product.json", function(product) {
                    var template = Handlebars.compile($('#item-list-template')
                        .html());
                    var html = null;
                    for (var i = 0; i < product.list.length; i++) {
                        html = template(product.list[i])
                        $('.item_list').append(html);
                    }
                })
            }

            // 체크된 상품이 있는 경우
            $.get('../assets/json/product.json', function(product) {
                var template = Handlebars.compile($('#item-list-template').html());
                var html = null;

                // 자료의 각 값을 value값과 비교하여 일치하면 출력
                for (var i = 0; i < product.list.length; i++) {
                    html = template(product.list[i])
                    for (var j = 0; j < value_list.length; j++) {
                        if (product.list[i].item_category.indexOf(value_list[j]) != -1) {
                            $('.item_list').append(html)
                        }
                    }
                }
            })
        }) --%>
		}); // end of $(function(){
	</script>
</body>

</html>