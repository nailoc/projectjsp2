<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="com.hk.jsp.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspweb13</title>
<link rel="stylesheet" href="css/style_leave.css"></link>
<link rel="stylesheet" href="css/style_basic.css"></link>
<style></style>
</head>
<body>
<%
		String id = null;
		UserDto dto = new UserDto();
		if(session.getAttribute("sessionId")==null){
			out.println("<script>alert('로그인되지 않았습니다');location.href='login.jsp'</script>");
		}else{
			id=(String)session.getAttribute("sessionId");
			UserDao dao = UserDao.getInstance();
			dto = dao.getUserInfo(id);
		}

		
	%>
<a name="top"></a>
	<jsp:include page="header_chgking.jsp" flush="true"/>
	
	

	<div class="myk_container">
		<div class="page_navi">
			<a href="delivery.jsp"><span>딜리버리</span></a>
			<span>></span>
			<a href="myking_main.jsp"><span>MY킹</span></a>
			<span>></span>
			<a href="myking_change.jsp"><span>회원 정보 변경</span></a>
			<span>></span>
			<a href="myking_leave.jsp"><span>회원 탈퇴</span></a>
		
		<p>
			
			배달지를 선택하세요
			<a href="" id="location_btn">변경</a><p>
		</div>
	</div>
	
	
	<div class="chg_container">
	
		<div class="title">
			<h2>회원 탈퇴</h2>
		</div>
		
		<div class="atten">
			<p>
			<img src="images/atten.png" width="50" height="50" align="middle">
			회원 탈퇴시 유의사항</p>
			
			<div class="atten_con">
				<div class="atten_head">
					<span>아래 유의사항을 반드시 확인하세요.</span>
				</div>
				
				<div class="atten_main">
					<ul>
						<li>탈퇴 시 고객님의 정보는 전자상거래 상에서의 소비자 보호 법률에 의거한 버거킹의 개인정보보호정책에 따라 관리됩니다.</li>
						<li>탈퇴 시 보유한 쿠폰 정보는 모두 초기화 되며, 재가입 시 복구가 불가합니다.</li>
						<li>탈퇴 후 어떠한 방법으로도 기존의 개인정보를 복원할 수 없습니다.(단 결제 내역은 5년까지 보관)</li>
						<li>삭제되는 기록은 다음과 같습니다.<br>
						- 아이디(이메일), 휴대폰 번호, MY 배달지, MY 매장, 마이 세트, 쿠폰, 주문 이력</li>
					</ul>
				</div>
			</div>
		</div>
		
		
		<div class="reason">
			<p><img src="images/reason.png" width="40" height="40" align="middle">탈퇴 사유</p>
			
			<div class="reason_con">
				<select>
					<option class="reason_opt" disabled selected="selected">탈퇴 사유를 선택해주세요.</option>
					<option>개인정보보호</option>
					<option>아이디변경</option>
					<option>사이트이용불만</option>
					<option>직접입력</option>
				</select>
			</div>
		</div>
		
		<form method="post" action="deletePro.jsp">
			<div class="confirm">
			<p><img src="images/man.png" width="50" height="50" align="middle">계정확인</p>
			
			<div class="confirm_con">
				<table>
					<tr>
						<td class="confirm_h">이메일</td>
						<td class="confirm_user"><%=dto.getUserEmailId() %></td>
					</tr>
					<tr>
						<td class="confirm_h">현재 비밀번호</td>
						<td class="confirm_user"><input type="password" name="password" placeholder="현재 비밀번호">
						<p>현재 비밀번호를 입력해 주세요.</td>
					</tr>
				</table>
			</div>
		</div>
		
		
		<div class="last_chk">
			<input type="checkbox" id="chk" onclick="btnColor_chg();">위 내용을 확인하였으며, 버거킹 탈퇴를 합니다.
		</div>
		
	</div>
	
	<div class="btn">
		<a href="myking_change.jsp"><img src="images/cancel_btn.png" width="180" height="60"></a>
		<a href="login.jsp" onclick="btnColor_chg();">
		<button type="submit">
		<img src="images/drop_btn_before.png" width="180" height="60" id="drop" onclick="fin_drop();">
		</button>
		</a>
	</div>
	</form>
	
	<jsp:include page="top.jsp" flush="true"/>
	<jsp:include page="footer_chg.jsp" flush="true"/>
	

</body>
<script>
	
	
	function btnColor_chg() {
		var btnChk = document.getElementById('chk').checked;
		
		var btn = document.getElementById('drop');
		
		if(btnChk==true) {
			btn.src='images/drop_btn.png';
		}else {
			btn.src='images/drop_btn_before.png';
		}
		
	}
	
	//function fin_drop() {
	//	dropEle = document.getElementById('drop');
	//	alert('탈퇴 되었습니다');
	//}
	
</script>
</html>