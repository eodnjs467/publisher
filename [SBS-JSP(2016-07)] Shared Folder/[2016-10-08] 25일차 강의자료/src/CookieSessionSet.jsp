<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>

<%
	String rememberId = request.getParameter("rememberId");
	String id = request.getParameter("id");
	Cookie cookieRememberId;
	Cookie cookieId;
	Cookie cookieLoginStatus;
	
	if(rememberId != null && rememberId.equals("keep")){
		cookieRememberId = new Cookie("rememberId", "keep");
	}else{
		cookieRememberId = new Cookie("rememberId", "temp");
	}
	
	cookieId = new Cookie("id", id);
	cookieLoginStatus = new Cookie("loginStatus", "login");
	
	response.addCookie(cookieRememberId);
	response.addCookie(cookieId);
	response.addCookie(cookieLoginStatus);
	
	out.println(cookieRememberId.getValue());
	response.sendRedirect("http://localhost:8081/Chap08/CookieSessionChk.jsp");
%>


</body>
</html>