<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspweb13</title>
<link rel="stylesheet" href="css/style_coupon.css"></link>
<link rel="stylesheet" href="css/style_basic.css"></link>
<style></style>
</head>
<body>

<a name="top"></a>
	<jsp:include page="header_chg.jsp" flush="true"/>
	
	

	<div class="myk_container">
		<div class="page_navi">
			<a href="delivery.jsp"><span>딜리버리</span></a>
			<span>></span>
			<a href="myking_main.jsp"><span>MY킹</span></a>
			<span>></span>
			<a href="myking_coupon.jsp"><span>딜리버리 쿠폰</span></a>
		
		<p>
			
			배달지를 선택하세요
			<a href="" id="location_btn">변경</a><p>
		</div>
	</div>
	
	
	<div class="content_box">
		<div class="content_hd">
			<h2>딜리버리 쿠폰</h2>
			<p><strong>(쿠폰 수)개</strong>의 쿠폰이 있습니다.</p>
		</div>
		
	</div>
	
	<div class="cont">
		<div class="cont_img"><img src="images/logo.png" width="300" height="200"></div>
		<div class="cont_txt"><span>쿠폰목록이 없습니다.</span></div>
	</div>
	
	<jsp:include page="top.jsp" flush="true"/>
	<jsp:include page="footer_chg.jsp" flush="true"/>
	
	
</body>
<script></script>
</html>