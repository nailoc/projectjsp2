<%@page import="java.net.URLDecoder"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.*"%>
<%@page import="com.hk.jsp.dao.*"%>
<%@page import="com.hk.jsp.vo.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspweb13</title>
<link rel = "stylesheet" href = "css/burgerbox_style.css"></link>
<style></style>
</head>
<body>
 			<!-- 
			 바삭킹8조각+소스 코코넛쉬림프+스위트칠리소스+바비큐킹치킨
			 -->
		<%
		
			
			String name = URLDecoder.decode(request.getParameter("name"), "UTF-8");
			
			BurgerDao dao = BurgerDao.getInstance();
			
			
			//상세내역 맨 위에 출력 될 정보 객체
			BurgerVo mainVo = dao.printOutMainProduct(name);
			
			//상세내역 아래에 출력 될 정보 객체
			List<BurgerVo> voArr = dao.printOutProduct(name);
			BurgerVo[] vo = new BurgerVo[voArr.size()];
			for(int i=0;i<voArr.size();i++){
				vo[i]= voArr.get(i);
			}
			
			
			
			int kind = dao.checkKind(name);
			
			
			

		%>
		<!-- 상세내역 위 -->
		<div id = "bugerbox">
			<div class = "bugerboxinf">
				<p>메뉴 선택</p>
				<img src = "img/X아이콘.JPG" onclick="javascript:window.close()">
			</div>
		
			<div id = "bugerimg">
				<div class = "burgerboxheader">
					<h1><%= mainVo.getOrd_name() %></h1>
					<p><%= mainVo.getContent1() %></p>
				</div>
				
				<div>
					<img src = "img/menuList/<%=kind%>/<%= mainVo.getImg()%>">
				</div>
			</div> 
			
			
			<% 
			// 상세내역 아래
			DecimalFormat decFormat = new DecimalFormat("###,###");
					
				int type=-1;
				for(int i=0; i<vo.length;i++){
				
				String seq = vo[i].getProd_seq();
				
				String price = decFormat.format(vo[i].getPrice());
				
				out.println("<div id = 'bugerstyle1' class = 'bugerstyle'>");
				out.println("<div id="+seq+" onclick=burgersideBox(this.id)>");
				out.println("<h2>"+vo[i].getOrd_name()+"</h2>");
				out.println("<p>"+vo[i].getContent2()+"</p>");
				out.println("<h3>"+price+"</h3>");
				out.println("</div>");
				out.println("<img src = 'img/menuList/"+kind+"/"+vo[i].getImg()+"'>");
				out.println("</div>");
				
				}
			%>	 
			  <!-- <div id = "bugerstyle2" class = "bugerstyle" onclick = "showsidebox()">
				<div>
					<h2>버거 세트 이름</h2>
					<p>세트 종류</p>
					<h3>가격</h3>
				</div>
				<img src = "img/회원가입버튼.PNG">
			</div>
			<div id = "bugerstyle3" class = "bugerstyle"  onclick = "showsidebox()">
				<div>
					<h2>버거 세트 이름</h2>
					<p>세트 종류</p>
					<h3>가격</h3>
				</div>
				<img src = "img/회원가입버튼.PNG">
			</div>  --> 
		 	
		
	</div>
</body>
<script>

function burgersideBox(getSeq){

	var prod_no = encodeURIComponent(getSeq);
	
	//var _width = '570';
    //var _height = '480';
	//var _left = Math.ceil(( window.screen.width - _width )/2);
    //var _top = Math.ceil(( window.screen.height - _height )/2); 
    
  	//window.open("burgerSort.jsp?no="+prod_no, '사이드선택', 'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top );
    //window.close();
	opener.popup_call(prod_no);
	

}

</script>
</html>
