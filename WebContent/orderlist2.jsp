<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>주문 상세 내역</title>
	<link rel = "stylesheet" href = "css/style.css"></link>
	<style>
		div#wrapper{
			width : 1200px;
			margin : 0 auto;
		}
		
		section{
			width : 1000px;
			padding-left : 100px;
			padding-right : 100px;
			padding-top : 30px;
			padding-bottom : 30px;
			background-color : #e2d6c7;
		}
		div#lastorder{
			width : 1000px;
			height : 130px;
			padding-left : 100px;
			padding-right : 100px;
			padding-top : 30px;
			padding-bottom : 30px;
			background-color : #fff;
		}
		div#lastorder>div{
			width : 50%;
			height : 100%;
			float : left;
		}
		div#lastorder>div>p{
			margin : 0;
			float : left;
			font-size : 30px;
			font-weight : bold;
			color : red;
		}
		div#lastorder>div>p#date{
			color : #000;
		}
		div#lastorder>div>img#button{
			margin-top : 30px;
			cursor : pointer; /* 마우스를 올렸을때 손가락 모양이 나타나게 함 */
		}
		img#bikeimg{
			width : 150px;
			height : 150px;
			border-radius : 100px;
			margin-left : 150px;
		}
		section>h2{
			color : gray;
			width : 100%;
			font-size : 30px;
		}
		div.beforeinf{
			width : 90%;
			height : 200px;
			padding : 5%;
			background-color : #fff;
		}
		div.beforeinf>div#imgbox{
			width : 30%;
			height : 100%;
			float : left;
		}
		div.beforeinf>div#imgbox>img{
			width : 100%;
			height : 100%;
		}
		
		/* 주문 내역 */
		div#burgerimg{
			width : 50%;
			height : 100%;
			float : left;
		}
		div#burgerimg>h2, div#burgerimg>h3{
			width : 90%;
			margin : 0;
			margin-left : 10%;
		}
		div#burgerimg>h2{
			font-size : 35px;
		}
		div#burgerimg>h3{
			margin-top : 25px;
			color : gray;
		}
		div#burgercnt{
			width : 20%;
			height : 100%;
			float : left;
		}
		div#burgercnt>p{
			width : 100px;
			background-color : lightgray;
			text-align : center;
			font-size : 20px;
			padding : 5px;
			margin : 0;
			font-weight : bold;
		}
		/* 주문 정보 */
		div#addressbox{
			width : 100%;
			height : 70px;
			padding-bottom : 10px;
			border-bottom : 2px dashed lightgray;
		}
		div#addressbox>div{
			width : 100%;
			height : 100%;
		}
		div#addressbox>div>h2#useraddress{
			width : 80%;
			float : left;
		}
		div#addressbox>div>p{
			width : 10%;
			float : left;
			margin : 0;
			padding : 5px;
			text-align : center;
			color : #fff;
			font-weight : bold;
			background-color : #930000;
		}
		div#storeaddress{
			width : 100%;
			height : 120px;
			padding-top : 10px;
		}
		div#storeaddress>div{
			float : left;
			margin : 0;
			width : 20%;
			height : 100%;
		}
		div#storeaddress>div>h2{
			color : gray;
			width : 100%;
		}
		div#storeaddress>div>h2.orderinf{
			color : #000;
			width : 100%;
			font-weight : bold;
		}
		/* 결재 내역 */
		div#pricebox{
			width : 100%;
			height : 75%;
			/* background-color : #930000; */
			border-bottom : 2px dashed lightgray;
		}
		div#pricebox>h2{
			margin : 0;
			float :left;
			width : 33%;
			color : gray;
		}
		div#pricebox>h2.orderinf{
			margin-top : 30px;
			color : #000;
			font-weight : bold;
		}
		div#totalpricebox{
			width : 100%;
			height : 22%;
			padding-top : 3%; 
		}
		div#totalpricebox>h2{
			float : left;
			margin : 0;
			margin-left : 600px;
		}
		div#totalpricebox>p#totalprice{
			float : left;
			margin : 0;
			margin-left : 15px;
			font-size : 40px;
			color : red;
		}
	</style>
</head>
<body>

	<div id = "wrapper">
		
		<!-- 헤더영역 -->
		<%@ include file = "deliveryheader2.jsp" %>
		
		<div id = "lastorder">
				<div>
					<p id = "date">날짜와 시간</p>
					<p>주문완료</p>
					<img src = "img/그대로주문하기버튼.PNG" id = "button">
				</div>
				<div>
					<img src = "img/오토바이아이콘.PNG" id = "bikeimg">
				</div>
			</div>
		<section>
			
			<h2>주문 내역</h2>
			<div class = "beforeinf">
				<div id = "imgbox">
					<img src = "img/사람아이콘.JPG">
				</div>
				<div id = "burgerimg">
					<h2 id = "burgername">버거 이름</h2>
					<h2 id = "burgerprice">버거 가격</h2>
					<h3 id = "burgercomponent">구성품</h3>
				</div>
				<div id = "burgercnt">
					<p>수량 n개</p>
				</div>
			</div>
			
			<h2>주문 정보</h2>
			<div class = "beforeinf">
				<div id = "addressbox">
					<div>
						<h2 id = "useraddress">유저 주소칸</h2>
						<p>주문완료</p>
					</div>
				</div>
				<div id = "storeaddress">
						<div id = "ordernumberbox">
							<h2>주문번호</h2>
							<h2 id = "ordernumber" class = "orderinf">*******</h2>
						</div>
						<div id = "ordertimebox">
							<h2>주문시간</h2>
							<h2 id = "ordertime" class = "orderinf">*******</h2>
						</div>
						<div id = "userphnbox">
							<h2>연락처</h2>
							<h2 id = "userphn" class = "orderinf">*******</h2>
						</div>
						<div id = "storebox">
							<h2>매장</h2>
							<h2 id = "store" class = "orderinf">*******</h2>
						</div>
						<div id = "storephnbox">
							<h2>매장 전화번호</h2>
							<h2 id = "storephn" class = "orderinf">*******</h2>
						</div>
					</div>
			</div>
			
			<h2>결재 내역</h2>
			<div class = "beforeinf">
				<div id = "pricebox">
					<h2>주문금액</h2>
					<h2>쿠폰</h2>
					<h2>결재방법</h2>
					<h2 class = "orderinf" id= "pay">*****원</h2>
					<h2 class = "orderinf" id= "coupon">----원</h2>
					<h2 class = "orderinf" id= "creditcard">신용카드 결재</h2>
				</div>
				<div id = "totalpricebox">
					<h2>결재금액</h2>
					<p id = "totalprice">*****원</p>
				</div>
			</div>
			
		</section>
		
		<!-- 푸터 영역 -->
		<%@ include file = "deliveryfooter.jsp" %>
		
	</div>
	
</body>
<script>
	
</script>
</html>