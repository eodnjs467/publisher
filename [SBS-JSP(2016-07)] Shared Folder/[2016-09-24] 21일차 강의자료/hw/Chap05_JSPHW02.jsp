<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>

	<h1>1~10까지 홀수 짝수 여부 출력</h1>

 	<table border="1">
	<%
	
	for(int i=0; i<=10; i++){
		
		
	%>		
		
		<tr>
			<td><%=i%></td>
			
	<% 		
			if(i%2==0){
	%>			
			
			<td>짝수입니다</td>
	<% 
			}else{
	%>			
			<td>홀수입니다</td>		
	<%
			}
	%>
		</tr>	
			
	<%
	}
	
	%>
	
	</table>
	
	
	

</body>
</html>