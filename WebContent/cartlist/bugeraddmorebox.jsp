<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>bugeraddmorebox</title>
	<link rel = "stylesheet" href = "../css/cartlist_style2.css"></link>
	<style>
		div.sideDrink>div.selectsideDrink{
			width : 100%;
			height : 70px;
			margin : 0;
			/* margin-top : 30px; */
			float : left;
			cursor : pointer; /* 마우스 올리면 손가락 표시 나옴 */
		}
	</style>
</head>
<body>

	<div id = "bugeraddmorebox"  class = "sideDrink">
					<div class = "bugerboxinf">
						<p>재료추가</p>
						<img src = "../img/X아이콘.JPG" onclick = "windowclose()">
					</div>
					
					<div class = "addmore" onclick = "swtsteak()">
						<p class = "check3" id = "steak">✓</p>
						<div class = "addmoreinf">
							<div>
								<h2>스테이크패티</h2>
								<h3>₩3900</h3>
							</div>
							<img src = "../img/addmore/스테이크패티.PNG">
						</div>
					</div>
					<div class = "addmore" onclick = "swtbacon2()">
						<p class = "check3" id = "bacon2">✓</p>
						<div class = "addmoreinf">
							<div>
								<h2>롱베이컨 2장</h2>
								<h3>₩1200</h3>
							</div>
							<img src = "../img/addmore/롱베이컨2장.PNG">
						</div>
					</div>
					<div class = "addmore" onclick = "swtjalapeno4()">
						<p class = "check3" id = "jalapeno4">✓</p>
						<div class = "addmoreinf">
							<div>
								<h2>할라피뇨 4추가</h2>
								<h3>₩800</h3>
							</div>
							<img src = "../img/addmore/할라피뇨4추가.PNG">
						</div>
					</div>
					<div class = "addmore" onclick = "swtcheese2()">
						<p class = "check3" id = "cheese2">✓</p>
						<div class = "addmoreinf">
							<div>
								<h2>치즈 2장</h2>
								<h3>₩600</h3>
							</div>
							<img src = "../img/addmore/치즈2장.PNG">
						</div>
					</div>
					<div class = "addmore" onclick = "swtbacon1()">
						<p class = "check3" id = "bacon1">✓</p>
						<div class = "addmoreinf">
							<div>
								<h2>롱베이컨 1장</h2>
								<h3>₩3900</h3>
							</div>
							<img src = "../img/addmore/롱베이컨1장.PNG">
						</div>
					</div>
					<div class = "addmore" onclick = "swtallex()">
						<p class = "check3" id = "allex">✓</p>
						<div class = "addmoreinf">
							<div>
								<h2>올엑스트라</h2>
								<h3>₩400</h3>
							</div>
							<img src = "../img/addmore/올엑스트라.PNG">
						</div>
					</div>
					<div class = "addmore" onclick = "swtjalapeno2()">
						<p class = "check3" id = "jalapeno2">✓</p>
						<div class = "addmoreinf">
							<div>
								<h2>할라피뇨 2추가</h2>
								<h3>₩400</h3>
							</div>
							<img src = "../img/addmore/할라피뇨2추가.PNG">
						</div>
					</div>
					<div class = "addmore" onclick = "swtcheese1()">
						<p class = "check3" id = "cheese1">✓</p>
						<div class = "addmoreinf">
							<div>
								<h2>치즈 1장</h2>
								<h3>₩3900</h3>
							</div>
							<img src = "../img/addmore/치즈1장.PNG">
						</div>
					</div>
					<div class = "addmore"  onclick = "swtdiablo()">
						<p class = "check3"  id = "diablo">✓</p>
						<div class = "addmoreinf">
							<div>
								<h2>디아블로소스</h2>
								<h3>₩0</h3>
							</div>
							<img src = "../img/addmore/디아블로소스.PNG">
						</div>
					</div>
					<div class = "addmore" onclick = "swtlettuce()">
						<p class = "check3" id = "lettuce">✓</p>
						<div class = "addmoreinf">
							<div>
								<h2>양상추</h2>
								<h3>₩0</h3>
							</div>
							<img src = "../img/addmore/양상추.PNG">
						</div>
					</div>
					<div class = "addmore" onclick = "swtmayonnaise()">
						<p class = "check3" id = "mayonnaise">✓</p>
						<div class = "addmoreinf">
							<div>
								<h2>마요네즈</h2>
								<h3>₩0</h3>
							</div>
							<img src = "../img/addmore/마요네즈.PNG">
						</div>
					</div>
					<div class = "addmore" onclick = "swtonion()">
						<p class = "check3" id = "onion">✓</p>
						<div class = "addmoreinf">
							<div>
								<h2>양파</h2>
								<h3>₩0</h3>
							</div>
							<img src = "../img/addmore/양파.PNG">
						</div>
					</div>
					<div class = "addmore" onclick = "swttomato()">
						<p class = "check3" id = "tomato">✓</p>
						<div class = "addmoreinf">
							<div>
								<h2>토마토</h2>
								<h3>₩0</h3>
							</div>
							<img src = "../img/addmore/토마토.PNG">
						</div>
					</div>
					
					<div class = "selectsideDrink">
						<img src = "../img/카트사이드변경확인버튼.PNG">
					</div>
				</div>
	
