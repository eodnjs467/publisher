<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>

인클루드 수행 전 메시지입니다!<br/>
<%out.println("하나<br/>"); %>
<%out.println("둘<br/>"); %>
<%out.println("셋<br/>"); %>

인클루드를 사용합니다!<br/>
<% pageContext.include("pageContextIncluded.jsp"); %>

인클루드 수행 후 메시지입니다!<br/>
<%out.println("하나<br/>"); %>
<%out.println("둘<br/>"); %>
<%out.println("셋<br/>"); %>

</body>
</html>