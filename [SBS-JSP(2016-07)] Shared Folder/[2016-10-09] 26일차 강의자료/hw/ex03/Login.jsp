<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<%
	Cookie[] cookies = request.getCookies();
	String loginStatus = null;
	String rememberId = null;
	String id = null;
	String pw = null;
	
	if(cookies != null && cookies.length > 0){
		for(int i=0 ; i < cookies.length ; i++){
			if(cookies[i].getName().equals("rememberId") 
			&& cookies[i].getValue().equals("keep") ){
				rememberId = cookies[i].getValue();
			}
			
			if(cookies[i].getName().equals("id")){
				id = cookies[i].getValue();
			}
			if(cookies[i].getName().equals("pw")){
				pw = cookies[i].getValue();
			}
		}
	}
%>
<body>

<form action="LoginSet.jsp" method="post">
	아이디와 비밀번호를 입력하십시오<hr/>
	<table border="1">
		<tr>
			<td align="center">아이디</td>
			<td><input type="text" name="id" 
			           value="<%=(id==null ? "" : id) %>"/></td>
		</tr>
		<tr>
			<td align="center">비밀번호</td>
			<td><input type="password" name="pw"
					   value="<%=(pw==null ? "" : pw)%>"/></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="checkbox" name="rememberId" value="keep"
				    <%=(rememberId==null? "" : "checked=\"checked\"")%>/>
				    아이디/비밀번호 기억
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="submit" value="로그인"/>
			</td>
		</tr>
	</table>
</form>

</body>
</html>