<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>

<%
	String rememberId = request.getParameter("rememberId");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	Cookie cookieRememberId;
	Cookie cookieId;
	Cookie cookiepw;
	Cookie cookieLoginStatus;
	
	if(rememberId != null && rememberId.equals("keep")){
		cookieRememberId = new Cookie("rememberId", "keep");
	}else{
		cookieRememberId = new Cookie("rememberId", "temp");
	}
	
	cookieId = new Cookie("id", id);
	cookiepw = new Cookie("pw",pw);
	cookieLoginStatus = new Cookie("loginStatus", "login");
	
	response.addCookie(cookieRememberId);
	response.addCookie(cookieId);
	response.addCookie(cookiepw);
	response.addCookie(cookieLoginStatus);
	
	out.println(cookieRememberId.getValue());
	response.sendRedirect("http://localhost:8081/HWChap/CookieSessionChk.jsp");
%>


</body>
</html>