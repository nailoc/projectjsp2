
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.hk.jsp.dao.*"%>
<%@page import="com.hk.jsp.vo.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.DecimalFormat"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>카트</title>
	<link rel = "stylesheet" href = "css/cartlist_style.css"></link>
	<link rel = "stylesheet" href = "css/cartlist_style2.css"></link>
	<style>

	</style>
</head>
<body>
	<div id = "wrapper">
	
		<!-- 헤더영역 -->
		<%@ include file = "deliveryheader2.jsp" %>
		
		<section id="section">
			<script>
			if (self.name != 'reload') {
		         self.name = 'reload';
		         self.location.reload(true);
		     }
		     else self.name = '';
			</script>
			
			
			
			<!-- 카트정보 한칸  시작-->
			<%	
				if(session.getAttribute("sessionId") == null){
					out.println("<script> history.back()</script>");
				}
				
				ArrayList<String> List1 = null;
				ArrayList<String> List2 = null;
				if(session.getAttribute("side") != null){
					 List1 = (ArrayList <String>) session.getAttribute("side"); 
					 List2 = (ArrayList <String>) session.getAttribute("drink");
				}
				
				
				
				DecimalFormat decFormat = new DecimalFormat("###,###");
				
				// 최종금액
				int total_amount  = 0;
				String totalAmount = "";
				BurgerDao dao = BurgerDao.getInstance();
				
				
				String email = (String) session.getAttribute("sessionId");
				List<CartVo> list = dao.printOutCart(email); 
			%>
				<h1>딜리버리 카트</h1>
				<div id = "selectbox">
					<div id = "allselectbox">
						<p id="check" onclick = "checkcolorchange()">✓</p><p id = "allselect">전체 선택</p>
					</div>
					<div id = "like" onclick = "likecolorchange()">
						♡
					</div>
					<div id = "delete">
						<p onclick='deleteCart();'>삭제 [<%=list.size() %>]</p>
					</div>
				</div>
			<%  
				
				String side = request.getParameter("side");
				String drink = request.getParameter("dirnk");
				
				
				int total_price =0;
				int cnt = 0;
				for(int i=0; i<list.size();i++){
				
				
				
				CartVo vo = list.get(i);
				String pseq = vo.getProd_seq();
				String price = decFormat.format(vo.getPrice());
				//이미지 폴더 번호
				int kind = dao.getKind(pseq);
				// 출력타입 번호
				int type = dao.getType(pseq);
				total_price += vo.getPrice();
				
				if(kind == 50 || kind == 60 || kind ==70 || type == 0){
					total_amount += vo.getPrice();
					
			%>		
			<div class = "cartstore2">
				
				<div class = "closebox">
					<img src = "img/X아이콘.JPG" class = "closeicon">
				</div>
				
				<div class = "burgerinf">
					<div class = "burgerdetail">
					<div class = "check2box">
						<p class = "check2" id = "check2" onclick = "checkcolorchange2()">✓</p>
					</div>
						<h1><%=vo.getMenu() %></h1>
						<h2><%= price %></h2>
					</div>
					
					<div class ="burgerinfimg">
						<img src = "img/menuList/<%=kind%>/<%= vo.getImg() %>" alt = "버거이미지">
					</div>
				</div>
					
				<div class = "pricecheck">
					<h3>수량</h3>
					<div>
						<p class = "updown" id = "minus">-</p>
						<p class = "count" id = "count[]">1</p>
						<p class = "updown" id = "plus">+</p>
					</div>
					<h3>
						합계금액
					</h3>
					<h2 id = "totalprice1"><%=price %> 원</h2>
				</div>
				
			</div>
				
				
			
			<%
				}else{
					
					/*  dao.printOutSideInCart(pseq); */
					// 버거의 타입이 레귤러일때
					
					String result = "";
					String result2 = "";
					
					
					result = List1.get(cnt);
					result2 = List2.get(cnt);
					
					CartVo SideVo = dao.printOutSideInCart(result);
					CartVo drinkVo = dao.printOutSideInCart(result2);
					
					int sidePrice = SideVo.getPrice();
					int drinkPrice = drinkVo.getPrice();
					String price1 = decFormat.format(vo.getPrice());
					
					price = decFormat.format(vo.getPrice()+sidePrice+drinkPrice);
					total_amount += vo.getPrice()+sidePrice+drinkPrice;
			%>
			<!-- 카트정보 한칸  끝-->
			
			<!-- 카트정보 한칸  시작-->

					
			<div class = "cartstore">
				<div class = "closebox">
					<img src = "img/X아이콘.JPG" class = "closeicon">
				</div>
					
				<div class = "burgerinf">
				
					<div class = "burgerdetail">
					<div class = "check2box">
						<p class = "check2" id = "check2" onclick = "checkcolorchange2()">✓</p>
					</div>
						<h1><%= vo.getMenu() %> </h1>
						
						<h2><%= price1 %> </h2>
					</div>
					<div class ="burgerinfimg">
						<img src = "img/menuList/<%=kind %>/<%= vo.getImg() %>" alt = "버거이미지">
					</div>
					
				</div>
				
				
				<div class = "busersideinfbox">
					<div class = "busersideinf">
						<h3 class = "sideinf1">재료추가</h3>
						<h3 class = "sideinf2">선택한 음식</h3>
						<h3 class = "sideinf3">추가금액 +,-</h3>
						<p class = "change" onclick = "windowbugeraddmorebox()">변경</p>
					</div>
					<div class = "busersideinf">
						<h3 class = "sideinf1">사이드</h3>
						<h3 class = "sideinf2"><%= SideVo.getMenu() %></h3>
						<h3 class = "sideinf3">추가금액 +<%= SideVo.getPrice() %></h3>
						<p class = "change" onclick = "windowbugersidebox()">변경</p>
					</div>
					<div class = "busersideinf">
						<h3 class = "sideinf1">음료</h3>
						<h3 class = "sideinf2"><%= drinkVo.getMenu() %></h3>
						<h3 class = "sideinf3">추가금액 +<%= drinkVo.getPrice() %></h3>
						<p class = "change" onclick = "windowbugerdrinkbox()">변경</p>
					</div>
				</div>
				
				<div class = "pricecheck">
					<h3>수량</h3>
					<div>
						<p class = "updown" id = "minus">-</p>
						<p class = "count" id = "count[]">1</p>
						<p class = "updown" id = "plus">+</p>
					</div>
					<h3>
						합계금액
					</h3>
					<h2 id = "totalprice1"><%=price %> 원</h2>
				</div>
	
			</div>
			
			
			<%
			
				cnt++;
				}
				
				
			}
				totalAmount = decFormat.format(total_amount);
				%>
			<!-- 카트정보2 한칸  끝-->
			
		
			
			<div id = "finalpricebox">
				<H1>총 주문금액</H1>
				
				<h1 id = "finalprice"><%= totalAmount %> 원</h1>
			</div>
			
			<div id = "otherbox">
				<ul>
					<li>주문서를 작성하기 전에 선택하신 상품명, 수량 및 가격이 정확한지 확인해주세요.</li>
					<li>해당매장의 주문배달 최소금액은 12,000원 입니다.</li>
				</ul>
				<img src = "img/메뉴추가버튼.PNG" id = "addorder" alt = "메뉴추가버튼" onclick = "godelivery()"> 
				<img src = "img/주문하기버튼.PNG" id = "orderbutton" alt = "주문하기버튼" onclick = "goOrder()"> 
			</div>
		</section>	
		<aside id="noneMenu">
       			  <div id = "cartnolistbox">
	         	  	<img src = "img/카트메뉴없음.PNG" id = "cartnolist" alt = "카트메뉴없음">
	      		  </div>
	      		  <div id = "addorder2box">
	              	<img src = "img/메뉴추가버튼.PNG" id = "addorder2" alt = "메뉴추가버튼" onclick = "godelivery()">
	         	  </div>
	    </aside>
		<!-- 푸터 영역 -->
		<%@ include file = "deliveryfooter.jsp" %>
		
	
	</div>
	
