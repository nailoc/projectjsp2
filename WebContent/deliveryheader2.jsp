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
			width : 1200px;
			/* height : 200px; */
			background-color : #e80000;
		}
		
		header div#submenu{
			width : 100%;
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
			width : 1100px;
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
			width : 50%;
			height : 100%;
			float : left;
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
			float : left;
			width : 200px;
			/* border : 1px solid blue; */
			margin : 0;
			font-size : 25px;
			font-weight : bold;
			color : #fff;
		}
		
		header div#cartpage{
			width : 1000px;
			height : 130px;
			padding-left: 100px;
			padding-right: 100px;
			background-image : url(img/카트배경화면.PNG);
		}
		header div#cartpage div#deliverylist, header div#cartpage div#cart{
			width : 40%;
			height : 100%;
			padding-left : 5%;
			padding-right: 5%;
			float : left;
			cursor : pointer; /* 마우스를 올렸을때 손가락 모양이 나타나게 함 */
			/* border : 1px solid blue; */
		}
		header div#cartpage div#deliverylist>img{
			width : 40%;
			height : 100%;
			float : left;
		}
		header div#cartpage div#deliverylist>p{
			width : 60%;
			height : 100%;
			float : left;
			font-weight : bold;
			font-size : 28px;
			line-height : 80px;
			color : #fff;
		}
		header div#cartpage div#cart>img{
			width : 40%;
			height : 100%;
			float : left;
		}
		header div#cartpage div#cart>p{
			width : 60%;
			height : 100%;
			float : left;
			font-weight : bold;
			font-size : 28px;
			line-height : 80px;
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
	</style>
</head>
<body>
		<%
			request.setCharacterEncoding("utf-8");
		
			String id = null;
			UserDto dto = new UserDto();
			if(session.getAttribute("sessionId")==null){
				out.println("<script>alert('로그인되지 않았습니다');location.href='login.jsp'</script>");
			}else{
				request.setCharacterEncoding("utf-8");
				id=(String)session.getAttribute("sessionId");
				UserDao dao = UserDao.getInstance();
				dto = dao.getUserInfo(id);
			}

		%>
	<header>
		
		<div id = "submenu">
			<h4><a href = "login.jsp">브랜드홈</a><a href = "logoutPro.jsp">로그아웃</a><a href = "myking_main.jsp">MY킹</a><a href = "">고객센터</a></h4>
		</div>
	
		<div id = "icon">
			<div id= "logo">
				<a href = "login.jsp"><img src = "img/버거킹아이콘.PNG" alt = "버거킹아이콘"></a>
				<h1><a href = "delivery.jsp">딜리버리</a></h1>
			</div>
			<div id = "join">
				<div>
					<img src = "img/사람아이콘.JPG">
					<h3><%=dto.getUserName() %>님 안녕하세요</h3>
					<p onclick="gomyking()">MY킹 바로가기</p>
				</div>
			</div>
		</div>
		
		<div id = "cartpage">
			<div id = "deliverylist" onclick = "goorderlist()">
				<img src = "img/오토바이아이콘.PNG">
				<p>딜리버리 주문내역</p>
			</div>
			<div id = "cart" onclick  = "gocartlist()">
				<img src = "img/카트아이콘.PNG">
				<p>카트</p>
			</div>
		</div>
		
		<div id = "now">
			<p><a href = "delivery.jsp">딜리버리</a> 〉 <a  href = "delivery.jsp">메뉴</a></p>
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
	function gomyking() {
		location.href='myking_main.jsp';
	}
</script>
</html>