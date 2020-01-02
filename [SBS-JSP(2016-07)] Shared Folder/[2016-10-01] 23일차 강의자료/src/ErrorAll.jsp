<%@ page language="java" contentType="text/html; charset=UTF-8"
         errorPage="ErrControlPageDirective.jsp"%>
<html>
<body>
<%
	try{
		int[] arr = new int[3];
		out.println(arr[3]);	
	}catch(ArrayIndexOutOfBoundsException e){
		RequestDispatcher dispatcher 
		 = request.getRequestDispatcher("ErrControlTry.jsp");
		
		dispatcher.forward(request, response);
	}
	//java.lang.ArrayIndexOutOfBoundsException
%>

</body>
</html>