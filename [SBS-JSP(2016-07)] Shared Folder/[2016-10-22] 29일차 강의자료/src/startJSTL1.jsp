<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	<%out.print("Hello, Scriptlet"); %><br/>
	<table border="1">
	<%for(int i=1 ; i<=5 ; i++){%>
		<tr>
			<td><%=i%></td>
		</tr>
	<%}%>
	</table>
</body>
</html>