<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
<%
	session.setAttribute("ID", "TestID");
	session.setAttribute("Grade", "관리자");
%>

세션의 유효시간 설정페이지입니다.<hr/>
현재 접속하신 ID는 [<%=session.getAttribute("ID")%>] 입니다. <br/>
[<%=session.getAttribute("Grade") %>]권한으로 접속 중입니다.<hr/>
현재 세션아이디는 <h2>[<%=session.getId() %>]</h2> 입니다. <hr/>
현재 세션의 유효시간을 설정합니다. <hr/>

<%
	session.setMaxInactiveInterval(30);
%>

현재 세션의 최대 유효시간은 [<%=session.getMaxInactiveInterval()%>]초 입니다.

</body>
</html>