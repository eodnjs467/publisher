<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="model1.StudentBean" %>

<%
	String studentId = request.getParameter("studnetId");
	StudentBean studentBean = new StudentBean();
	studentBean.selectStudent(studentId);
%>

<html>
<body>
	<h3>학번 [<%=studentId%>]</h3>
	<table border="1">
		<tr align="center">
			<td>학생 아이디</td>
			<td>학생 이름</td>
			<td>학생 이메일</td>
			<td>학생 전화번호</td>
			<td>학과 아이디</td>
		</tr>
		<tr align="center">
			<td><%=studentBean.getStudentId()%></td>
			<td><%=studentBean.getStudentName()%></td>
			<td><%=studentBean.getStudentEmail()%></td>
			<td><%=studentBean.getStudentTel()%></td>
			<td><%=studentBean.getDepartmentId()%></td>
		</tr>
	</table>
</body>
</html>