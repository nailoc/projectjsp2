<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspweb13</title>
<link rel="stylesheet" href="css/style_set.css"></link>
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
			<a href="myking_set.jsp"><span>MY세트</span></a>
		
		<p>
			
			배달지를 선택하세요
			<a href="" id="location_btn">변경</a><p>
		</div>
	</div>
	
<div class="container">
	<div class="content_box1">
		<h2>MY세트</h2>
		<p>전체 <span>(세트 수)</span></p>
	</div>
	
	<div class="cont">
		<img src="images/logo.png" width="300" height="200">
		<p>등록된 MY세트가 없습니다</p>
	</div>
	
	
	<div class="content_box2">
		<ul>
			<li>평소에 자주 드시는 메뉴를 등록하시면 보다 쉽고 빠르게 선택 하실 수 있어요.</li>
			<li>MY세트는 5개까지 등록 가능합니다.</li>
		</ul>
		
			<a href=""><img src="images/set_plus.png" width="200" height="80"></a>
	</div>
</div>	
	
	<div class="clear"></div>
	
	<jsp:include page="top.jsp" flush="true"/>
	<jsp:include page="footer_chg.jsp" flush="true"/>
	
	
</body>
<script></script>
</html>