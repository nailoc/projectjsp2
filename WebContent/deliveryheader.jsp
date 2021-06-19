<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>헤더</title>
	<link rel = "stylesheet" href = "css/style.css"></link>
	<style>
		
		header{
			width : 1200px;
			height : 200px;
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
			float:left;
		}
		div#icon div#join>a{
			width : 200px;
			height : 100%;
		}
		div#icon div#join>a>img{
			margin-top : 20px;
			margin-right : 70px;
			float:right;
		}
		
		
		header div#now{
			width : 100%;
			height : 50px;
			background-color : #000;
		}
	</style>
</head>
<body>

	<header>
		
		<div id = "submenu">
			<h4><a href = "index.jsp">브랜드홈</a><a href = "login.jsp">로그인</a><a href = "">고객센터</a></h4>
		</div>
	
		<div id = "icon">
			<div id= "logo">
				<a href = "login.jsp"><img src = "img/버거킹아이콘.PNG" alt = "버거킹아이콘"></a>
				<h1><a href = "login.jsp">버거킹</a></h1>
			</div>
			<div id = "join"><a href = "join.jsp"><img src = "img/버거킹회원가입로고.PNG" alt = "회원가입로고"></a></div>
		</div>
		
		<div id = "now">
			
		</div>
		
	</header>
	
</body>
<script>
	
</script>
</html>