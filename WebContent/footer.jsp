<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>footer</title>
	<link rel = "stylesheet" href = "css/style.css"></link>
	<style>
		footer{
			width : 1200px;
			height : 250px;
			background-color : #2c2c2c;
		}
		footer div#inf{
			width : 600px;
			height : 100%;
			color : gray;
			float : left;
		}
		footer div#inf img{
			margin-top : 80px;
			margin-left : 50px;
		}
		footer div#inf p{
			margin-left : 50px;
		}
		
		footer div#other{
			width : 600px;
			height : 100%;
			float : left;
		}
		footer div#other>p{
			width : 100%;
			text-align : center;
			margin-top : 80px;
			color : gray;
		}
		footer div#other>p>a{
			color : gray;
			text-decoration : none;
		}
		footer div#other>p#button{
			margin : 0;
		}
	</style>
</head>
<body>

	<footer>
	
		
		
		<div id = "inf">
			<img src = "img/버거킹글자.PNG"  alt = "버거킹글자">
			<p>서울 종로구 삼봉로 71 G 타워 2층 주식회사 비케이알 | 전화주문 1599-0505<br>
							사업자 등록번호 101-86-76277 | (주)BKR 대표이사 문영주<br>
							Copyright 2019 BKR Co., Ltd. All right Reserved<br>
			</p>
		</div>
		
		<div id = "other">
		
			<p>
			<a href = "https://www.burgerking.co.kr/#/branch">이용약관</a> | 
			<a href = "https://www.burgerking.co.kr/#/privacy">개인정보취급방침</a> | 
			<a href = "https://www.burgerking.co.kr/#/legal">법적고지</a>
			</p>
			<p id = "button">
				<a href = "https://www.burgerking.co.kr/#/recruit"><img src = "img/인재채용.PNG" alt = "인재채용"></a>
				<a href = "https://www.burgerking.co.kr/#/branch"><img src = "img/가맹점모집.PNG" alt = "가맹점모집"></a>
			</p>
		</div>
		
	</footer>
	
</body>
<script>
	
</script>
</html>