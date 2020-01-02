<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>로그아웃</title>
</head>
<body>

	<h3>안전하게 로그아웃 되었습니다. 이용해주셔서 감사합니다.</h3><hr>
	<h3>다시 로그인 하시려면</h3>
<%
	pageContext.include("Login.jsp");
	session.invalidate();
%>
	<hr>
	
	<form action="Login.jsp" method="post">
		<input type="submit" value="첫 화면으로">
	</form>
	

</body>
</html>