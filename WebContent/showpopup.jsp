<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspweb13</title>
<link rel="stylesheet" href="css/popup.css"></link>
<style></style>
</head>
<body onload="window.resizeTo(524,495)">

<div class="popup">
	<div class="popupimg">
	<img src="images/배달지주소.png">
	</div>
	
	<%
  		String addr = request.getParameter("addr");
	%>
	
	<div class="popupadd">
		<p class="addr" id="haha"><%= addr %></p>
		<br>
		<br>
		<p class="txtz">위 배달지로 주문하시겠습니까?</p>
	</div>
	
	
	
	<div class="button_yesno">
	<input class="no" type="button" value="아 니 오" onclick="self.close();"/>
	<input class="yes" type="button" value="예" onclick="moveClose();" />
	</div>
</div>
</body>


<script src="js/jquery-3.6.0.min.js"></script> <!-- 사용하지 않으면 주석을 막아주세요 -->
<script>
	
	function moveClose() {
		opener.location.href="ordersucce.jsp";
		self.close();
	}
</script>
</html>