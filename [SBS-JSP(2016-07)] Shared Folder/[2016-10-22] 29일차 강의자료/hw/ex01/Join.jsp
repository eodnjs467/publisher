<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>


<html>
	<head>
		<title>회원가입</title>
	</head>
	<body>
		<h3>작성하신 내용은 아래와 같습니다</h3>
		이름 : ${param.name } <hr/>
		<c:choose>
		<c:when test="${param.gender == 0 }">
			성별 : 남자 <hr/>
		</c:when>
		<c:otherwise>
			성별 : 여자<hr/>
		</c:otherwise>
		</c:choose>
		아이디 : ${param.id } <hr/>
		주소 : ${param.address } <hr/>
		전화번호 : ${param.phone } <hr/>
		이메일주소 : ${param.email } <hr/>
		취미: <br/>
		
		<c:choose>
			<c:when test="${empty param.hobby }">
				[선택한 취미가 없습니다.]
			</c:when>
			<c:otherwise>
				<table border="1">
					<c:forEach var="hobby" items="${paramValues.hobby}">
						<tr>
							<td>${hobby}</td>
						</tr>
					</c:forEach>
				</table>
			</c:otherwise>
		</c:choose>
	</body>
</html>