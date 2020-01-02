<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<h2>PageMovingInclude.jsp 입니다!</h2><br>
	
	<p>이동방식을 지정할 move 파라미터의  값이 "include"로 지정되었을 때
	<br>현재 페이지가 나타납니다.</p><hr>
	<h3>전달받은 파라미터는 다음과 같습니다.</h3>
	
	param1 :<%=request.getParameter("param1") %><br>
	param2 :<%=request.getParameter("param2") %>
</body>
</html>