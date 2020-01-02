<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	Cookie cookie = new Cookie("cookieName", "cookieValue");
	response.addCookie(cookie);
%>
<html>
<body>
	쿠키 생성이 완료되었습니다.
</body>
</html>