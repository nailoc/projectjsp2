<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hk.jsp.dao.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>헤더</title>
	<link rel = "stylesheet" href = "css/style.css"></link>
	<style>
		
		header{
			width : 100%;
			margin: 0 auto;
			/* height : 200px; */
			background-color : #e80000;
			margin-top: -20px;
		}
		
		header div#submenu{
			width : 80%;
			margin: 0 auto;
			height : 40px;
			/* border : 1px solid #000; */
			line-height : 40px;
		}
		header div#submenu>h4{
			width : 100%;
			height : 100%;
			text-align : right;
		}
		header div#submenu>h4>a{
			margin-right : 20px;
			color : #fff;
			text-decoration : none;
		}
		header div#icon{
			width : 90%;
			margin: 0 auto;
			height : 110px;
			padding-left: 100px;
			/* border : 1px solid #000; */
		}
		div#icon div#logo{
			width : 50%;
			height : 100%;
			float:left;
		}
		
		div#icon div#logo>a{
			width : 110px;
			height : 100%;
			/* border : 1px solid blue; */
			float:left;
			margin : 0;
		}
		div#icon div#logo>a>img{
			width : 70%;
			height : 70%;
			margin-top : 10%;
			margin-left : 20%;
		}
		div#icon div#logo>h1{
			width : 200px;
			height : 100%;
			/* border : 1px solid blue; */
			float:left;
			margin : 0;
			line-height : 110px;
		}
		div#icon div#logo>h1>a{
			width : 100%;
			height : 100%;
			color : #fff;
			text-decoration : none;
			font-size : 40px;
		}
		
		div#icon div#join{
			width : 35%;
			height : 100%;
			float : right;
			/* background-color : lightblue; */
		}
		div#icon div#join>div{
			width : 50%;
			height : 70%;
			float : left;
		/* 	border : 1px solid blue; */
			margin-top : 10px;
			margin-left : 170px;
			cursor : pointer; /* 마우스를 올렸을때 손가락 모양이 나타나게 함 */
		}
		#join a {
			text-decoration: none;
			color: #ffffff;
		}
		div#icon div#join>div>img{
			height : 80%;
			float : left;
			/* border : 1px solid blue; */
		}
		div#icon div#join>div>h3{
			float : left;
			width : 200px;
			/* border : 1px solid blue; */
			margin : 0;
			margin-top : 10px;
			color : #fff;
		}
		div#icon div#join>div>p{
			width : 250px;
			/* border : 1px solid blue; */
			margin : 0;
			font-size : 22px;
			font-weight : bold;
			color : #fff;
		}
		
		
		header div#cartpage{
			width : 100%;
			height : 130px;
			/*padding-left: 100px;
			padding-right: 100px;*/
			background-image : url(img/카트배경화면.PNG);
		}
		header div#cartpage div#deliverylist, header div#cartpage div#cart{
			width : 39%;
			height : 100%;
			padding-left : 7%;
			padding-right: 3%;
			float : left;
			cursor : pointer; /* 마우스를 올렸을때 손가락 모양이 나타나게 함 */
			/* border : 1px solid blue; */
		}
		header div#cartpage div#deliverylist>img{
			width : 20%;
			height : 100%;
			float : left;
		}
		header div#cartpage div#deliverylist>p{
			width : 50%;
			height : 30%;
			float : left;
			font-weight : bold;
			font-size : 25px;
			line-height : 40px;
			color : #fff;
		}
		
		#cartpage {
			width: 80%;
			margin: 0 auto;
		}
		header div#cartpage div#cart>img{
			width : 20%;
			height : 100%;
			float : left;
		}
		header div#cartpage div#cart>p{
			width : 50%;
			height : 30%;
			float : left;
			font-weight : bold;
			font-size : 25px;
			line-height : 40px;
			color : #fff;
		}
		
		header div#now{
			width : 100%;
			height : 50px;
			background-color : #000;
			color : #fff;
			margin : 0;
		}
		header div#now>p{
			width : 85%;
			margin : 0;
			margin-left : 15%;
			line-height : 50px;
		}
		header div#now>p>a{
			color : #fff;
			text-decoration : none;
		}
		
		
		#con {
			width: 100%;
		}
		
		#deliverylist span, #cart span {
			width: 100px;
			height: 40%;
			line-height: 180px;
			margin-left: -370px;
			font-size: 20px;
			color: #ffffff;
		}
	</style>
</head>
<body>
	<%
		String id = null;
		UserDto dto = new UserDto();
		if(session.getAttribute("sessionId")==null){
			out.println("<script>alert('로그인되지 않았습니다');location.href='login.jsp'</script>");
		}else{
			id=(String)session.getAttribute("sessionId");
			UserDao dao = UserDao.getInstance();
			dto = dao.getUserInfo(id);
		}

		
	%>
	
	<header>
		
		<div id = "submenu">
			<h4><a href = "login.jsp">브랜드홈</a><a href = "logoutPro.jsp">로그아웃</a><a href = "myking_main.jsp">MY킹</a><a href = "">고객센터</a></h4>
		</div>
	
	<div id="con">
		<div id = "icon">
			<div id= "logo">
				<a href = "login.jsp"><img src = "img/버거킹아이콘.PNG" alt = "버거킹아이콘"></a>
				<h1><a href = "delivery.jsp">딜리버리</a></h1>
			</div>
			<div id = "join">
				<div>
					<img src = "img/사람아이콘.JPG">
					<h3><%=dto.getUserName() %> 님 안녕하세요</h3>
					<p><a href="myking_main.jsp">MY킹 바로가기 ></a></p>
				</div>
			</div>
		</div>
		
		<div id = "cartpage">
			<div id = "deliverylist" onclick = "goorderlist()">
				<img src = "img/오토바이아이콘.PNG">
				<p>딜리버리 주문내역</p>
				<span>(주문내역이 없습니다.)</span>
			</div>
			<div id = "cart" onclick  = "gocartlist()">
				<img src = "img/카트아이콘.PNG">
				<p>카트</p>
				<span>(카트에 담은 상품이 없습니다.)</span>
			</div>
		</div>
	</div>
		
		
	</header>
	
</body>
<script>
	function goorderlist(){
		location.href='orderlist.jsp';
	}
	function gocartlist(){
		location.href='cartlist.jsp';
	}
</script>
</html>