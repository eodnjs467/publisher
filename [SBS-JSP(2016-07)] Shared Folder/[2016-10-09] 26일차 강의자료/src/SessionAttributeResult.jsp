<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>

현재 접속하신 아이디는 [<%=session.getAttribute("ID")%>] 입니다. <br/>
[<%=session.getAttribute("Grade") %>] 권한으로 접속중입니다.

</body>
</html>