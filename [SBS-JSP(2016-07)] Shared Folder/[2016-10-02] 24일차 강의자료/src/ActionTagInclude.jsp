<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	인클루드 수행 전 메시지입니다!<br/>
	<%out.print("하나<br/>"); %>
	<%out.print("둘<br/>"); %>
	<%out.print("셋<br/>"); %>
	인클루드를 사용합니다!<br/>

	<jsp:include page="ActionTagIncluded.jsp"/>

	인클루드 수행 후 메시지입니다!<br/>
	<%out.print("하나<br/>"); %>
	<%out.print("둘<br/>"); %>
	<%out.print("셋<br/>"); %>
</body>
</html>