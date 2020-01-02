<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Hello, World!</title>
<!-- 이 부분은 HTML 주석입니다. -->
</head>
<body>
	<%-- 이부분은 JSP 주석입니다. --%>
	<%
		// 이부분은 자바의 싱글라인 주석입니다. 한줄만 주석처리 가능
		out.println("Hello, World!");
		/*
		  이 부분은 자바의 멀티라인 주석입니다.
		  여러 줄에 걸쳐 주석 작성 가능!
		*/
	%>
</body>
</html>