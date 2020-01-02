<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>로그아웃</title>
</head>



<body>

<% String logoutKey = request.getParameter("logoutKey");
if(session.getAttribute("ID")!=null && logoutKey !=null && logoutKey.equals("ok")){

	//session.removeAttribute("ID");
	
	%>
	
	<h3>안전하게 로그아웃 되었습니다. 이용해주셔서 감사합니다.</h3><hr>
	<h3>다시 로그인 하시려면 </h3>

	<%pageContext.include("/SessionHW_Login.jsp");%>
	
<hr>

		<form action="SessionHW_Login.jsp" method="post">
			<input type="submit" value="첫화면으로">
		</form>
	
	<%session.removeAttribute("ID"); %>
	<%//session.invalidate();%>
	
	
<%}else if(session.getAttribute("ID")!=null ){

	response.sendRedirect("http://localhost:8080/Chap08/SessionHW_Logined.jsp");
	
}else{%> 


	<h3>로그인하지 않으셨거나, 잘못된 접근입니다.<br>
		로그인하여 주시기 바랍니다.</h3>
	
	
	<form action="SessionHW_Login.jsp" method="post">
		<input type="submit" value="로그인페이지">
	</form>
	

<%}%>






</body>
</html>