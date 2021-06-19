<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel = "stylesheet" href = "css/login_style.css"></link>
	<style></style>
</head>
<body>

	<div id = "wrapper">
		
		<!-- 헤더영역 -->
		<%@ include file = "deliveryheader.jsp" %>
		<form method="post" action="loginAction.jsp">
		
		<!-- 메인 영역 -->
		
		<section>
			<h1 id = "colorRed">WHERE TASTE IS KING</h1>
			<h1>어서오세요! 버거킹입니다.</h1>
			
			<div id="login">
				<h3>일반 로그인</h3>
				<input type="email" id="id" name="email" placeholder = "아이디[이메일]">
				<input type="password" id="password" name="password" placeholder = "비밀번호">
				<p><input type="checkbox" id="storeid" name="storeid">아이디 저장
				<input type="checkbox" id="autologin" name="autologin">자동 로그인</p>
				<!-- <img src = "img/로그인버튼.PNG" id="loginbutton" alt = "로그인버튼"> -->
				<button type = "submit" id="loginbutton"></button>
				<a href = "join.jsp"><img src = "img/회원가입버튼.PNG" alt = "회원가입버튼"></a>
			</div>
				
			<div id="otherlogin">
				<h3>간편 로그인</h3>
				<a href = "https://nid.naver.com/nidlogin.login?mode=form&url=https%3A%2F%2Fwww.naver.com"><img src = "img/네이버로그인.PNG" alt = "네이버로그인"></a>
				<a href = "https://accounts.kakao.com/login?continue=https%3A%2F%2Fcs.kakao.com%2Fhelps%3Fcategory%3D166%26service%3D52"><img src = "img/카카오로그인.PNG" alt = "카카오로그인"></a>
				<a href = "https://appleid.apple.com/auth/authorize?client_id=kr.co.hybrid.burgerking.apple.login&redirect_uri=https%3A%2F%2Fwww.burgerking.co.kr%2Foauth2%2Fredirect%2Fapple&response_type=code&response_mode=form_post&scope=name+email&state=e3a68a44-9a2c-49ca-874b-402b6e73de91&form=MY01SV&OCID=MY01SV"><img src = "img/애플로그인.PNG" alt = "애플로그인"></a>
			</div>
		
		</section>
		</form>
		<div id= "nonmemberlogin">
			<h3 id = "nonmemberorder" onclick = "changenonmember1()">비회원 주문</h3>
			<h3 id = "nonmemberorderlist" onclick = "changenonmember2()">비회원 주문내역</h3>
			<div id = "nonmemberorder2" class = "nonmemberbox">
				<div>
					<h3>회원가입 없이 비회원으로 주문이 가능합니다.</h3>
				</div>
				<p><img src = "img/비회원주문버튼.PNG" onclick = "gonomemberjoin()"></p>
			</div>
			<div id = "nonmemberorderlist2" class = "nonmemberbox">
				<div>
					<h3>주문번호</h3><input type = "text" name = "nonmemberordernumber" id = "nonmemberordernumber">
					<h3 id = "h3password">비빌번호</h3><input type = "password" name = "nonmemberorderpasswd" id = "nonmemberorderpasswd">
				</div>
				<p><img src = "img/비회원주문내역버튼.PNG"></p>
			</div>
		</div>
			
		<!-- 푸터 영역 -->
		<%@ include file = "deliveryfooter.jsp" %>
	</div>
	
</body>
<script>
	document.getElementById("nonmemberorder").style.color = "red";
	function changenonmember1(){
		document.getElementById("nonmemberorder").style.color = "red";
		document.getElementById("nonmemberorderlist").style.color = "black";
		document.getElementById("nonmemberorder2").style.display = "block";
		document.getElementById("nonmemberorderlist2").style.display = "none";
	}
	function changenonmember2(){
		document.getElementById("nonmemberorderlist").style.color = "red";
		document.getElementById("nonmemberorder").style.color = "black";
		document.getElementById("nonmemberorder2").style.display = "none";
		document.getElementById("nonmemberorderlist2").style.display = "block";
	}
	function gonomemberjoin(){
		location.href='nomemberjoin.jsp';
	}
</script>
</html>