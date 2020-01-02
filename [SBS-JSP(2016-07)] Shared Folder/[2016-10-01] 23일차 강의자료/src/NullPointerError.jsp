<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>

<%
	try{
		String nullString = null;
%>
		<%=nullString.length() %>
<%		
	}catch(NullPointerException e){
		RequestDispatcher dispatcher 
		 = request.getRequestDispatcher("NullPointerErrorHandling.jsp");
		
		dispatcher.forward(request, response);
	}
%>

</body>
</html>