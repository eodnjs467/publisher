<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	<%out.println("여기는 ActionTagParamTo2.jsp 페이지 입니다!<br/>"); %>
	ActionTagParamTo2.jsp 의 subject 파라미터의 값 :
	<%=request.getParameter("subject") %><br/>
	<%=request.getParameter("rsdno") %><br/>

</body>
</html>