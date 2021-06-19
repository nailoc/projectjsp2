<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
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
	String bg = request.getParameter("bg");
	String side = request.getParameter("side");
	String drink = request.getParameter("drink");
	
	ArrayList<String> list1 = (ArrayList)session.getAttribute("side");
	ArrayList<String> list2 = (ArrayList)session.getAttribute("drink");
	
	if(list1 == null || list2 == null){
		list1 = new ArrayList(); 
		list2 = new ArrayList(); 
	}
	
	list1.add(side);
	list2.add(drink);
	
	session.setAttribute("side", list1);
	session.setAttribute("drink", list2); 
	
	out.println("<script>location.href='addCartList.jsp?bg="+bg+"' </script>");

%>
</body>
<script>
</script>
</html>
