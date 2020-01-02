<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="model1.StudentBean" %>


<html>
<body>
	<h3>학번 [${student.studentId}]</h3>
	<table border="1">
		<tr align="center">
			<td>학생 아이디</td>
			<td>학생 이름</td>
			<td>학생 이메일</td>
			<td>학생 전화번호</td>
			<td>학과 아이디</td>
		</tr>
		<tr align="center">
			<td>${student.studentId}</td>
			<td>${student.studentName}</td>
			<td>${student.studentEmail}</td>
			<td>${student.studentTel}</td>
			<td>${student.departmentId}</td>
		</tr>
	</table>
</body>
</html>