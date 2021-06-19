<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.hk.jsp.dao.*" %>
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
		String id = null;
		String pw = request.getParameter("password");
		UserDto dto = new UserDto();
		if(session.getAttribute("sessionId")==null){
			out.println("<script>alert('로그인되지 않았습니다'); location.href='login_reg.jsp'</script>");
			
		}else{
			id = (String)session.getAttribute("sessionId");
			UserDao dao = UserDao.getInstance();
			int result = dao.deleteMember(id,pw);
			if(result==1){
				out.println("<script>alert('회원탈퇴가 성공했습니다.'); location.href='login.jsp'</script>");
			}else{
				out.println("<script>alert('회원탈퇴가 실패했습니다.'); location.href='myking_main.jsp'</script>");
			}
		}
	%>
	
	
</body>
<script></script>
</html>
