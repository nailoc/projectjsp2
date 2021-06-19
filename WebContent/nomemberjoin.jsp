<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>비회원 로그인</title>
	<link rel = "stylesheet" href = "css/style.css"></link>
	<style>
		div#wrapper{
			width : 1200px;
			background-color : #e2d6c7;
		}
		div#wrapper section{
			width : 750px;
			margin : 0 auto;
			margin-top : 70px;
			
		}
		div#wrapper section>h2{
			font-weight : bold;
			font-size : 40px;
			margin : 0;
		}
		div#wrapper section>p{
			font-weight : bold;
			font-size : 20px;
			margin : 0;
			padding-top : 5%;
			padding-bottom : 3%;
		}
		div#wrapper section>div#agree{
			width : 90%;
			background-color : #fff;
			padding-left : 5%;
			padding-right : 5%;
			padding-top : 5%;
			padding-bottom : 5%;
		}
		div#wrapper section>div#agree>div#box1{
			width : 100%;
			height : 50px;
			/* border : 1px solid blue; */
			/* text-align : center; */
			line-height : 55px;
		}
		div#wrapper section>div#agree>div#box1>img#agreecheckbox{
			float : left;
			/* border : 1px solid red; */
			margin : 0;
			height : 100%;
			cursor : pointer; /* 마우스를 올렸을때 손가락 모양이 나타나게 함 */
		}
		div#wrapper section>div#agree>div#box1>p{
			width : 250px;
			float : left;
			/* border : 1px solid red; */
			font-weight : bold;
			font-size : 25px;
			margin : 0;
			margin-left : 10px;
		}
		div#wrapper section>div#agree>div#box1>img#updown{
			float : right;
			/* border : 1px solid red; */
			margin : 0;
			height : 50%;
			margin-right : 25px;
			margin-top : 15px;
			cursor : pointer; /* 마우스를 올렸을때 손가락 모양이 나타나게 함 */
		}
		div#wrapper section>div#agree>div#box2{
			width : 100%;
			display : none;
		}
		div#wrapper section>div#agree>div#box2>img{
			width : 100%;
		}
		div#nonmemberuserid{
			width : 100%;
			height : 200px;
			background-color : #fff;
		}
		div#nonmemberuserid div.inf{
			width : 100%;
			height : 45%;
			/* border : 1px solid red; */
		}
		div#nonmemberuserid div.inf>h2{
			width : 25%;
			height : 100%;
			margin : 0;
			margin-left : 5%;
			line-height : 120px;
			float : left;
			/* border : 1px solid red; */
		}
		div#nonmemberuserid div.inf>input{
			width : 66%;
			height : 45%;
			margin : 0;
			margin-top : 30px;
			border : none;
			border-bottom : 1px solid gray;
			font-size : 30px;
			float : left;
		}
		div#checknumbutton{
			width : 100%;
			text-align : center;
			margin-top : 30px;
		}
		div#checknumbutton>img{
			cursor : pointer; /* 마우스를 올렸을때 손가락 모양이 나타나게 함 */
		}
		
		div#nonmemberpassword{
			width : 100%;
			height : 170px;
			/* border : 1px solid red; */
			background-color : #fff;
			margin-top : 30px;
		}
		div#nonmemberpassword>h2{
			width : 20%;
			height : 100%;
			margin : 0;
			margin-left : 5%;
			float : left;
			/* border : 1px solid red; */
			line-height : 100px;
		}
		
		div#nonmemberpassword>input{
			width : 70%;
			float : left;
			margin : 0;
			margin-top : 30px;
			border : none;
			border-bottom : 1px solid gray;
			font-size : 30px;
		}
		div#nonmemberorder{
			width : 100%;
			text-align : center;
			margin-top : 30px;
			margin-bottom : 50px;
		}
		div#nonmemberorder>img{
			cursor : pointer; /* 마우스를 올렸을때 손가락 모양이 나타나게 함 */
		}
		button#buttonImg{
		border : none;
		width : 271px;
		height : 60px;
		margin : 0;
		background : url(img/비회원주문버튼.PNG) no-repeat;
		cursor:pointer;
		}
	</style>
</head>
<body>

	<div id = "wrapper">
	
	<!-- 헤더영역 -->
	<%@ include file = "deliveryheader.jsp" %>
	
	<section>
		<h2>비회원 주문</h2>
		
		<p>개인정보 수집</p>
		<div id = "agree">
			<div id = "box1">
				<img src = "img/체크박스1.PNG" onclick = "changecheck()" id = "agreecheckbox"> 
				<p>버거킹 이용약관</p>
				<img src = "img/이용약관화살표.PNG" onclick = "updown()" id = "updown">
			</div>
			<div id = "box2">
				<img src = "img/버거킹 이용약관.PNG">
			</div>
		</div>
		
		<p>비회원 설정</p>
	
		<form method="post" action="userRegisterAction.jsp">
		<div id = "nonmemberuserid">
			<div class = "inf">
				<h2>이름</h2>
				<input type = "text" id = "name" name = "userName" placeholder = "받는 분의 이름을 입력해주세요">
				
			</div>
			
			<div class = "inf">
				<h2>이메일</h2>
				<input type = "text" id = "phn" name = "userEmail" placeholder = "이메일을 입력해 주세요">
			</div>
		</div>
		<div id = "checknumbutton"><img src = "img/인증번호발송버튼.PNG" id = "phncheck" onclick = "phncheck()"></div>
		
		<div id="nonmemberpassword">
			<h2>비밀번호</h2>
			<input type = "password" id = "password" name = "userPassword" placeholder = "4~6 이내의 숫자로만 입력하세요">
			
		</div>
		<div id = "nonmemberorder"><button id="buttonImg" type="submit"></button></div>
		<!-- <img src = "img/비회원주문버튼.PNG" onclick="nonmemberJoin()"> -->
		</form>
	</section>
	
	<!-- 푸터 영역 -->
	<%@ include file = "deliveryfooter.jsp" %>
	
	</div>
	
</body>
<script>
	var swt = 0;
	function updown(){
		if(swt == 0){
			document.getElementById("box2").style.display = "block";
			swt = 1;
		}
		else if(swt == 1){
			document.getElementById("box2").style.display = "none";
			swt = 0;
		}
	}
	var swt2 = 0;
	function changecheck(){
		if(swt2 == 0){
			document.getElementById("agreecheckbox").src = "img/체크박스2.PNG";
			swt2 = 1;
		}
		else if(swt2 == 1){
			document.getElementById("agreecheckbox").src = "img/체크박스1.PNG";
			swt2 = 0;
		}
	}
	
	function phncheck(){
		alert("확인되었습니다.");
	}
	
	
</script>
</html>