<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="com.hk.jsp.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspweb13</title>
<link rel="stylesheet" href="css/style_main.css"></link>
<style></style>
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
	<a name="top"></a>
	<jsp:include page="header_chg.jsp" flush="true"/>


	<div class="myk_container">
		<div class="page_navi">
			<a href="delivery.jsp"><span>딜리버리</span></a>
			<span>></span>
			<a href="myking_main.jsp"><span>MY킹</span></a>
			
			<p>
			
			배달지를 선택하세요
			<a href="" id="location_btn">변경</a><p>
		</div>
	</div>
	
	
	<div class="myk_content1">
		<div class="con_title">
			<h2>MY킹</h2>
		</div>
		
		<div class="member">
			<div class="user">
				<p><strong><%=dto.getUserName() %></strong> 님 반갑습니다<br><br>
				<a href="myking_change.jsp"><span>정보변경 ></span></a></p>
			</div>
			
			<div class="coupon">
				<a href="myking_coupon.jsp">
				<img src="images/coupon.jpg" width="100" height="100">
				<p>나의 쿠폰<br><br>
				<strong>(쿠폰 수)장</strong></p>
				</a>
			</div>
			
			<div class="stamp">
					<a href="myking_stamp.jsp">
						<img src="images/stamp.jpg" width="100" height="100">
						<p>나의 스탬프<br><br>
						<strong>(스탬프 수)개</strong>
						</p>
					</a>
			</div>
		</div>
		
	</div>
	
	
	<div class="myk_content2">
		<div class="set">
				<p><a href="myking_set.jsp"><strong>MY세트</strong>
				<img src="images/burger.png" width="100" height="100" align="middle"></a></p>
		</div>
		
		<div class="place">
				<p><a href="myking_place.jsp"><strong>MY배달지</strong>
				<img src="images/location.png" width="100" height="100" align="middle"></a></p>
		</div>
	</div>
	
	<jsp:include page="top.jsp" flush="true"/>
	
	<jsp:include page="footer_chg.jsp" flush="true"/>
	

</body>
<script></script>
</html>