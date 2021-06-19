<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspweb13</title>
<link rel="stylesheet" href="css/order.css"></link>
<style></style>
</head>
<body>

<div class="wrapper">	
	<div class="top">
		<div class="margin">
		<div class="top-top">
			<div class="top_menu">
				<ul class="menu">
					<li><a href="index.jsp">브랜드홈</a></li>
					<li><a href="login.jsp">로그아웃</a></li>
					<li><a href="myking_main.jsp">MY킹</a></li>
					<li><a href="">고객센터</a></li>
				</ul>
			</div>								
		</div>
		
		<div class="top-logo">
			<div class="logo">
				<div class="image">
					<a href="index.jsp"><img src="images/order_logo.png"></a>
				</div>
				<div class="write">
					<p>딜리버리</p>
				</div>
			</div>
			
			<div class="MyKing">
				<img src="images/사용자.png">
				<p>안태영 님 안녕하세요</p>
				<p><a href="myking_main.jsp">MY킹 바로가기 ></a></p>
			</div>
		</div>
		</div>
	</div>
	
	<div class="order">
		<div class="margin">
		<div class="delivery-order">
			<a href="orderlist.jsp"><img src="images/오토바이.png"></a>
			<h2>딜리버리 주문내역</h2>
			<h3>주문내역이 없습니다.</h3>
		</div>
		
		<div class="cart">
			<a href="cartlist.jsp"><img src="images/카트.png"></a>
			<h2>카트</h2>
			<h3>스태커2와퍼 라지세트</h3>
		</div>
		</div>
	</div>
	
	<div class="middle">
	<div class="margin">
		<p class="kungs">딜리버리 > 주문하기</p>
	</div>
	</div>
	
	<div class="main">
	<div class="margin">
		<div class="main-order">
			<h1>주문하기</h1>			
			<img src="images/small.png"><p class="수단">배달정보</p>
			
			<div class="impor">
				<div class="address">
					<p id="pInput" class="txt_addr">서울특별시</p>
					
					<button type="button" class="btn04" onclick="change();">변경</button>
				</div>
				
				<div class="address2">
					<div class="good">
					<div class="sub">
					<p class="txt_addr2">연락처<input type="text" maxlength="20"></p>
					</div>
					
					<div class="sub2">
					<p class="txt_addr3">매장 </p><div class="매장"><p>낙성대점</p></div>
					</div> 
					 
					<div class="sub3">
					<p class="txt_addr4">요청사항<input type="text" class="text_1" placeholder="요청사항을 입력하세요"></p>
					</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	
	<div class="main2">
	<div class="margin">
		<div class="main-order2">			
			<img src="images/햄버거.png"><p class="수단">주문정보</p>
			
			<div class="impor2">
				<div class="content2">
					<h1>스태커2와퍼 라지세트</h1>
				</div>
				
				<div class="content2-1">
					<div class="content2-1-1">
						<p class="him">재료추가</p>
						<p class="zpzp">없음</p>
					<button type="button" class="btn05" onclick="windowbugeraddmorebox();">변경</button>
					</div>
					
					<div class="content2-1-1">
						<p class="him">사이드</p>
						<p class="zpzp">프렌치프라이[L]</p>
					<button type="button" class="btn05" onclick="windowbugersidebox();">변경</button>
					</div>
					
					<div class="content2-1-1">
						<p class="him">음료</p>
						<p class="zpzp">콜라[L]</p>
					<button type="button" class="btn05" onclick="windowbugerdrinkbox();">변경</button>
					</div>
				</div>
				<div class="content2-2">
					<p class="her">수량</p>
					<div class="num_set">
						<div class="qty"> 
						<div class="minus">
						 <a href="javascript:change_qty2('m')"><img src="images/마이너스.png" alt="-"></a>
						</div>
						 <input type="text" name="ct_qty" id="ct_qty" value="1" readonly="readonly">
						  <div class="plus">
						  <a href="javascript:change_qty2('p')"><img src="images/플러스.png" alt="+"></a>
						 
						  </div> 
						  </div>

					<% int price = 12600; %>
					
					<p id="total_amount" class="me"><%= price %></p>
					<p class="her2">합계금액</p>
					
					
				</div>
				
			</div>
				
		</div>
		</div>
		</div>
	
	</div>
	
	
	
	<div class="main3">
	<div class="margin">
		<div class="main-order3">			
			<img src="images/달러.png"><p class="수단">최종 결제금액</p>
			
			<div class="impor3">
				<div class="content3">
					<div class="content3-1">
					<p class="last">최종 결제금액</p>
					<p id="total_amount2"  class="last2"><%= price %></p>
					</div>
					
					<div class="content3-2">
					<p class="last3">제품금액</p>
					<p  id="total_amount3" class="last4"><%= price %></p>
					</div>
					
					<div class="content3-3">
					<p class="last5">할인금액</p>
					<p class="last6">0</p>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	</div>
	
	<div class="main4">
	<div class="margin">
		<div class="main-order4">		
				
			<img src="images/결제수단.png"><p class="수단">결제수단 선택</p>
			
			<div class="button-1">
			<button id="btn_num1">간편결제</button>
			<button id="btn_num2">카드결제</button>
			<button id="btn_num3">만나서 결제</button>
			</div>
			<div class="impor4" id="num1">
				<div class="content4">
					<div class="img23">
						<br>
						<br>
						<br>
						<img id="img25" class="img24" src="images/네이버페이.png">
						<img class="img24" src="images/카카오페이.png">
						<img class="img24" src="images/페이코.png">
					</div>
				</div>
				
				
				<div class="gold">
					<p class="gold1">총 결제금액</p>
					<p  id="total_amount4" class="gold2"><%= price %></p>
				
				</div>
			</div>
			
			<div class="impor4" id="num2">
				<div class="content4">
					<div class="img23">
						<br>
						<br>
						<br>
						<input type="radio" name="paymentType1" checked="checked" value="06">
						<span>신용카드 결제</span>
					</div>
				</div>
				
				
				<div class="gold">
					<p class="gold1">총 결제금액</p>
					<p id="total_amount5" class="gold2"><%= price %></p>
				
				</div>
			</div>
			
			<div class="impor4" id="num3">
				<div class="content4">
					<div class="img23">
						<br>
						<br>
						<input type="radio" name="paymentType" checked="checked" value="09">
						<span>현장에서 신용카드 결제</span>
						<br>
						<input type="radio" name="paymentType" value="10">
						<span>현장에서 현금 결제</span>
					</div>
				</div>
				
				
				<div class="gold">
					<p class="gold1">총 결제금액</p>
					<p  id="total_amount6" class="gold2"><%= price %></p>
				
				</div>
			</div>
			
			<div class="공백">
			</div>
			
			<div class="btn">
				<div class="btn2">
				<button type="button" class="btn_bottom" onclick="location.href='cartlist.jsp'">
					<span>취소</span>
				</button>
				
				<button type="button" class="btn_bottom2" onclick="showpopup();">
					<span>결제하기</span>
				</button>
				</div>
			</div>
		</div>
	</div>
	</div>
	
	<div class="bottom-1">
		<div class="margin">
		<div class="bottom-h1">
			<h3>유의사항</h3>
		</div>
		
		<div class="submenu">
			<ul>
				<li>매장별 주문금액이 상이하니, 반드시 최소금액을 확인하기 바랍니다.</li>
				<li>배달 소요시간은 기상조건이나 매장 사정상 지연 또는 제한될 수 있습니다.</li>
				<li>고객님과 수 차례 연락을 시도한 후 연락이 되지 않는 경우 배달음식이 변질되거나 부패될 우려로 식품위생법상 위반될 여지가 있어 별도로 보관 하지 않으며, 재배달 또는 환불처리가 어려울 수 있습니다.</li>
				<li>딜리버리 서비스 메뉴의 가격은 매장 가격과 상이하며, 딜리버리 시 타쿠폰을 사용하실 수 없습니다. (일부품목 배달 제외)</li>
				<li>프로모션 할인과 쿠폰할인은 중복적용이 불가합니다.</li>
				<li>배달 제품은 매장 행사(할인가격)에서 제외됩니다.</li>
				<li>제품 가격 및 메뉴 구성은 본사 사정상 변경될 수 있습니다.</li>
				<li>대량 주문의 경우 콜센터(1599-0505)주문으로만 가능합니다.</li>
				<li>주문 완료 후 변경 및 취소는 콜센터(1599-0505)에서만 가능합니다.</li>
			</ul>
		</div>
		</div>
	</div>
	 <footer>		
		<div id = "inf">
			<img src = "images/버거킹글자.png">
			<p>서울 종로구 삼봉로 71 G 타워 2층 주식회사 비케이알 | 전화주문 1599-0505<br>
							사업자 등록번호 101-86-76277 | (주)BKR 대표이사 문영주<br>
							Copyright 2019 BKR Co., Ltd. All right Reserved<br>
			</p>
		</div>
		
		<div id = "other">	
			<p>
			<a href = "https://www.burgerking.co.kr/#/branch">이용약관</a> | 
			<a href = "https://www.burgerking.co.kr/#/privacy">개인정보취급방침</a> | 
			<a href = "https://www.burgerking.co.kr/#/legal">법적고지</a>
			</p>
			<p id = "button">
				<a href = "https://www.burgerking.co.kr/#/recruit"><img src = "images/인재채용.png" alt = "인재채용"></a>
				<a href = "https://www.burgerking.co.kr/#/branch"><img src = "images/가맹점모집.png" alt = "가맹점모집"></a>
			</p>
		</div>
		
	</footer> 
	
	<div style="position: fixed; bottom : 20px; right: 20px;">
	<a href="#top"><img src="images/화살표.png"></a>
