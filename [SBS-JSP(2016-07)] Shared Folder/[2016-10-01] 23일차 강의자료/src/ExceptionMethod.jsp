<%@ page language="java" contentType="text/html; charset=UTF-8"
         isErrorPage="true"%>
<html>
<body>
	getMessage() 메서드 실행<p>
	<%=exception.getMessage() %><hr/>
	
	toString() 메서드 실행<p>
	<%=exception.toString() %><hr/>
	
	printStacktrace() 메서드 실행<p>
	<%exception.printStackTrace();%>
	
</body>
</html>