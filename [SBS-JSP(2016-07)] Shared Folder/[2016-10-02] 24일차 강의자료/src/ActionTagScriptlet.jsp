<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	<jsp:scriptlet>
		String hello = "Hello!";
		String world = "World!";
		out.print(hello + " " + world);
	</jsp:scriptlet>
</body>
</html>