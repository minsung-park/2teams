<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<!--페이지 설정 부분-->
<head>
<!-- 시각적 확인을 위한 css 적용 -->
<link rel="stylesheet" type="text/css" href="css/index.css">
<title>index</title>
</head>
<body>
	<div id="container">
		<%@ include file="header.jsp"%>
		<div id="content">
			<div class="contains">
				<div class="popular_item1">
					<div class="title">
						<h1>대표상품</h1>
					</div>
					<div class="item_box">
						<ul>
							<li class="product"><a href="html/assemble.html"> <img
									src="img/amd_sample.jpg" class="thumb" />
									<div class="desc">
										<span class="name">웰컴 초이스 No.01</span><br /> <span
											class="price">325,850원</span>
									</div>
							</a></li>
							<li class="product"><a href="html/assemble.html"> <img
									src="img/intel_sample.jpg" class="thumb" />
									<div class="desc">
										<span class="name">웰컴 초이스 No.01</span><br /> <span
											class="price">325,850원</span>
									</div>
							</a></li>
							<li class="product"><a href="html/assemble.html"> <img
									src="img/amd_sample.jpg" class="thumb" />
									<div class="desc">
										<span class="name">웰컴 초이스 No.01</span><br /> <span
											class="price">325,850원</span>
									</div>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="popular_item2 clear">
					<div class="title">
						<h1>인기상품</h1>
					</div>
					<div class="item_box">
						<ul>
							<li class="product"><a href="html/assemble.html"> <img
									src="img/amd_sample.jpg" class="thumb" />
									<div class="desc">
										<span class="name">웰컴 초이스 No.01</span><br /> <span
											class="price">325,850원</span>
									</div>
							</a></li>
							<li class="product"><a href="html/assemble.html"> <img
									src="img/intel_sample.jpg" class="thumb" />
									<div class="desc">
										<span class="name">웰컴 초이스 No.01</span><br /> <span
											class="price">325,850원</span>
									</div>
							</a></li>
							<li class="product"><a href="html/assemble.html"> <img
									src="img/amd_sample.jpg" class="thumb" />
									<div class="desc">
										<span class="name">웰컴 초이스 No.01</span><br /> <span
											class="price">325,850원</span>
									</div>
							</a></li>
							<li class="product"><a href="html/assemble.html"> <img
									src="img/intel_sample.jpg" class="thumb" />
									<div class="desc">
										<span class="name">웰컴 초이스 No.01</span><br /> <span
											class="article">325,850원</span>
									</div>
							</a></li>
							<li class="product"><a href="html/assemble.html"> <img
									src="img/amd_sample.jpg" class="thumb" />
									<div class="desc">
										<span class="name">웰컴 초이스 No.01</span><br /> <span
											class="article">325,850원</span>
									</div>
							</a></li>
							<li class="product"><a href="html/assemble.html"> <img
									src="img/intel_sample.jpg" class="thumb" />
									<div class="desc">
										<span class="name">웰컴 초이스 No.01</span><br /> <span
											class="article">325,850원</span>
									</div>
							</a></li>
							<li class="product"><a href="html/assemble.html"> <img
									src="img/amd_sample.jpg" class="thumb" />
									<div class="desc">
										<span class="name">웰컴 초이스 No.01</span><br /> <span
											class="price">325,850원</span>
									</div>
							</a></li>
							<li class="product"><a href="html/assemble.html"> <img
									src="img/intel_sample.jpg" class="thumb" />
									<div class="desc">
										<span class="name">웰컴 초이스 No.01</span><br /> <span
											class="article">325,850원</span>
									</div>
							</a></li>
							<li class="product"><a href="html/assemble.html"> <img
									src="img/amd_sample.jpg" class="thumb" />
									<div class="desc">
										<span class="name">웰컴 초이스 No.01</span><br /> <span
											class="article">325,850원</span>
									</div>
							</a></li>
						</ul>
					</div>
					<button id="more">더보기</button>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
	<!-- Javascript -->
	<script type="text/x-handlebars-template" id="popular-items-tmpl">
    <li class="product">
        <a href="html/assemble.html">
            <img src="img/intel_sample.jpg" class="thumb" />
            <div class="desc">
                <span class="name">웰컴 초이스 No.01</span><br />
                <span class="article">325,850원</span>
            </div>
        </a>
    </li>
    <li class="product">
        <a href="html/assemble.html">
            <img src="img/amd_sample.jpg" class="thumb" />
            <div class="desc">
                <span class="name">웰컴 초이스 No.01</span><br />
                <span class="price">325,850원</span>
            </div>
        </a>
    </li>
    <li class="product">
        <a href="html/assemble.html">
            <img src="img/intel_sample.jpg" class="thumb" />
            <div class="desc">
                <span class="name">웰컴 초이스 No.01</span><br />
                <span class="article">325,850원</span>
            </div>
        </a>
    </li>
        <li class="product">
        <a href="html/assemble.html">
            <img src="img/intel_sample.jpg" class="thumb" />
            <div class="desc">
                <span class="name">웰컴 초이스 No.01</span><br />
                <span class="article">325,850원</span>
            </div>
        </a>
    </li>
    <li class="product">
        <a href="html/assemble.html">
            <img src="img/amd_sample.jpg" class="thumb" />
            <div class="desc">
                <span class="name">웰컴 초이스 No.01</span><br />
                <span class="price">325,850원</span>
            </div>
        </a>
    </li>
    <li class="product">
        <a href="html/assemble.html">
            <img src="img/intel_sample.jpg" class="thumb" />
            <div class="desc">
                <span class="name">웰컴 초이스 No.01</span><br />
                <span class="article">325,850원</span>
            </div>
        </a>
    </li>
        <li class="product">
        <a href="html/assemble.html">
            <img src="img/intel_sample.jpg" class="thumb" />
            <div class="desc">
                <span class="name">웰컴 초이스 No.01</span><br />
                <span class="article">325,850원</span>
            </div>
        </a>
    </li>
    <li class="product">
        <a href="html/assemble.html">
            <img src="img/amd_sample.jpg" class="thumb" />
            <div class="desc">
                <span class="name">웰컴 초이스 No.01</span><br />
                <span class="price">325,850원</span>
            </div>
        </a>
    </li>
    <li class="product">
        <a href="html/assemble.html">
            <img src="img/intel_sample.jpg" class="thumb" />
            <div class="desc">
                <span class="name">웰컴 초이스 No.01</span><br />
                <span class="article">325,850원</span>
            </div>
        </a>
    </li>
</script>
	<script src="plugins/handlebars/handlebars-v4.0.11.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#more').click(
					function(e) {
						e.preventDefault();
						var template = Handlebars.compile($(
								"#popular-items-tmpl").html());
						var html = template();
						$(".popular_item2 .item_box ul").append(html);
					}); // end of $('.btn-primary').click(function(e) {
		}); // end of $(function(){
	</script>
</body>

</html>