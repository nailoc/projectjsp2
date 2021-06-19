<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="com.hk.jsp.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspweb13</title>
<link rel="stylesheet" href="css/style_change.css"></link>
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
		
		<p>
			
			배달지를 선택하세요
			<a href="" id="location_btn">변경</a><p>
		</div>
	</div>
	
	<form method="post" action="updatePro.jsp">
	<div class="chg_container">
	
		<div class="title">
			<h2>회원 정보 변경</h2>
		</div>
		
		<div class="chg_content1">
			<p><img src="images/man.png" width="70" height="70" align="middle">기본정보</p>
			<div class="user_info">
				<table>
					<tr>
						<td class="tb_bold">이메일</td>
						<td class="tb_nor"><%=dto.getUserEmailId() %></td>
						<td></td>
					</tr>
					<tr>
						<td class="tb_bold">이름</td>
						<td class="tb_nor"><%=dto.getUserName() %></td>
						<td></td>
					</tr>
					<tr>
						<td class="tb_bold">핸드폰</td>
						<td class="tb_nor"><%=dto.getUserPhone() %></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td id="phn_chg">
							<input type="text" value="" name="phn" placeholder="핸드폰 번호를 입력해 주세요">
						</td>
						
					</tr>
				</table>
			</div>
			
			<p><img src="images/pwchg.png" width="60" height="50" align="middle">비밀번호</p>
			<div class="pwchg">
				<input type="password" name="password" placeholder="비밀번호">
			</div>
			
			
			<p><img src="images/check.png" width="50" height="50" align="middle">마켓팅 정보 수신동의</p>
			<div class="agree">
				<input type="checkbox" name="agree" value="1" checked="checked">이메일을 통한 이벤트/ 주문 정보의 수신에 동의합니다.<br><br>
				<input type="checkbox" name="agree" value="2" checked="checked">SMS를 통한 이벤트/ 주문 정보의 수신에 동의합니다.
			</div>
			
			
			<div class="chg_btn">
				<a href="myking_main.jsp"><img src="images/cancel_btn.png" width="180" height="60"></a>
				<a href="myking_main.jsp">
				<button type="submit">
				<img src="images/chg_btn.png" width="180" height="60" onclick="chg();" id="chg">
				</button></a>
			</div>
			
			
			<div class="leave">
				<a href="myking_leave.jsp"><p>회원탈퇴<img src="images/leave.png" width="50" height="50" align="middle"></p></a>
			</div>
		</div>
	</div>
	
	<div class="clear"></div>
	</form>
	<jsp:include page="top.jsp" flush="true"/>
	<jsp:include page="footer_chg.jsp" flush="true"/>
	
	
	
	
</body>
<script>
	
	//function chg_btn() {

	//	btnElement = document.getElementById('btn');
	//	btnPhn = document.getElementById('phn_chg');
		
	//	if(btnElement.innerText=='변경') {
	//		btnElement.innerText = '취소';
	//		btnPhn.style.display = 'block';
			
	//	}else {
	//		btnElement.innerText = '변경';
	//		btnPhn.style.display = 'none';
			
	//	}
	//};
	
	
	//function chg_phn() {
	//	phnEle = document.getElementById('phn_btn');
	//	alert('인증번호를 발송했습니다');
	//};
	
	//function chg() {
	//	chgEle = document.getElementById('chg');
	//	alert('변경되었습니다');
	//}
	
</script>
</html>