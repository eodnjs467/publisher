<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	String loginStatus = null;
	String rememberId = null;
	String id = null;
	String pw = null;
	
	if(cookies != null && cookies.length > 0){
		for(int i=0 ; i < cookies.length ; i++){
			
			if(cookies[i].getName().equals("loginStatus")){
				loginStatus = cookies[i].getValue();
			}
			
			if(cookies[i].getName().equals("rememberId")){
				rememberId = cookies[i].getValue();
			}
			
			if(cookies[i].getName().equals("id")){
				id = cookies[i].getValue();
			}
			if(cookies[i].getName().equals("pw")){
				pw = cookies[i].getValue();
			}
			if(rememberId.equals("temp")){
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
			}
		}
	}
%>
<%
	if(loginStatus != null
	&& loginStatus.equals("login")
	&& rememberId != null
	&& id != null 
	&& pw != null ){
%>
<table border="1">
	<tr>
		<td>
			<%=session.getAttribute("ID") %>님 로그인을 환영합니다.<br>
			<%=(rememberId.equals("temp")?"유지하지 않음":"유지함") %>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<form action="Logout.jsp" method="post">
				<input type="submit" value="로그아웃">
			</form>
		</td>
	</tr>
</table>
<%
	}else{
%>
<table border="1">
	<tr>
		<td>
			로그인을 하지 않으셨거나, 잘못된 접근 입니다.<br/>
			로그인 하여 주시기 바랍니다.
		</td>
	</tr>
	<tr>
		<td>
			<form action="Login.jsp" method="post">
				<input type="submit" value="첫 화면으로">
			</form>
		</td>
	</tr>
</table>
<%
	}
%>
	
</body>
</html>