<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
	<tr>
	<c:forEach var="dan" begin="2" end="9"> 	
		<td width="80" align="center">
			${dan}단
		</td>
	</c:forEach>
	</tr>
	<tr>
	<c:forEach var="i" begin="1" end="9">
		<c:forEach var="dan" begin="2" end="9"> 	
			<td width="80" align="center">
				${dan} X ${i} = ${dan*i}
			</td>
		</c:forEach>
		</tr>
	</c:forEach>
	</table>
</body>
</html>