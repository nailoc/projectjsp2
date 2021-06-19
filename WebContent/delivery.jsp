<%@page import="com.hk.jsp.dao.*"%>
<%@page import="com.hk.jsp.vo.*"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>딜리버리</title>
	<link rel = "stylesheet" href = "css/delivery_style.css"></link>
	<style></style>
</head>
<body>
	<div id = "wrapper">
	
	<!-- 헤더영역 -->
	<%@ include file = "deliveryheader2.jsp" %>
	
	<!-- 메인영역 -->
	<%
		BurgerDao dao = BurgerDao.getInstance();
		
		
	%>
	<section>
		<div id = "mainmenuNav">
			<p>메뉴</p>
			<nav>
				<p id = "special" onclick = "change1()">스페셜&할인팩</p>
				<p id = "premium" onclick = "change2()">프리미엄</p>
				<p id = "whopper" onclick = "change3()">와퍼</p>
				<p id = "whopperjr" onclick = "change4()">와퍼&주니어</p>
				<p id = "chicken" onclick = "change5()">치킨버거</p>
				<p id = "side" onclick = "change6()">사이드</p>
				<p id = "dessert" onclick = "change7()">음료&디저트</p>
			</nav>
		</div>
		<div class = "menu" id = "specialbox">
			<% 
			
				int kind70=70;
				List<BurgerVo> pop70 = dao.printOutProduct(kind70);
				for(int i=0; i<pop70.size();i++){
				
				BurgerVo vo = pop70.get(i);
				
				DecimalFormat decFormat = new DecimalFormat("###,###");
				String price = decFormat.format(vo.getPrice());
				price = decFormat.format(vo.getPrice());
				
				out.println("<div>");
				String name=vo.getOrd_name();
				out.println("<img id='"+name+"' src = 'img/menuList/70/"+vo.getImg()+"' "+" onclick = 'showbugerbox(this.id)'>");
				/* <img src = "img/체크이미지.png" onclick = "showbugerbox()" class = "checkimg"> */
				out.println("<h2>"+vo.getOrd_name()+"</h2>");
				out.println("<p>"+vo.getContent1()+"</p>");
				out.println("<h3>&#8361;"+ price +"</h3>");
				out.println("</div>");
			}
			/* for(int i=4; i<pop70.size();i++){
				
				BurgerVo vo = pop70.get(i);
				
				DecimalFormat decFormat = new DecimalFormat("###,###");
				String price = decFormat.format(vo.getPrice());
				price = decFormat.format(vo.getPrice());
				
				out.println("<div>");
				String name=vo.getOrd_name();
				out.println("<img id='"+name+"' src = 'img/menuList/70/"+vo.getImg()+"' "+" onclick = 'showbugerbox(this.id)'>"); */
				/* <img src = "img/체크이미지.png" onclick = "showbugerbox()" class = "checkimg"> */
				/* out.println("<h2>"+vo.getOrd_name()+"</h2>");
				out.println("<h3>&#8361;"+ price+"</h3>");
				out.println("</div>");
			} */
			%>	
		
			
		</div>
		<div class = "menu" id = "premiumbox">
			<%
				int kind10=10;
				List<BurgerVo> pop10 = dao.printOutProduct(kind10);
				for(int i=0; i<pop10.size();i++){
				
				BurgerVo vo = pop10.get(i);
				
				DecimalFormat decFormat = new DecimalFormat("###,###");
				String price = decFormat.format(vo.getPrice());
				price = decFormat.format(vo.getPrice());
				
				out.println("<div>");
				String name=vo.getOrd_name();
				out.println("<img id='"+name+"' src = 'img/menuList/10/"+vo.getImg()+"' "+" onclick = 'showbugerbox(this.id)'>");
				/* <img src = "img/체크이미지.png" onclick = "showbugerbox()" class = "checkimg"> */
				out.println("<h2>"+vo.getOrd_name()+"</h2>");
				out.println("<h3>&#8361;"+ price+"</h3>");
				out.println("</div>");
			}
			%>
		
		</div>
		<div class = "menu" id = "whopperbox">
			<%
				int kind20=20;
				List<BurgerVo> pop20 = dao.printOutProduct(kind20);
				for(int i=0; i<pop20.size();i++){
				
				BurgerVo vo = pop20.get(i);
				
				DecimalFormat decFormat = new DecimalFormat("###,###");
				String price = decFormat.format(vo.getPrice());
				price = decFormat.format(vo.getPrice());
				
				out.println("<div>");
				String name=vo.getOrd_name();
				out.println("<img id='"+name+"' src = 'img/menuList/20/"+vo.getImg()+"' "+" onclick = 'showbugerbox(this.id)'>");
				/* <img src = "img/체크이미지.png" onclick = "showbugerbox()" class = "checkimg"> */
				out.println("<h2>"+vo.getOrd_name()+"</h2>");
				out.println("<h3>&#8361;"+ price+"</h3>");
				out.println("</div>");
			}
			%>
		</div>
		<div class = "menu" id = "whopperjrbox">
			<%
				int kind30=30;
				List<BurgerVo> pop30 = dao.printOutProduct(kind30);
				for(int i=0; i<pop30.size();i++){
				
				BurgerVo vo = pop30.get(i);
				
				DecimalFormat decFormat = new DecimalFormat("###,###");
				String price = decFormat.format(vo.getPrice());
				price = decFormat.format(vo.getPrice());
				
				out.println("<div>");
				String name=vo.getOrd_name();
				out.println("<img id='"+name+"' src = 'img/menuList/30/"+vo.getImg()+"' "+" onclick = 'showbugerbox(this.id)'>");
				/* <img src = "img/체크이미지.png" onclick = "showbugerbox()" class = "checkimg"> */
				out.println("<h2>"+vo.getOrd_name()+"</h2>");
				out.println("<h3>&#8361;"+ price+"</h3>");
				out.println("</div>");
			}
			%>
		</div>
		<div class = "menu" id = "chickenbox">
			<%
				int kind40=40;
				List<BurgerVo> pop40 = dao.printOutProduct(kind40);
				for(int i=0; i<pop40.size();i++){
				
				BurgerVo vo = pop40.get(i);
				
				DecimalFormat decFormat = new DecimalFormat("###,###");
				String price = decFormat.format(vo.getPrice());
				price = decFormat.format(vo.getPrice());
				
				out.println("<div>");
				String name=vo.getOrd_name();
				out.println("<img id='"+name+"' src = 'img/menuList/40/"+vo.getImg()+"' "+" onclick = 'showbugerbox(this.id)'>");
				/* <img src = "img/체크이미지.png" onclick = "showbugerbox()" class = "checkimg"> */
				out.println("<h2>"+vo.getOrd_name()+"</h2>");
				out.println("<h3>&#8361;"+ price+"</h3>");
				out.println("</div>");
			}
			%>
		</div>
		<div class = "menu" id = "sidebox">
			<%
				int kind50=50;
				List<BurgerVo> pop50 = dao.printOutProduct(kind50);
				for(int i=0; i<pop50.size();i++){
				
				BurgerVo vo = pop50.get(i);
				
				DecimalFormat decFormat = new DecimalFormat("###,###");
				String price = decFormat.format(vo.getPrice());
				price = decFormat.format(vo.getPrice());
				
				out.println("<div>");
				
				String name=vo.getOrd_name();
				out.println("<img id='"+name+"' src = 'img/menuList/50/"+vo.getImg()+"' "+" onclick = 'showbugerbox(this.id)'>");
				/* <img src = "img/체크이미지.png" onclick = "showbugerbox()" class = "checkimg"> */
				out.println("<h2>"+vo.getOrd_name()+"</h2>");
				out.println("<h3>&#8361;"+ price+"</h3>");
				out.println("</div>");
			}
			%>
			
		</div>
		<div class = "menu" id = "dessertbox">
			<%
				int kind60=60;
				List<BurgerVo> pop60 = dao.printOutProduct(kind60);
				for(int i=0; i<pop60.size();i++){
				
				BurgerVo vo = pop60.get(i);
				
				DecimalFormat decFormat = new DecimalFormat("###,###");
				String price = decFormat.format(vo.getPrice());
				price = decFormat.format(vo.getPrice());
				
				out.println("<div>");
				String name=vo.getOrd_name();
				out.println("<img id='"+name+"' src = 'img/menuList/60/"+vo.getImg()+"' "+" onclick = 'showbugerbox(this.id)'>");
				/* <img src = "img/체크이미지.png" onclick = "showbugerbox()" class = "checkimg"> */
				out.println("<h2>"+vo.getOrd_name()+"</h2>");
				out.println("<h3>&#8361;"+ price+"</h3>");
				out.println("</div>");
			}
			%>
		</div>
		
		<div id = "bugerbox">
			<div class = "bugerboxinf">
				<p>메뉴 선택</p>
				<img src = "img/X아이콘.JPG" onclick = "closebox()">
			</div>
			<div id = "bugerimg">
				<div class = "burgerboxheader">
					<h1>버거 이름</h1>
					<p>버거 소개</p>
				</div>
				<div>
					<img src = "img/X아이콘.JPG">
				</div>
			</div>
			<div id = "bugerstyle1" class = "bugerstyle"  onclick = "showsidebox()">
				<div>
					<h2>버거 세트 이름</h2>
					<p>세트 종류</p>
					<h3>가격</h3>
				</div>
				<img src = "img/회원가입버튼.PNG">
			</div>
			<div id = "bugerstyle2" class = "bugerstyle" onclick = "showsidebox()">
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
			</div>
		</div>
		
		
	</section>
	
	<!-- 푸터 영역 -->
	<%@ include file = "deliveryfooter.jsp" %>
	
	</div>
