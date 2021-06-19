<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="javax.mail.Transport" %>
<%@ page import="javax.mail.Message" %>
<%@ page import="javax.mail.Address" %>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.internet.MimeMessage" %>
<%@ page import="javax.mail.Session" %>
<%@ page import="javax.mail.Authenticator" %>
<%@ page import="java.util.Properties" %>
<%@ page import="com.hk.jsp.dao.UserDao"%>
<%@ page import="com.hk.jsp.util.SHA256"%>
<%@ page import="java.io.PrintWriter"%>

<%

	  UserDao userDAO = new UserDao();
   String userName = null;
   if(session.getAttribute("userName") != null) {
	   userName = (String) session.getAttribute("userName");
   }
   if(userName == null) {
	   PrintWriter script = response.getWriter();
	   script.println("<script>");
	   script.println("alert('로그인을 해주세요.');");
	   script.println("location.href = 'nomemberjoin.jsp'");
	   script.println("</script>");
	   script.close();
	   return;
   }
   
   out.println("<script>location.href='delivery.jsp'</script>");

	/*   boolean emailChecked = userDAO.getUserEmailChecked(userName);
   if(emailChecked == true) {
	   PrintWriter script = response.getWriter();
	   script.println("<script>");
	   script.println("alert('이미 인증 된 회원입니다.');");
	   script.println("location.href = 'nomemberjoin.jsp'");
	   script.println("</script>");
	   script.close();
	   return;
   }

	 */

	// 사용자에게 보낼 메시지를 기입합니다.

	/* String host = "http://localhost:9090/test/";
	String from = "ehdaorwn3192@gmail.com";
	String to = userDAO.getUserEmail(userName);
	String subject = "테스트메일";
	String content = "다음 링크에 접속하여 이메일 확인을 진행하세요." +
		"<a href='" + host + "emailCheckAction.jsp?code=" + new SHA256().getSHA256(to) + "'>이메일 인증하기</a>";

	
	out.println("<script>location.href='nomemberjoin.jsp'</script>");
 */
	// SMTP에 접속하기 위한 정보를 기입합니다.

/* 	   Properties p = new Properties();
   p.put("mail.smtp.user", from);
   p.put("mail.smtp.host", "smtp.googlemail.com");
   p.put("mail.smtp.port", "456");
   p.put("mail.smtp.starttls.enable", "true");
   p.put("mail.smtp.auth", "true");
   p.put("mail.smtp.debug", "true");
   p.put("mail.smtp.socketFactory.port", "587");
   p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
   p.put("mail.smtp.socketFactory.fallback", "false");
   p.put("mail.smtp.ssl.trust", "smtp.gmail.com"); */
   
   

	/* try {
	   Authenticator auth = new Gmail();
	   Session ses = Session.getInstance(p, auth);
	   ses.setDebug(true);
	   MimeMessage msg = new MimeMessage(ses);
	   msg.setSubject(subject);
	   Address fromAddr = new InternetAddress(from);
	   msg.setFrom(fromAddr);
	   Address toAddr = new InternetAddress(to);
	   msg.addRecipient(Message.RecipientType.TO, toAddr);
	   msg.setContent(content, "text/html;charset=UTF8");
	   Transport.send(msg);
	   
   } catch (Exception e) {
	   e.printStackTrace();
	   PrintWriter script = response.getWriter();
	   script.println("<script>");
	   script.println("alert('오류가 발생했습니다..');");
	   script.println("history.back();");
	   script.println("</script>");
	   script.close();
	   return;
   }
   */         
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspweb13</title>
<link rel="stylesheet" href="css/style.css"></link>
<style></style>
</head>
<body>
	
</body>
<script></script>
</html>
