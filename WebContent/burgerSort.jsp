<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@page import="java.util.List"%>
<%@page import="com.hk.jsp.dao.*"%>
<%@page import="com.hk.jsp.vo.*"%>
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

	String pseq = request.getParameter("no");
	BurgerDao dao = BurgerDao.getInstance();
	
	int type = dao.getType(pseq);
	int kind = dao.getKind(pseq);
	%>		
	
</body>
<script>
function burgersideBox(){
	var pseq = "<%=pseq%>";
	var prod_no = encodeURIComponent(pseq);
	var type = "<%=type%>";
	var kind = "<%=kind%>";
	//var _width = '570';
    //var _height = '400';
	//var _left = Math.ceil(( window.screen.width - _width )/2);
    //var _top = Math.ceil(( window.screen.height - _height )/2); 
    
    if(type==1 || type==2){
    /* opener.window.close(); */

    /* window.open("burgersideBox_side.jsp?no="+prod_no, '사이드선택', 'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top ); */
    	if(kind == 50 || kind == 60 || pseq == 'PROD-70-006' ||
    	   pseq == 'PROD-70-007' || pseq == 'PROD-70-008' || pseq == 'PROD-70-010' ||
    	   pseq == 'PROD-70-011' || pseq == 'PROD-70-012' ){
    		self.close();
    		
    		opener.window.location.href='addCartList.jsp?bg='+prod_no;
    	}else{
    		opener.popup_child2_call(prod_no);	
    	}
    	
    }
    else if(type==0){
    	self.close();
    	
    	opener.window.location.href='addCartList.jsp?bg='+prod_no;
    }else{
    	alert('경고. 에러!');
    }
}
burgersideBox();



</script>
</html>
