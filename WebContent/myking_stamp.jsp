<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspweb13</title>
<link rel="stylesheet" href="css/style_stamp.css"></link>
<link rel="stylesheet" href="css/style_basic.css"></link>
<style></style>
</head>
<body>

	<a name="top"></a>
	<jsp:include page="header_chg.jsp" flush="true"/>
	
	

	<div class="myk_container">
		<div class="page_navi">
			<a href="delivery.jsp"><span>딜리버리</span></a>
			<span>></span>
			<a href="myking_stamp.jsp"><span>스탬프</span></a>
		
		<p>
			
			배달지를 선택하세요
			<a href="" id="location_btn">변경</a><p>
		</div>
	</div>
	
	<div class="head_img">
	<a href="#event"><img src="images/stamp_event.png" height="300"></a>
	</div>
	
	
	<div class="container">
		<div class="content_box1">
			<h2>나의 스탬프 <span>(스탬프 수)개</span></h2>
			<div class="save_con" onclick="openWin();">적립내역</div>
			<p>세트 메뉴 주문 시 <span>스탬프 1개</span>, 팩 메뉴 주문 시 <span>스탬프 2개</span>를 드립니다.</p>
			<div class="cont_img"><img src="images/stamp_list.png" height="400"></div>
		</div>
		
	<div class="chg_color">
		<div class="content_box2">
			<h2>아직 스탬프가 <span>부족</span>해요</h2>
			<p>스탬프를 <span class="bold">5개 이상</span> 모으면 쿠폰이 지급됩니다.<br>
				팩 또는 세트 메뉴를 <span class="bold">버거킹 웹/앱에서 주문</span>해 보세요.<br>
				※단품, 콤보 및 쿠폰, 전자상품권을 통한 할인 구매 시 스탬프 적립이 되지 않습니다. 그 외 할인 프로모션의 경우 <br>정책에 따라 적립되지 않을 수 있습니다.</p>
			<p><a href="delivery.jsp"><img src="images/now_order.png" width="200" height="70"></a></p>
		</div>
		
		<a name="event"></a>
		<div class="content_box3">
			<h2>스탬프 적립 및 쿠폰 사용 방법</h2>
			<div class="stamp_useway">
				<div><img src="use1.png" height="350"><p><span class="bold">Step 1.</span>버거킹 웹, 앱 딜리버리에서 세트/팩 주문</p></div>
				<div><img src="use2.png" height="350"><p><span class="bold">Step 2.</span>버거킹 웹, 앱의 "MY킹" 메뉴 선택</p></div>
				<div><img src="use3.png" height="350"><p><span class="bold">Step 3.</span>스탬프 메뉴에서 스탬프 적립을 확인!</p></div>
				<div><img src="use4.png" height="350"><p><span class="bold">Step 4.</span>스탬프 적립 후 쿠폰 받기!</p></div>
				<div><img src="use5.png" height="350"><p><span class="bold">Step 5.</span>받은 쿠폰을 매장에서 사용하기!</p></div>
			</div>
		</div>
		
		<div class="clear"></div>
		
		<div class="content_box4">
			<h4>꼭 알아두세요.</h4>
			<ul>
				<li>버거킹의 APP, WEB를 통한 구매로만 스탬프가 적립 됩니다. (외부채널을 통한 적립 불가)</li>
				<li>딜리버리, 킹오더를 통해 세트구매시 1개, 팩 메뉴 구매시 2개의 스탬프가 적립 됩니다.</li>
				<li>스탬프를 5개 또는 10개 적립 후 다음 날 오전 9시 이후에 쿠폰이 발급 됩니다.</li>
				<li>단품, 콤보 및 쿠폰, 전자상품권을 통한 할인 구매 시 스탬프 적립이 되지 않습니다. 그외 할인 프로모션의 경우 정책에 따라 적립되지 않을 수 있습니다.</li>
				<li>쿠폰의 유효기간은 발급일로부터 1개월 입니다.</li>
				<li>쿠폰의 발급일은 쿠폰 받기를 한 날을 기준으로 합니다.</li>
				<li>쿠폰을 통해 지급 받은 무료 교환권으로는 스탬프 적립이 되지 않습니다.</li>
				<li>쿠폰다운로드는 이벤트가 종료된 다음날 까지만 가능합니다.</li>
				<li>유효기간이 지난 경우 쿠폰 발급 및 사용이 불가함 유의 부탁 드립니다.</li>
				<li>일부 매장의 경우 스탬프의 적립과 사용이 제한될 수 있습니다.</li>
				<li>스탬프 제외매장(가나다 순)
				<p>거제고현점, 거제수월점, 거제옥포점, 경기양평점, 경남대점, 경북상주점, 경북영주가흥점, 경산사동점, 광양LF스퀘어점, 광양중동점, 광주경안점, 광주매곡점, 
				광주봉선점, 광주상무점, 광주수완점, 광주월계점, 광주일곡점, 광주첨단2지구점, 광주터미널점, 구미신평점, 구미인의점, 군산나운FS점, 군산수송점, 김천혁신도시점, 
				김포현대아울렛, 김해삼계점, 나주빛가람점, 당진읍내점, 대구대명FS점, 대구대점, 대구이시아폴리스점, 대구죽전네거리DT, 대구지산점, 대구칠곡3지구점, 대구테크노폴리스점, 
				대명비발디점, 대전관평점, 대전도안점, 대전시청점, 대전현대아울렛점, 마산합성점, 목포하당점, 방배카페골목, 보령동대점, 부산괴정역점, 부산망미SK점, 부산안락DT점, 
				삼성라이온즈파크점, 서산호수공원점, 세종반곡점, 세종행복새롬점, 수원매탄점, 수원정자점, 순천법원점, 숭례문점, 여수웅천점, 연희점, 오산궐동점, 오션월드점, 오창호수공원점, 
				용인동백점, 울산신정FS점, 원광대점, 의정부HP점, 익산영등점, 인제대점, 인천공항1점, 인천공항교통센터1점, 인천송도센트럴파크점, 인천연수HP점, 인천연수점, 전남도청점, 
				전북대점, 전북도청점, 전주중앙점, 정읍중앙점, 지산리조트점, 진주경상대점, 천안두정점, 천안성성점, 천안쌍용대로DT점, 청담주성점, 청주복대점, 청주산남점, 청주오송점, 
				청주율량점, 충남대병원DT점, 충남도청점, 충북대점, 충북진천점, 평택비전점, 평택청북점, 포항공대점, 한동대점, 해운대비치점, 해운대우동점, 호남대점,</p>
				</li>
				<li>이벤트 종료 시, 적립된 스탬프는 초기화 됩니다.</li>
			</ul>
		</div>
	</div>
</div>
	
	<jsp:include page="top.jsp" flush="true"/>
	<jsp:include page="footer_chg.jsp" flush="true"/>
	
	
</body>
<script>
	
	function openWin() {
		window.open("myking_openWin.jsp", "스탬프새창", "width=600, height=680, location=no, toolbar=no, menubar=no, resizable=no, top=150, left=600");
	}
	
</script>
</html>