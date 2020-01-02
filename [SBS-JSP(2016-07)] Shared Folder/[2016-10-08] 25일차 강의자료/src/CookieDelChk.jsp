<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>


<h3>생성된 "DelCookie" 쿠키를 확인합니다.</h3>

<%
	Cookie[] cookies = request.getCookies();
	int count = 0;
	if(cookies != null && cookies.length > 0){
		for(int i=0; i < cookies.length ; i++){
			
			if(cookies[i].getName().equals("DelCookie")){
%>
				<h3>
					쿠키의 이름 : <%=cookies[i].getName() %><br/>
					쿠키의 값 : <%=cookies[i].getValue() %><br/>
				</h3><hr/>
<%
				count++;
			}
		}	
	}
	if(count == 0){
%>
		<h3>[DelCookie]를 찾을 수 없습니다.</h3>
<%		
	}
%>

</body>
</html>