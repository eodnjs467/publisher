<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
<h3>변경된 "MyCookie" 쿠키를 확인합니다.</h3>

<%
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null && cookies.length > 0){
		for(int i=0; i < cookies.length ; i++){
			
			if(cookies[i].getName().equals("MyCookie")){
%>
				<h3>
					쿠키의 이름 : <%=cookies[i].getName() %><br/>
					쿠키의 값 : <%=cookies[i].getValue() %><br/>
				</h3><hr/>
<%				
			}
		}	
	}
%>

</body>
</html>