<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="model1.StudentBean" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:useBean id="studentBean" class="model1.StudentBean"/>
<c:set var="usMethod" value="${studentBean}" scope="request"/>
${requestScope.usMethod.selectStudent(param.studentId)}
	

<html>
<body>
	<h3>학번 [${param.studentId}]</h3>
	<table border="1">
		<tr align="center">
			<td>학생 아이디</td>
			<td>학생 이름</td>
			<td>학생 이메일</td>
			<td>학생 전화번호</td>
			<td>학과 아이디</td>
		</tr>
		<tr align="center">
			<td><jsp:getProperty name="studentBean" property="studentId"/></td>
			<td><jsp:getProperty name="studentBean" property="studentName"/></td>
			<td><jsp:getProperty name="studentBean" property="studentEmail"/></td>
			<td><jsp:getProperty name="studentBean" property="studentTel"/></td>
			<td><jsp:getProperty name="studentBean" property="departmentId"/></td>
		</tr>
	</table>
</body>
</html>