</body>
<script>
	function windowclose(){
		 window.close();
	}
	////////////////////////////////////////////////////////////////////////////////////////////////////////////
	var swsteak = 0;
	function swtsteak(){
		if(swsteak == 0){
			document.getElementById("steak").style.backgroundColor = "#000";
			swsteak = 1;
		}
		else if(swsteak == 1){
			document.getElementById("steak").style.backgroundColor = "lightgray";
			swsteak = 0;
		}
	}
	
	var swbacon2 = 0;
	function swtbacon2(){
		if(swbacon2 == 0){
			document.getElementById("bacon2").style.backgroundColor = "#000";
			swbacon2 = 1;
		}
		else if(swbacon2 == 1){
			document.getElementById("bacon2").style.backgroundColor = "lightgray";
			swbacon2 = 0;
		}
	}
	
	var swjalapeno4 = 0;
	function swtjalapeno4(){
		if(swjalapeno4 == 0){
			document.getElementById("jalapeno4").style.backgroundColor = "#000";
			swjalapeno4 = 1;
		}
		else if(swjalapeno4 == 1){
			document.getElementById("jalapeno4").style.backgroundColor = "lightgray";
			swjalapeno4 = 0;
		}
	}
	
	var swcheese2 = 0;
	function swtcheese2(){
		if(swcheese2 == 0){
			document.getElementById("cheese2").style.backgroundColor = "#000";
			swcheese2 = 1;
		}
		else if(swcheese2 == 1){
			document.getElementById("cheese2").style.backgroundColor = "lightgray";
			swcheese2 = 0;
		}
	}
	var swbacon1 = 0;
	function swtbacon1(){
		if(swbacon1 == 0){
			document.getElementById("bacon1").style.backgroundColor = "#000";
			swbacon1 = 1;
		}
		else if(swbacon1 == 1){
			document.getElementById("bacon1").style.backgroundColor = "lightgray";
			swbacon1 = 0;
		}
	}
	var swallex = 0;
	function swtallex(){
		if(swallex == 0){
			document.getElementById("allex").style.backgroundColor = "#000";
			swallex = 1;
		}
		else if(swallex == 1){
			document.getElementById("allex").style.backgroundColor = "lightgray";
			swallex = 0;
		}
	}
	var swjalapeno2 = 0;
	function swtjalapeno2(){
		if(swjalapeno2 == 0){
			document.getElementById("jalapeno2").style.backgroundColor = "#000";
			swjalapeno2 = 1;
		}
		else if(swjalapeno2 == 1){
			document.getElementById("jalapeno2").style.backgroundColor = "lightgray";
			swjalapeno2 = 0;
		}
	}
	var swcheese1 = 0;
	function swtcheese1(){
		if(swcheese1 == 0){
			document.getElementById("cheese1").style.backgroundColor = "#000";
			swcheese1 = 1;
		}
		else if(swcheese1 == 1){
			document.getElementById("cheese1").style.backgroundColor = "lightgray";
			swcheese1 = 0;
		}
	}
	var swdiablo = 0;
	function swtdiablo(){
		if(swdiablo == 0){
			document.getElementById("diablo").style.backgroundColor = "#000";
			swdiablo = 1;
		}
		else if(swdiablo == 1){
			document.getElementById("diablo").style.backgroundColor = "lightgray";
			swdiablo = 0;
		}
	}
	var swlettuce = 0;
	function swtlettuce(){
		if(swlettuce == 0){
			document.getElementById("lettuce").style.backgroundColor = "#000";
			swlettuce = 1;
		}
		else if(swlettuce == 1){
			document.getElementById("lettuce").style.backgroundColor = "lightgray";
			swlettuce = 0;
		}
	}
	var swmayonnaise = 0;
	function swtmayonnaise(){
		if(swmayonnaise == 0){
			document.getElementById("mayonnaise").style.backgroundColor = "#000";
			swmayonnaise = 1;
		}
		else if(swmayonnaise == 1){
			document.getElementById("mayonnaise").style.backgroundColor = "lightgray";
			swmayonnaise = 0;
		}
	}
	var swonion = 0;
	function swtonion(){
		if(swonion == 0){
			document.getElementById("onion").style.backgroundColor = "#000";
			swonion = 1;
		}
		else if(swonion == 1){
			document.getElementById("onion").style.backgroundColor = "lightgray";
			swonion = 0;
		}
	}
	var swtomato = 0;
	function swttomato(){
		if(swtomato == 0){
			document.getElementById("tomato").style.backgroundColor = "#000";
			swtomato = 1;
		}
		else if(swtomato == 1){
			document.getElementById("tomato").style.backgroundColor = "lightgray";
			swtomato = 0;
		}
	}
	
	
</script>
</html>