<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspweb13</title>
<link rel="stylesheet" href="css/address.css"></link>
<style></style>
</head>
<body onload="window.resizeTo(524,495)">
	
	<div class="address_wrapper">
		<div class="address_header">
			<h1>배달 받을 주소</h1>
			
			<button  onclick="self.close();"><img src="images/x.png"></button>
		
		</div>
		
		
		<div class="address_main">
		
		
			<input type="text" maxlength="50" id="cInput">
		</div>
		
		<div class="address_middle">
			<img src="images/address.png">
		</div>
		
		<div class="address_bottom">
		
			<button id="button" onclick="input();">
				<span>이 주소로 배달지 설정</span>
			</button>
		</div>
	
	</div>

</body>
<script src="js/jquery-3.6.0.min.js"></script> <!-- 사용하지 않으면 주석을 막아주세요 -->
<script>
function input() {
	
	opener.document.getElementById("pInput").innerText = document.getElementById("cInput").value;
	self.close();
}



	
</script>
</html>