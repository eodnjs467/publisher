<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>

	<table border="1">
	
<%	
	for(int i=0; i<=9; i++){
	
		out.println("<tr>");	
	
			for(int j=2; j<=9; j++){
				
				if(i==0){
					
					out.println("<td>"+j+"단</td>");
					
				}else{
					out.println("<td>"+j+" X "+i+" = "+i*j+"</td>");
				}
			}

		out.println("</tr>");	
	
	
	}	
%>	
	
	</table>


</body>
</html>