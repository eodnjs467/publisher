<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h2>페이지 흐름제어 방식을 지정합니다.</h2><br/>
	<%
		String move = request.getParameter("move");
		request.setCharacterEncoding("utf-8");
	
	
		if(move == null){
	%>	
		이동 방식을 GET 방식으로 지정합니다. 파라미터 이름은 "move" 입니다.
		파라미터의 값은 각각 아래와 같이 지정합니다.<hr>
		포워드 : "forward"<br/>
		인클루드 : "include"<hr>
	<%
		} else if(move.equals("forward")){
	%>
		<jsp:forward page="PageMovingForward.jsp">
			<jsp:param name="param1" value="forward 태그의 파라미터1"/>
			<jsp:param name="param2" value="forward 태그의 파라미터2"/>
		</jsp:forward>
	<%
		} else if(move.equals("include")){
	%>
		<jsp:include page="PageMovingInclude.jsp">
			<jsp:param name="param1" value="include 태그의 파라미터1"/>
			<jsp:param name="param2" value="include 태그의 파라미터2"/>
		</jsp:include>
	<%
		}
	%>
	<h2>PageMoving.jsp 페이지의 마지막 입니다.</h2>
</body>
</html>