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
		request.setCharacterEncoding("UTF-8");
		String userEmailId = request.getParameter("email");
		String userName = request.getParameter("name");
		String userPhone = request.getParameter("phn");
		String userPw = request.getParameter("password");
		String userPw2 = request.getParameter("password2");
		
		
	
		if(userEmailId == "" || userPw == "" || userPw2 == ""|| // 빈칸이 있을 때 실행됨
		   userName == "" || userPhone == ""){
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('빈칸을 확인해 주세요')");
			script.println("history.back()");
			script.println("</script>");
		
		
		}else{	
				if(userPw.equals(userPw2)){				
					
					UserDao userdao = UserDao.getInstance();
					UserDto userDto = new UserDto();
					
					userDto.setUserEmailId(userEmailId);
					userDto.setUserName(userName);
					userDto.setUserPhone(userPhone);
					userDto.setUserPw(userPw);
					
					
					int result = userdao.join(userDto);
				 
					if(result == -1){
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('서버오류')");
						script.println("history.back()");
						script.println("</script>");
						
					}else if(result == 0){
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('이미 아이디가 존재합니다')");
						script.println("history.back()");
						script.println("</script>");
						
					}else{
						session.setAttribute("sessionId", userEmailId);
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('회원가입을 축하드립니다')");
						script.println("location.href='delivery.jsp'");
						script.println("</script>");
						
					}
				
				}else{
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('비밀번호틀림')");
					script.println("history.back()");
					script.println("</script>");
							
				}
			
			
			
	
		}
 	%>
</body>
<script></script>
</html>
