<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>

포워딩 수행 전 메시지입니다!<br/>
<%out.println("하나<br/>"); %>
<%out.println("둘<br/>"); %>
<%out.println("셋<br/>"); %>

포워딩을 사용합니다!<br/>
<% pageContext.forward("pageContextForwarded.jsp"); %>

포워딩 수행 후 메시지입니다!<br/>
<%out.println("하나<br/>"); %>
<%out.println("둘<br/>"); %>
<%out.println("셋<br/>"); %>

</body>
</html>