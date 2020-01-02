<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	<%out.println("여기는 ActionTagParamTo1.jsp 페이지입니다!<hr/>"); %>
	<%=request.getParameter("hello") %> 
	<%=request.getParameter("pageName") %>
</body>
</html>