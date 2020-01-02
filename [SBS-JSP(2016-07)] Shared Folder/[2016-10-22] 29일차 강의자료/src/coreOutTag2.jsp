<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.io.FileReader"%>

<html>
<body>
	<%FileReader reader = null; %>
	<pre>
		<c:out value="<%=reader%>" 
		       escapeXml="true"
		       default="출력값이 존재하지 않습니다."/>
	</pre>
</body>
</html>