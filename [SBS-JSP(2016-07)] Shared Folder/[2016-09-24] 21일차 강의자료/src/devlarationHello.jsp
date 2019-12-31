<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%!
	String hello = "Hello!";
	String world = "World!";
	
	public int add(int a, int b){
		return a+b;		
	}
%>

<html>
<body>
	<% int num = add(2,3); %>
	<%=num%>번 반복합니다<br/>
	<%
		for(int i=1 ; i<=num ; i++){
	%>
			<%=hello%> <%=world%> <br/>
	<%
		}
	%>	
</body>
</html>