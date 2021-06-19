<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<link rel = "stylesheet" href = "css/join_style.css"></link>
	<style></style>
</head>
<body>
	
	<div id = "wrapper">
	<!-- 헤더영역 -->
	<%@ include file = "deliveryheader.jsp" %>
	<form method="post" action="joinAction.jsp">
	<section>
		
		<h3>기본정보</h3>
		<div id="basicsInf">
			<div class = "inf">
				<h2>이메일 아이디</h2>
				<input type = "email" id = "email" name = "email" placeholder = "이메일 아이디">
			</div>
			
			<div class = "inf">
			<h2>이름</h2>
			<input type = "text" id = "name" name = "name">
			</div>
			
			<div class = "inf">
			<h2>전화번호</h2>
			<input type = "text" id = "phn" name = "phn">
			</div>
		</div>
		
		<h3>비밀번호 입력</h3>
		<div id="password">
			<h2>비밀번호</h2>
			<input type = "password" id = "password" name = "password" placeholder = "비밀번호 영문, 숫자, 특수문자, 조합(10~20자 사이)">
			<input type = "password" id = "password2" name = "password2" placeholder = "비밀번호 확인">
		</div>
		
		<!-- <p><img src = "img/회원가입버튼.PNG"></p> -->
		<p><button type = "submit" id = "joinbutton"></button></p>
		
		</section>
		</form>
		<!-- 푸터 영역 -->
		<%@ include file = "deliveryfooter.jsp" %>
		
	</div>
	

	
</body>
<script>
	
</script>
</html>