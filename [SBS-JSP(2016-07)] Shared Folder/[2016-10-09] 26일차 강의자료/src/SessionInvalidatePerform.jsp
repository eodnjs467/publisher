<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
<%
	if(session != null){
		session.invalidate();
	}
	response.sendRedirect(
			"http://localhost:8081/Chap08/SessionInvalidateResult.jsp"
	);
	
%>
</body>
</html>