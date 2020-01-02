<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	String rememberId = request.getParameter("rememberId");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	session.setAttribute("ID", id);
	session.setAttribute("PW", pw);
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
	response.sendRedirect("http://localhost:8081/Chap08/Login_project/Logined.jsp");
%>
</body>
</html>