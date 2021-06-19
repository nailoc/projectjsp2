<%@page import="com.hk.jsp.dao.UserDao"%>
<%@page import="com.hk.jsp.dao.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspweb13</title>
<link rel="stylesheet" href="css/ordersuccess.css"></link>
<style></style>
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

<div class="wrapper">	
	<div class="top">
		<div class="margin">
		<div class="top-top">
			<div class="top_menu">
				<ul class="menu">
					<li><a href="index.jsp">브랜드홈</a></li>
					<li><a href="logoutPro.jsp">로그아웃</a></li>
					<li><a href="myking_main.jsp">MY킹</a></li>
					<li><a href="">고객센터</a></li>
				</ul>
			</div>								
		</div>
		
		<div class="top-logo">
			<div class="logo">
				<div class="image">
					<img src="images/order_logo.png">
				</div>
				<div class="write">
					<p>딜리버리</p>
				</div>
			</div>
			
			<div class="MyKing">
				<img src="images/사용자.png">
				<p><%=dto.getUserName() %>님 안녕하세요</p>
				<p><a href="">MY킹 바로가기 ></a></p>
			</div>
		</div>
		</div>
	</div>
	
	<div class="order">
		<div class="margin">
		<a href="delivery.jsp">
		<div class="delivery-order">
			<img src="images/오토바이.png">
			<h2>딜리버리 주문내역</h2>
			<h3>주문내역이 없습니다.</h3>
		</div>
		</a>
		
		<a href="cartlist.jsp">
		<div class="cart">
			<img src="images/카트.png">
			<h2>카트</h2>
			<h3>스태커2와퍼 라지세트</h3>
		</div>
		</a>
		</div>
	</div>
	
	<div class="middle">
	<div class="margin">
		<p class="kungs">딜리버리 > 주문하기</p>
	</div>
	</div>
	
	<div class="main">
	<div class="margin">
		<div class="main-order">
			<h1>주문완료</h1>			
			
			<h3>결제완료</h3>
			<p>이용해 주셔서 감사합니다.</p>
		</div>
	</div>
	</div>
<footer>		
		<div id = "inf">
			
			<img src = "images/버거킹글자.png">
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
				<a href = "https://www.burgerking.co.kr/#/recruit"><img src = "images/인재채용.png" alt = "인재채용"></a>
				<a href = "https://www.burgerking.co.kr/#/branch"><img src = "images/가맹점모집.png" alt = "가맹점모집"></a>
			</p>
		</div>
		
	</footer> 
	
	<div style="position: fixed; bottom : 20px; right: 20px;">
	<a href="#top"><img src="images/화살표.png"></a>
	</div>
</div>

</body>
<script src="js/jquery-3.6.0.min.js"></script>
<script></script>
</html>