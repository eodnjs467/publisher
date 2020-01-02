<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	<jsp:forward page="ActionTagParamTo1.jsp">
		<jsp:param name="hello" value="Hello!"/>
		<jsp:param name="pageName" value="ActionTagParamTo1.jsp!"/>
	</jsp:forward>
</body>
</html>