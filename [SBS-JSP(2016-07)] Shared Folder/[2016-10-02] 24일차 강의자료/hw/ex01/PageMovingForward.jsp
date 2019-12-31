<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String param1 = request.getParameter("param1");
		param1 = new String(param1.getBytes("8859_1"), "UTF-8");
	%>
	<h2>PageMovingForward.jsp 입니다!</h2><br/>
	이동방식을 지정할 move파라미터의 값이 "forward" 로 지정되었을 때<br/>
	현재 페이지가 나타납니다.<hr>
	
	<h2>전달받은 파라미터는 다음과 같습니다.</h2><br/>
	
	param1 : <%=param1 %><br/>
	param2 : <%=request.getParameter("param2") %>
</body>
</html>