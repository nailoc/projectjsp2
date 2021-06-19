<%@page import="java.util.List"%>
<%@page import="com.hk.jsp.dao.*"%>
<%@page import="com.hk.jsp.vo.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이드 변경</title>
<link rel = "stylesheet" href = "css/burgersidebox_style.css"></link>
<style></style>
</head>
<body>


	<div id = "bugersidebox"  class = "sideDrink">
<!-- 선택된 상품이 레귤러 세트일때 -->
		
		
		<div class = 'bugerboxinf'>
			<p>사이드 변경</p>
			<img src = 'img/X아이콘.JPG' onclick="javascript:window.close()">	
			</div>
		<%	
			String pseq = request.getParameter("no");
			
		 	BurgerDao dao = BurgerDao.getInstance();
			int typeNo = dao.getType(pseq);
			int kind=0;
			String table="";
			List<BurgerVo> side = null;
			
			
			if(typeNo == 1){
			table="sidebar_r";
			kind=100;	
			side = dao.printOutSideMenu(table,kind);
			
			
			for(int i=0;i<side.size();i++){
			
			BurgerVo vo = side.get(i);
			String seq = vo.getProd_seq();
			
			out.println("<div class = 'sidestyle' id="+seq+" onclick=burgersideBox(this.id)>");	
			
			out.println("<img src = 'img/menuList/"+kind+"/"+vo.getImg()+"'>");		
			out.println("<p>"+vo.getName()+"</p>");		
			out.println("<p>가격+ "+vo.getPrice()+"원</p>");
			out.println("</div>");
			
			
			}
			
			
			}else if(typeNo == 2){
				
				table="sidebar_l";
				kind=200;	
				side = dao.printOutSideMenu(table,kind);
				
				for(int i=0;i<side.size();i++){
				
				BurgerVo vo = side.get(i);
				
				String seq = vo.getProd_seq();
				
				out.println("<div class = 'sidestyle' id="+seq+" onclick=burgersideBox(this.id)>");	
				
				out.println("<img src = 'img/menuList/"+kind+"/"+vo.getImg()+"'>");		
				out.println("<p>"+vo.getName()+"</p>");		
				out.println("<p>가격+ "+vo.getPrice()+"원</p>");
				out.println("</div>");
				
				
				}
			}else if(typeNo == 0){
				
				out.println("<script>alert('장바구니에 추가 되었습니다!')</script>");
				
			}else{
				out.println("<script>history.back() </script>");
			}
		%>	
	</div>
		
	
		
		
		
</body>
<script>
/* function WinClose(){
  window.open('','_self').close();     
} */

function burgersideBox(getSeq){
	
	var side_no = encodeURIComponent(getSeq);
	var bg_no = "<%= pseq %>";
	var _width = '570';
    var _height = '700';
	var _left = Math.ceil(( window.screen.width - _width )/2);
    var _top = Math.ceil(( window.screen.height - _height )/2); 
    
    /* alert(bg_no);
    alert(side_no); */
    /* opener.window.close(); */
    //alert(1111);
    //window.open("burgersideBox_drink.jsp?bgNo="+bg_no+"&side_no="+side_no, '음료선택', 'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top );
    
    /* alert(bg_no+"-"+side_no); */
    opener.popup_child3_call(bg_no, side_no);

}

/* function closesidebox(){
	document.getElementById("bugersidebox").style.display = "none";
}
function showbugerdrinkbox(){
	closesidebox();
	document.getElementById("bugerdrinkbox").style.display = "block";
}
function closebugerdrinkbox(){
	document.getElementById("bugerdrinkbox").style.display = "none";
}
closebugerdrinkbox(); */
</script>
</html>
