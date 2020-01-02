<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>쿠키를 순식간에 저장해주고 안뜨는 페이지</title>
</head>
<body>

	<%
	
		String rememberIdPw = request.getParameter("rememberIdPw");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		Cookie cookieRememberIdPw;
		Cookie cookieId;
		Cookie cookiePw;
		Cookie cookieLoginStatus;
		
		if(rememberIdPw!=null && rememberIdPw.equals("keep")){
			cookieRememberIdPw = new Cookie("rememberIdPw", "keep");
		}else{
			cookieRememberIdPw = new Cookie("rememberIdPw", "temp");
		}
	
		cookieId = new Cookie("id", id);
		cookiePw = new Cookie("pw", pw);
		
		
		cookieLoginStatus = new Cookie("loginStatus", "login");
	
		response.addCookie(cookieRememberIdPw);
		response.addCookie(cookieId);
		response.addCookie(cookiePw);
		response.addCookie(cookieLoginStatus);
	
		response.sendRedirect("http://localhost:8081/Chap08/CookieHW_Chk.jsp");
		
	%>



</body>
</html>