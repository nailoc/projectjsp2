<%@page import="java.util.ArrayList"%>
<%@page import="com.hk.jsp.dao.*"%>
<%@page import="com.hk.jsp.vo.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@page import="java.util.List"%>

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
	// 상품을 선택하면 여기로 넘어온다.
	// 여기서 상품 정보를 장바구니 db에 넣고
	// db에 insert 가 끝나면
	// 장바구니 화면으로 간다.
	
	BurgerDao dao = BurgerDao.getInstance();
	
	
	// out.println("<h1>카트 db에 넣을 자료들</h1>");
	
	// delivery.jsp 화면에서는 parameter가 name으로 넘어오기 때문에 name을 pseq로 변경해야한다.
	
	// 버거 품번
	// 버거박스의 품번들
	String bg = request.getParameter("bg");
	
	// 딜리버리에서 바로 넘어가는 애들 품번들
	String name = request.getParameter("name");
	// name -> pseq 로 변환
	String pseq = dao.castingNameToPseq(name);
	
	/* 사이드메뉴와 음료 품번
	String side = request.getParameter("side");
	String drink = request.getParameter("drink");
	 */
	 
	 
	/* out.println("바로넘어가는애: "+pseq);
	out.println("버거박스 품번: "+bg); */
	
	
	String email = (String) session.getAttribute("sessionId");
	int kind = dao.getKind(bg);
	
	// 버거 정보 카트 테이블에 넣기
	int result = -1; int result2 = -1;
	
	// burgerBox를 거친 상품들
	if(bg != null && bg != "" ){
		
		BurgerVo vo = dao.getMenuData(bg);
		result = dao.addCart(vo, email);
		
		
		
		}else if( pseq != null && pseq != ""){
			// burgerBox를 거치지 않는 상품들
			BurgerVo vo2 = dao.getMenuData(pseq);
			result2 = dao.addCart(vo2, email);
		}

	
	if(result == 1 ){
	// 완료되면 카트리스트로 이동
	out.println("<script>location.href='cartlist.jsp?bg="+bg+"'</script>");
	}else if(result2 == 1){
		out.println("<script>location.href='cartlist.jsp?pseq="+pseq+"'</script>");	
	}else{
		int delete = dao.deleteCart(email);
		response.sendRedirect("delivery.jsp");
	}
%>
</body>
<script>
</script>
</html>
