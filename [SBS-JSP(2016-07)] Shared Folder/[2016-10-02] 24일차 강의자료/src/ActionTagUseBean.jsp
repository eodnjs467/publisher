<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	<jsp:useBean id="myMember" class="beans.Member"/>
	<%
		myMember.setId("OKJSP");
		myMember.setPassword("OKPassword");
	%>
	ID : <%=myMember.getId()%><br/>
	Password : <%=myMember.getPassword()%>
</body>
</html>