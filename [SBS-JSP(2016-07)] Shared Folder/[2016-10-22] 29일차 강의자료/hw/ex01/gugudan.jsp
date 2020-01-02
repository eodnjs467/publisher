<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>구구단 출력</title>
	</head>
	<body>
		<h3>구구단 출력</h3>
		<table border="1">		
			<c:forEach var="i" begin="0" end="9">
				<tr>
					<c:forEach var="j" begin="2" end="9">
						<c:choose>
							<c:when test="${i == 0}">
								<td>${j}단</td>
							</c:when>
							<c:otherwise>
								<td>${j} X ${i} = ${j * i}</td>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</tr>
			</c:forEach>
		</table>	
	</body>
</html>