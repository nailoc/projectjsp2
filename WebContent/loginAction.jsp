<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="com.hk.jsp.dao.*"%>
<%@page import="com.hk.jsp.vo.*"%>
<%@ page import="java.io.PrintWriter" %>
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
		String userEmailId = request.getParameter("email");
		String userPw = request.getParameter("password");

		
		UserDao userdao = new UserDao();
		int result = userdao.login(userEmailId, userPw);
		
		if(result==1){
			
			session.setAttribute("sessionId", userEmailId);
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인 성공')");
			script.println("location.href='delivery.jsp'");
			script.println("</script>");
		}else if(result ==0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다')");
			script.println("history.back()");
			script.println("</script>");
		}else if(result==-2){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('아이디를 확인해주세요')");
			script.println("history.back()");
			script.println("</script>");
		}else if(result==-1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('서버 오류 입니다')");
			script.println("history.back()");
			script.println("</script");
		}
	%>
</body>
<script></script>
</html>