</body>
<script>
	document.getElementById("special").style.color = "red";
	document.getElementById("specialbox").style.display = "block";
	
	function  change1(){
		document.getElementById("special").style.color = "red";
		document.getElementById("premium").style.color = "gray";
		document.getElementById("whopper").style.color = "gray";
		document.getElementById("whopperjr").style.color = "gray";
		document.getElementById("chicken").style.color = "gray";
		document.getElementById("side").style.color = "gray";
		document.getElementById("dessert").style.color = "gray";
		
		document.getElementById("specialbox").style.display = "block";
		document.getElementById("premiumbox").style.display = "none";
		document.getElementById("whopperbox").style.display = "none";
		document.getElementById("whopperjrbox").style.display = "none";
		document.getElementById("chickenbox").style.display = "none";
		document.getElementById("sidebox").style.display = "none";
		document.getElementById("dessertbox").style.display = "none";
	}
	function  change2(){
		document.getElementById("special").style.color = "gray";
		document.getElementById("premium").style.color = "red";
		document.getElementById("whopper").style.color = "gray";
		document.getElementById("whopperjr").style.color = "gray";
		document.getElementById("chicken").style.color = "gray";
		document.getElementById("side").style.color = "gray";
		document.getElementById("dessert").style.color = "gray";
		
		document.getElementById("specialbox").style.display = "none";
		document.getElementById("premiumbox").style.display = "block";
		document.getElementById("whopperbox").style.display = "none";
		document.getElementById("whopperjrbox").style.display = "none";
		document.getElementById("chickenbox").style.display = "none";
		document.getElementById("sidebox").style.display = "none";
		document.getElementById("dessertbox").style.display = "none";
	}
	function  change3(){
		document.getElementById("special").style.color = "gray";
		document.getElementById("premium").style.color = "gray";
		document.getElementById("whopper").style.color = "red";
		document.getElementById("whopperjr").style.color = "gray";
		document.getElementById("chicken").style.color = "gray";
		document.getElementById("side").style.color = "gray";
		document.getElementById("dessert").style.color = "gray";
		
		document.getElementById("specialbox").style.display = "none";
		document.getElementById("premiumbox").style.display = "none";
		document.getElementById("whopperbox").style.display = "block";
		document.getElementById("whopperjrbox").style.display = "none";
		document.getElementById("chickenbox").style.display = "none";
		document.getElementById("sidebox").style.display = "none";
		document.getElementById("dessertbox").style.display = "none";
	}
	function  change4(){
		document.getElementById("special").style.color = "gray";
		document.getElementById("premium").style.color = "gray";
		document.getElementById("whopper").style.color = "gray";
		document.getElementById("whopperjr").style.color = "red";
		document.getElementById("chicken").style.color = "gray";
		document.getElementById("side").style.color = "gray";
		document.getElementById("dessert").style.color = "gray";
		
		document.getElementById("specialbox").style.display = "none";
		document.getElementById("premiumbox").style.display = "none";
		document.getElementById("whopperbox").style.display = "none";
		document.getElementById("whopperjrbox").style.display = "block";
		document.getElementById("chickenbox").style.display = "none";
		document.getElementById("sidebox").style.display = "none";
		document.getElementById("dessertbox").style.display = "none";
	}
	function  change5(){
		document.getElementById("special").style.color = "gray";
		document.getElementById("premium").style.color = "gray";
		document.getElementById("whopper").style.color = "gray";
		document.getElementById("whopperjr").style.color = "gray";
		document.getElementById("chicken").style.color = "red";
		document.getElementById("side").style.color = "gray";
		document.getElementById("dessert").style.color = "gray";
		
		document.getElementById("specialbox").style.display = "none";
		document.getElementById("premiumbox").style.display = "none";
		document.getElementById("whopperbox").style.display = "none";
		document.getElementById("whopperjrbox").style.display = "none";
		document.getElementById("chickenbox").style.display = "block";
		document.getElementById("sidebox").style.display = "none";
		document.getElementById("dessertbox").style.display = "none";
	}
	function  change6(){
		document.getElementById("special").style.color = "gray";
		document.getElementById("premium").style.color = "gray";
		document.getElementById("whopper").style.color = "gray";
		document.getElementById("whopperjr").style.color = "gray";
		document.getElementById("chicken").style.color = "gray";
		document.getElementById("side").style.color = "red";
		document.getElementById("dessert").style.color = "gray";
		
		document.getElementById("specialbox").style.display = "none";
		document.getElementById("premiumbox").style.display = "none";
		document.getElementById("whopperbox").style.display = "none";
		document.getElementById("whopperjrbox").style.display = "none";
		document.getElementById("chickenbox").style.display = "none";
		document.getElementById("sidebox").style.display = "block";
		document.getElementById("dessertbox").style.display = "none";
	}
	function change7(){
		document.getElementById("special").style.color = "gray";
		document.getElementById("premium").style.color = "gray";
		document.getElementById("whopper").style.color = "gray";
		document.getElementById("whopperjr").style.color = "gray";
		document.getElementById("chicken").style.color = "gray";
		document.getElementById("side").style.color = "gray";
		document.getElementById("dessert").style.color = "red";
		
		document.getElementById("specialbox").style.display = "none";
		document.getElementById("premiumbox").style.display = "none";
		document.getElementById("whopperbox").style.display = "none";
		document.getElementById("whopperjrbox").style.display = "none";
		document.getElementById("chickenbox").style.display = "none";
		document.getElementById("sidebox").style.display = "none";
		document.getElementById("dessertbox").style.display = "block";
	}
	
	var child_1 = null;
	var child_2 = null;
	var child_3 = null;
	var child_4 = null;
	
	function showbugerbox(burgerName){
		
		
		/* document.getElementById("bugerbox").style.display = "block"; */
		/* location.href="burgerBox.jsp?name="+name; */
		if(burgerName == '미닛메이드 오렌지' || burgerName == '순수[미네랄워터]' || 
		   burgerName == '기네스통베이컨팩1' || burgerName == '기네스통베이컨팩2' ||
		   burgerName == '기네스통베이컨팩3' || burgerName == '기네스통베이컨팩4' ||
		   burgerName == '21치즈스틱' || burgerName == '어니언링' ||
		   burgerName == '치즈프라이' || burgerName == '코울슬로' ||
		   burgerName == '트러플프라이' 
		   ){
			var name = encodeURIComponent(burgerName);
			location.href='addCartList.jsp?name='+name;
		}else{
			
		var name = encodeURIComponent(burgerName);
		/* alert(name); */
		var _width = '550';
	    var _height = '650';
		var _left = Math.ceil(( window.screen.width - _width )/2);
	    var _top = Math.ceil(( window.screen.height - _height )/2); 
	 	child_1=window.open("burgerBox.jsp?name="+name, '메뉴선택', 'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top );
		
		}
	}
	function popup_call(data) {
		//alert(data);
		child_1.close();
		
		var _width = '570';
	    var _height = '480';
		var _left = Math.ceil(( window.screen.width - _width )/2);
	    var _top = Math.ceil(( window.screen.height - _height )/2); 
		//location.href="burgerSort.jsp?no="+prod_no;
		child_2 = window.open("burgerSort.jsp?no="+data, '사이드선택', 'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top );
		
	}
	
	function popup_child2_call(data2) {
		child_2.close();
		
		var _width = '570';
	    var _height = '400';
		var _left = Math.ceil(( window.screen.width - _width )/2);
	    var _top = Math.ceil(( window.screen.height - _height )/2); 
	    
		child_3 = window.open("burgersideBox_side.jsp?no="+data2, '사이드선택', 'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top );
	}
	
	function popup_child3_call(data1,data2) {
		child_3.close();
		
		var _width = '570';
	    var _height = '700';
		var _left = Math.ceil(( window.screen.width - _width )/2);
	    var _top = Math.ceil(( window.screen.height - _height )/2); 
	    
		child_4 = window.open("burgersideBox_drink.jsp?bgNo="+data1+"&side_no="+data2, '음료선택', 'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top );
	}
	
	
	
	
	
	function closebox(){
		document.getElementById("bugerbox").style.display = "none";
	}
	function showsidebox(){
		document.getElementById("bugerbox").style.display = "none";
		document.getElementById("bugersidebox").style.display = "block";
	}
	function closesidebox(){
		document.getElementById("bugersidebox").style.display = "none";
	}
	function showbugerdrinkbox(){
		closesidebox();
		document.getElementById("bugerdrinkbox").style.display = "block";
	}
	function closebugerdrinkbox(){
		document.getElementById("bugerdrinkbox").style.display = "none";
	}
</script>
</html>