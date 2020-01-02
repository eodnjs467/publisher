<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>쿠키를 더한다</title>
</head>
<body>

<%
	
		String rememberWhat = request.getParameter("rememberWhat");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		Cookie cookieRememberWhat=null;
		Cookie cookieId;
		Cookie cookiePw;
		Cookie cookieLoginStatus;
		
		if(rememberWhat!=null && !rememberWhat.equals("Temp")){
			
			if(rememberWhat.equals("keepID")){
				cookieRememberWhat = new Cookie("rememberWhat", "keepID");
			}else if(rememberWhat.equals("keepIDPW")){
				cookieRememberWhat = new Cookie("rememberWhat", "keepIDPW");
			}
			
		}else{
			cookieRememberWhat = new Cookie("rememberWhat", "Temp");
		}
	
		cookieId = new Cookie("id", id);
		cookiePw = new Cookie("pw", pw);
		cookieLoginStatus = new Cookie("loginStatus", "login");
	
		response.addCookie(cookieRememberWhat);
		response.addCookie(cookieId);
		response.addCookie(cookiePw);
		response.addCookie(cookieLoginStatus);
	
		response.sendRedirect("http://localhost:8081/Chap08/CookieHW2_Chk.jsp");
		
	%>

</body>
</html>