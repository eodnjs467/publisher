<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>


<h3>생성된 "MyCookie" 쿠키를 확인합니다.</h3>

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
				<h3>"MyCookie" 쿠키의 값을 변경합니다.</h3>
<%
				cookies[i].setValue("MyCookie's value was changed!");
				response.addCookie(cookies[i]);
%>
				<h4>변경이 완료되었습니다.</h4>
<%				
			}
		}	
	}
%>
<form action="CookieValueChk.jsp" method="post">
	<input type="submit" value="쿠키 변경 확인"/>
</form>

</body>
</html>