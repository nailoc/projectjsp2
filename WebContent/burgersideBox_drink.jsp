<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@page import="java.util.List"%>
<%@page import="com.hk.jsp.dao.*"%>
<%@page import="com.hk.jsp.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음료 변경</title>
<link rel = "stylesheet" href = "css/burgersidebox_style.css"></link>
<style></style>
</head>
<body>
<div id = "bugersidebox"  class = "sideDrink">

			<div class = 'bugerboxinf'>
			
			<p>음료 변경</p>
			<img src = 'img/X아이콘.JPG' onclick="javascript:window.close()">	
			</div>
		 <%	
		 
		 	
			String bgNo = request.getParameter("bgNo");
			String sideNo = request.getParameter("side_no");
			
			
		 	BurgerDao dao = BurgerDao.getInstance();
			int typeNo = dao.getType(bgNo);
			int kind=0;
			String table="";
			List<BurgerVo> side = null;
			
			
			if(typeNo == 1){
			table="sidebar_r";
			kind=110;	
			side = dao.printOutSideMenu(table,kind);
			
			
			for(int i=0;i<side.size();i++){
			
			BurgerVo vo = side.get(i);
			String no = vo.getProd_seq();
			out.println("<div id = "+no+" class = 'sidestyle' onclick = 'goToBos(this.id)'>");	
			out.println("<img src = 'img/menuList/"+kind+"/"+vo.getImg()+"'>");		
			out.println("<p>"+vo.getName()+"</p>");		
			out.println("<p>가격+ "+vo.getPrice()+"원</p>")	;
			out.println("</div>");
			}
			
			
			}else if(typeNo == 2){
				
				table="sidebar_l";
				kind=210;	
				side = dao.printOutSideMenu(table,kind);
				
				for(int i=0;i<side.size();i++){
				
				BurgerVo vo = side.get(i);
				String no = vo.getProd_seq();
				out.println("<div id = "+no+" class = 'sidestyle' onclick = 'goToBos(this.id)'>");
				out.println("<img src = 'img/menuList/"+kind+"/"+vo.getImg()+"'>");		
				out.println("<p>"+vo.getName()+"</p>");		
				out.println("<p>가격+ "+vo.getPrice()+"원</p>");
				out.println("</div>");
				}
			}else{
				out.println("<script>history.back() </script>");
			}
		%>	 
		</div>
</body>
<script>
function goToBos(no){
	
	var no = encodeURIComponent(no);
	
	<%-- alert("<%= bgNo%>");
	alert("<%= sideNo%>");
	alert(no); --%>
	//var _width = '570';
    //var _height = '700';
	//var _left = Math.ceil(( window.screen.width - _width )/2);
    //var _top = Math.ceil(( window.screen.height - _height )/2); 
    /* location.href="burgerOrderSelect.jsp?result="+bgNo+","+sideNo+","+drinkNo; */
    
    window.close();
    opener.location.href="setSideSession.jsp?bg=<%=bgNo%>&side=<%=sideNo%>&drink="+no;
    
  /*   window.open("burgerOrderSelect.jsp?bgNo="+bgNo+"&&sideNo="+sideNo+"&&dirnkNo="+dirnkNo, 'x', 'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top ); */
}
/* opener.window.close(); */
</script>
</html>
