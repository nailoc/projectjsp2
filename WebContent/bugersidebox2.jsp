<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>bugersidebox</title>
	<link rel = "stylesheet" href = "css/cartlist_style2.css"></link>
	<style>
		div.sideDrink{
		}
	</style>
</head>
<body>
	
	<div id = "bugersidebox"  class = "sideDrink">
					<div class = "bugerboxinf">
						<p>사이드</p>
						<img src = "images/X아이콘.JPG" onclick = "windowclose()">
					</div>
					<div class = "sidestyle">
						<img src = "images/side/fry_l.png">			
						<p>프렌치프라이[L]</p>
						<p>+0원</p>
					</div>
					<div class = "sidestyle">
						<img src = "images/side/cheese_fry.png">
						<p>치즈프라이 교환</p>
						<p>+400원</p>
					</div>
					<div class = "sidestyle">
						<img src = "images/side/truffle_fry.png">
						<p>트러플프라이 교환</p>
						<p>+100원</p>
					</div>
					<div class = "selectsideDrink">
						<img src = "images/카트사이드변경확인버튼.PNG" onclick = "windowclose()">
					</div>
				</div>
	
</body>
<script>
function windowclose(){
	 window.close();
}
</script>
</html>