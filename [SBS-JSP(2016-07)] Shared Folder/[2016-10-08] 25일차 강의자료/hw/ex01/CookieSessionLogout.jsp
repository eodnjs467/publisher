<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
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
<h3>
	[<%=id%>]님 정상적으로 로그아웃되었습니다.<br/>
	이용해주셔서 감사합니다.
</h3>

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

<form action="CookieSessionLogin.jsp" method="post">
	<input type="submit" value="로그인 페이지로 이동"/>
</form>


</body>
</html>