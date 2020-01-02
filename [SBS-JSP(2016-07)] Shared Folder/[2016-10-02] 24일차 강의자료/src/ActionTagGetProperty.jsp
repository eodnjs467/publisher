<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	<jsp:useBean id="myMember" class="beans.Member"/>
	<jsp:setProperty name="myMember" property="id" value="OKJSP"/>
	<jsp:setProperty name="myMember" property="password" value="OKPassword"/>
	ID : <jsp:getProperty name="myMember" property="id"/><br/>
	Password : <jsp:getProperty name="myMember" property="password"/>
</body>
</html>