</div>
</div>
</body>
<script src="js/jquery-3.6.0.min.js"></script> <!-- 사용하지 않으면 주석을 막아주세요 -->
<script>
	$(function(){
		$(".img24").click(function() {
			$("img").css("border","none");
			$(this).css("border","2px solid red");
			
		});
		
	});
	
	$(function(){
		$("#btn_num1").click(function() {
			$("#btn_num1").css("color","red");
			$("#btn_num2").css("color","#b8b8b8");
			$("#btn_num3").css("color","#b8b8b8");
		});
		
	});
	
	$(function(){
		$("#btn_num2").click(function() {
			$(this).css("color","red");
			$("#btn_num1").css("color","#b8b8b8");
			$("#btn_num3").css("color","#b8b8b8");
					
		});	
	});
	
	$(function(){
		$("#btn_num3").click(function() {
			$(this).css("color","red");
			$("#btn_num1").css("color","#b8b8b8");
			$("#btn_num2").css("color","#b8b8b8");		
		});
		
	});
	
	$(function (){ $("#btn_num1").click(function (){
		$("#num1").show();
		$("#num2").hide();
		$("#num3").hide();
		
		});
	});
	
	$(function (){ $("#btn_num2").click(function (){ 
		$("#num1").hide();
		$("#num2").show(); 
		$("#num3").hide();
	});
	
	});
	
	$(function (){ $("#btn_num3").click(function (){ 
		$("#num1").hide();
		$("#num2").hide(); 
		$("#num3").show();
	
	});
	});

	function showpopup() {
		var id = document.querySelector("#pInput").innerText
		var addr = encodeURIComponent(id);
		var openasd = window.open("showpopup.jsp?addr="+addr,"결제하기","width=500, height=440, left=100, top=50");		
	}
	
	
	
	
	Number.prototype.format = function(){
							if(this==0) return 0;
							var reg = /(^[+-]?\d+)(\d{3})/; 
							var n = (this + ''); 
							while (reg.test(n)) 
								n = n.replace(reg, '$1' + ',' + '$2');
							return n; };
	String.prototype.format = function(){ 
							var num = parseFloat(this); 
							if( isNaN(num) ) return "0"; 
							return num.format(); }; 
	var basic_amount = parseInt('12600'); 
	function change_qty2(t){ 
		
		var min_qty = 1; 
		var this_qty = $("#ct_qty").val()*1; var max_qty = '200'; 
		// 현재 재고 
		if(t=="m"){ this_qty -= 1; if(this_qty<min_qty){
			alert("수량은 1개 이상 입력해 주십시오.");
			return; }
		} else if(t=="p"){ 
			this_qty += 1; 
			if(this_qty>max_qty){ 
				alert("죄송합니다. 재고가 부족합니다."); 
				return; }
			}
		var show_total_amount = basic_amount * this_qty; 
		$("#ct_qty").val(this_qty); 
		$("#it_pay").val(show_total_amount); 
		$("#total_amount").html(show_total_amount.format()); 
		$("#total_amount2").html(show_total_amount.format());
		$("#total_amount3").html(show_total_amount.format());
		$("#total_amount4").html(show_total_amount.format());
		$("#total_amount5").html(show_total_amount.format());
		$("#total_amount6").html(show_total_amount.format());
		}
	
	function change() {
		window.open("address.jsp","주소창","width=500, height=440, left=100, top=50");
	}
	
	function windowbugeraddmorebox(){
	      window.open('bugeraddmorebox2.jsp', 'addmore', 'width = 580, height = 600, scrollbars = 1', true);      
	   }
	function windowbugersidebox(){
	      window.open('bugersidebox2.jsp', 'side', 'width = 580, height = 450, scrollbars = 1', true);      
	   }
	function windowbugerdrinkbox(){
	      window.open('bugerdrinkbox2.jsp', 'drink', 'width = 580, height = 600, scrollbars = 1', true);      
	   }
	   

		
	

</script>
</html>