<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
<%
	session.setAttribute("ID", request.getParameter("id"));
	response.sendRedirect("http://localhost:8081/Chap08/SessionChk.jsp");
%>
</body>
</html>