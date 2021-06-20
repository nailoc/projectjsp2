<%@page import="com.hk.jsp.dao.BurgerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
			
			BurgerDao dao = BurgerDao.getInstance();
			String email = (String) session.getAttribute("sessionId");
			int delete = dao.deleteCart(email);
			
			session.invalidate();
			out.println("<script> location.href='login.jsp' </script>");
			
	%>
</body>
<script></script>
</html>
