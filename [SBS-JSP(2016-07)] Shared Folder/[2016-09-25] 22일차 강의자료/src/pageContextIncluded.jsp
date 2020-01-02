<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	<%
	out.println(request.getParameter("test") + "<br/>");
	out.println("여기는 pagecontextIncluded.jsp 페이지입니다!"); 
	
	%>
</body>
</html>