</body>
<script>
	var ea=<%=list.size() %>;
	var swt = 0;
	function likecolorchange(){
		if(swt == 0){
			document.getElementById("like").style.color = "red";
			swt = 1;
		}
		else if(swt == 1){
			document.getElementById("like").style.color = "#fff";
			swt = 0;
		}
	}
	
	var swt2 = 0;
	function checkcolorchange(){
		if(swt2 == 0){
			document.getElementById("check").style.backgroundColor = "#000";
			document.getElementById("allselect").style.color = "#000";
			swt2 = 1;
		}
		else if(swt2 == 1){
			document.getElementById("check").style.backgroundColor = "lightgray";
			document.getElementById("allselect").style.color = "gray";
			swt2 = 0;
		}
	}
	
	function godelivery(){
		location.href='delivery.jsp';
	}
	
	var swt3 = 0;
	function checkcolorchange2(){
		if(swt3 == 0){
			document.getElementById("check2").style.backgroundColor = "#000";
			swt3 = 1;
		}
		else if(swt3 == 1){
			document.getElementById("check2").style.backgroundColor = "lightgray";
			swt3 = 0;
		}
	}
	
	/* function showbugeraddmorebox(){
		document.getElementById("bugeraddmorebox").style.display = "block";
		document.getElementById("bugersidebox").style.display = "none";
		document.getElementById("bugerdrinkbox").style.display = "none";
	}
	function showsidebox(){
		document.getElementById("bugersidebox").style.display = "block";
		document.getElementById("bugerdrinkbox").style.display = "none";
		document.getElementById("bugeraddmorebox").style.display = "none";
	}
	function showdrinkbox(){
		document.getElementById("bugerdrinkbox").style.display = "block";
		document.getElementById("bugersidebox").style.display = "none";
		document.getElementById("bugeraddmorebox").style.display = "none";
	}
	function closebugersidebox(){
		document.getElementById("bugersidebox").style.display = "none";
		document.getElementById("bugerdrinkbox").style.display = "none";
		document.getElementById("bugeraddmorebox").style.display = "none";
	} */
	
	/* 카트에서 재료 변경할때 사용 */
	function windowbugeraddmorebox(){
		window.open('cartlist/bugeraddmorebox.jsp', 'addmore', 'width = 580, height = 600, scrollbars = 1', true);		
	}
	function windowbugersidebox(){
		window.open('cartlist/bugersidebox.jsp', 'side', 'width = 580, height = 450, scrollbars = 1', true);		
	}
	function windowbugerdrinkbox(){
		window.open('cartlist/bugerdrinkbox.jsp', 'drink', 'width = 580, height = 600, scrollbars = 1', true);		
	}
	
	function displayChange(ea){
		var aside = document.getElementById("noneMenu");
		var sec = document.getElementById("section");
		if(ea == 0){
			sec.style.display = "none";
			aside.style.display = "block";
		}else{
			aside.style.display = "none";
			sec.style.display = "block";
		}
	}
	function deleteCart(){
		location.href='deleteCart.jsp';
	}
	function goOrder(){
		location.href='order.jsp';
	}
	displayChange(ea);
</script>
</html>