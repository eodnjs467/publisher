<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>

	<h3>작성하신 내용은 아래와 같습니다</h3><br/>
	이름 : ${param.name}<hr/>
	성별 : ${param.gender}<hr/>
	아이디 : ${param.id}<hr/>
	주소 : ${param.addr}<hr/>
	전화번호 : ${param.phone}<hr/>
	이메일 : ${param.email}<hr/>
	취미 : <br/>
	<c:choose>
	<c:when test="${empty paramValues.hobby == true}">
		[선택한 취미가 없습니다]
	</c:when>
	<c:otherwise>
		<table border="1">
		<c:forEach items="${paramValues.hobby}" begin="0" end="11" varStatus="varStatus">
			<c:if test="${empty paramValues.hobby[varStatus.index] == false}">
				<tr><td width="80" align="center">${paramValues.hobby[varStatus.index]}</td></tr>
			</c:if>
		</c:forEach>
		</table>
	</c:otherwise>
	</c:choose>
</body>
</html>