<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

request.getCharacterEncoding 리턴값 : <b><%=request.getCharacterEncoding() %></b><br> 
<%--
아래 param액션태그를 통해 한글 파라미터값이 request에 담겨 인코딩될 때 이 문자셋으로 인코딩됨
이 문자셋은 이 페이지에서 request.setCharacterEncoding("문자셋") 메서드로 셋팅된 문자셋으로 인코딩됨
ex)서블릿 변환 시~ .URLEncode("파라미터명", request.getCharacterEncoding())
--%>

<h1>페이지 흐름제어 방식을 지정합니다.</h1>
<%String move = request.getParameter("move"); %>
<%if(move==null){ %>

	<p>이동방식을 GET 방식으로 지정합니다. 파라미터 이름은 "move" 입니다.<br>
	파라미터의 값은 각각 아래와 같이 지정합니다.</p><hr>
	<p><a href="http://localhost:8080/Chap09/PageMoving.jsp?move=forward">포워트 : "forward"</a></p>
	<p><a href="http://localhost:8080/Chap09/PageMoving.jsp?move=include">인클루드 : "include"</a></p>
	<hr>
	
<%}else if(move.equals("forward")){ %>

	<jsp:forward page="PageMovingForward.jsp">
		<jsp:param name="param1" value="forward태그의 파라미터1"/>
		<jsp:param name="param2" value="forward태그의 파라미터2"/>
 	</jsp:forward>

<%}else if(move.equals("include")){ %>

	<jsp:include page="PageMovingInclude.jsp">
		<jsp:param name="param1" value="include태그의 파라미터1"/>
		<jsp:param name="param2" value="include태그의 파라미터2"/>
	</jsp:include>

<%}else{ %>

	<h4>입력된 파라미터가 바르지 않습니다.</h4>

<%} %>

<h1>PageMoving.jsp 페이지의 마지막 입니다. </h1>

</body>
</html>