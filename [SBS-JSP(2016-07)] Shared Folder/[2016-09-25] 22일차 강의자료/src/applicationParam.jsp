<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	getInitParameter() 메서드 사용<hr/>
<%
	String name = "DBIp";
	String value = application.getInitParameter(name); 
%>	

<%=name + " 파라미터의 설정값 : " + value %>
	
</body>
</html>