<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>로그인 확인 페이지</title>
</head>
<body>

	<%
	
	Cookie[] cookies = request.getCookies();
	String loginStatus = null;
	String rememberIdPw = null;
	String id = null;
	String pw = null;
	
	if(cookies!=null && cookies.length>0){
		
		for(int i=0; i<cookies.length; i++){
			
			if(cookies[i].getName().equals("loginStatus")){
				
				loginStatus = cookies[i].getValue();	
				
			}
			
			if(cookies[i].getName().equals("rememberIdPw")){
				
				rememberIdPw = cookies[i].getValue();
				
			}
			
			if(cookies[i].getName().equals("id")){
				id=cookies[i].getValue();
			}
			
			if(cookies[i].getName().equals("pw")){
				pw=cookies[i].getValue();
			}
			
			
		}//for끝
		
	
	}//if끝
	
	
	%>


<%if(loginStatus != null && loginStatus.equals("login") && rememberIdPw != null && id != null && pw != null
	 && !id.equals("") && !pw.equals("")){ %>
		
		<h3>[<%=id %>]님 환영합니다.<br>
		로그인 아이디/비밀번호 기억상태를[<%=(rememberIdPw.equals("temp")? "유지하지 않음" : "유지함") %>] 으로 설정하셨습니다.
		</h3>
		
		<form action = "CookieHW_Logout.jsp" method="post">
			<input type="submit" value="로그아웃">
		</form>
<%}else{ %>
	
		<h3>로그인하지 않으셨거나, 잘못된 접근입니다.<br>
			로그인하여 주시기 바랍니다.</h3>
		
		<form action="CookieHW_Login.jsp" method="post">
			<input type="submit" value="로그인페이지">
		</form>
		
	<% } %>






</body>
</html>