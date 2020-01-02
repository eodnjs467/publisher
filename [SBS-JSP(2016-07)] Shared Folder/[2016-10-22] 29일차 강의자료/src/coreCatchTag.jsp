<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<body>

<c:catch var="reqParameterEx">
<%
	String strParameter = request.getParameter("NoParameter");
	out.println(strParameter.length());
%>
</c:catch><br/>

<pre>
	<c:out value="${reqParameterEx}"/>
</pre>


</body>
</html>