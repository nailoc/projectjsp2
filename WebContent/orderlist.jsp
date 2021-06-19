<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>주문 내역</title>
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
		section>h1{
			width :250px;
			float : left;
			font-size : 35px;
			margin : 0;
			margin-bottom : 20px;
		}
		section>h3{
			width :250px;
			float : right;
			color : red;
			margin : 0;
			margin-top : 10px;
		}
		section>div.orderinf{
			width : 90%;
			height : 250px;
			background-color : #fff;
			clear : both;
			padding-top : 30px;
			padding-left : 5%;
			padding-right : 5%;
			margin-top : 20px;
			cursor : pointer; /* 마우스 올리면 손가락 표시 나옴 */
		}
		section>div.orderinf>img{
			width : 30%;
			height : 100%;
			float : left;
		}
		section>div.orderinf>div{
			width : 70%;
			height : 100%;
			float : left;
		}
		section>div.orderinf>div>h1{
			width : 70%;
			float : left;
			margin-bottom : 60px;
			margin-left : 5%;
		}
		section>div.orderinf>div>img{
			float : right;
			margin-top : 15px;
		}
		section>div.orderinf>div>h3{
			width : 95%;
			clear : both;
			color : gray;
			margin-left : 5%;
		}
	</style>
</head>
<body>
	
	<div id = "wrapper">
	
		<!-- 헤더영역 -->
		<%@ include file = "deliveryheader2.jsp" %>
		
		<section>
			<h1>주문 내역</h1><h3>딜리버리</h3>
			<div class = "orderinf" onclick = "goorderlist()">
				<img src = "img/체크박스2.PNG">
				<div>
					<h1>버거 이름</h1>
					<img src = "img/주문완료테그.PNG">
					<h3>주문번호 : ******</h3>
					<h3>주문시간 : ******</h3>
				</div>
			</div>
			
			<div class = "orderinf">
				<img src = "img/체크박스2.PNG">
				<div>
					<h1>버거 이름</h1>
					<img src = "img/주문완료테그.PNG">
					<h3>주문번호 : ******</h3>
					<h3>주문시간 : ******</h3>
				</div>
			</div>
			
			<div class = "orderinf">
				<img src = "img/체크박스2.PNG">
				<div>
					<h1>버거 이름</h1>
					<img src = "img/주문완료테그.PNG">
					<h3>주문번호 : ******</h3>
					<h3>주문시간 : ******</h3>
				</div>
			</div>
			
		</section>
		
		<!-- 푸터 영역 -->
		<%@ include file = "deliveryfooter.jsp" %>
	
	</div>
	
	
</body>
<script>
	function goorderlist(){
		location.href = 'orderlist2.jsp';
	}
</script>
</html>