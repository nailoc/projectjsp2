<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.hk.jsp.dao.NoneUserDto"%>

<%@ page import="com.hk.jsp.dao.UserDao"%>

<%@ page import="com.hk.jsp.util.SHA256"%>

<%@ page import="java.io.PrintWriter"%>

<%

	request.setCharacterEncoding("UTF-8");

	String userName = null;

	String userPassword = null;

	String userEmail = null;

	if(request.getParameter("userName") != null) {

		userName = (String) request.getParameter("userName");

	}

	if(request.getParameter("userPassword") != null) {

		userPassword = (String) request.getParameter("userPassword");

	}

	if(request.getParameter("userEmail") != null) {

		userEmail = (String) request.getParameter("userEmail");

	}

	if (userName == null || userPassword == null || userEmail == null) {

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('입력이 안 된 사항이 있습니다.');");

		script.println("history.back();");

		script.println("</script>");

		script.close();

	} else {

		UserDao dao = new UserDao();

		int result = dao.NoneJoin(new NoneUserDto(userName, userPassword, userEmail, SHA256.getSHA256(userEmail), false));

		if (result == -1) {

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("alert('이미 존재합니다.');");

			script.println("history.back();");

			script.println("</script>");

			script.close();

		} else {

			session.setAttribute("userName", userName);

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("location.href = 'emailSendAction.jsp';");

			script.println("</script>");

			script.close();

		}

	}

%>




