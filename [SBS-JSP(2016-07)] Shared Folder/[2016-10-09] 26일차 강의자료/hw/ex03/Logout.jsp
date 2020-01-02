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
				cookies[i].setValue("logout");
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
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
		}
	}

%>
안전하게 로그아웃 되었습니다. 이용해 주셔서 감사합니다.<br/><hr>
다시 로그인 하시려면
<%
	if(rememberId != null && rememberId.equals("temp")){
		if(cookies != null && cookies.length > 0){
			for(int i=0 ; i < cookies.length ; i++){
				if(cookies[i].getName().equals("id")){
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
				}
				if(cookies[i].getName().equals("pw")){
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
				}
			}
		}
	}
%>
<%
	pageContext.include("Login.jsp");
%>
<hr>
<form action="Login.jsp" method="post">
	<input type="submit" value="첫 화면으로">
</form>
</body>
</html>