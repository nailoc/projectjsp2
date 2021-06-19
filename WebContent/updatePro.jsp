<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.hk.jsp.dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspweb13</title>
<link rel="stylesheet" href="css/style.css"></link>
<style></style>
</head>
<body>

	<%
		UserDto userDto = new UserDto();
	
		String phn = request.getParameter("phn");
		String pw = request.getParameter("password");
		
		userDto.setUserPhone(phn);
		userDto.setUserPw(pw);
	
		String id=(String)session.getAttribute("sessionId");
		userDto.setUserEmailId(id);
		
		UserDao dao = UserDao.getInstance();
		dao.updateMember(userDto);
	
		
		out.println("<script>alert('회원정보수정');location.href='myking_main.jsp'</script>");
	%>
	
</body>
<script></script>
</html>
