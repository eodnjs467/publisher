<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>쿠키를 이용한 세션관리</title>
</head>
<%
	Cookie [] cookies = request.getCookies();
	String loginStatus = null;
	String rememberId = null;
	String rememberPw = null;
	String id = null;
	String pw = null;
	
	if (cookies != null && cookies.length > 0){
		for (int i=0; i < cookies.length ; i ++){
			if (cookies[i].getName().equals("rememberId") && cookies[i].getValue().equals("keep")){
				rememberId = cookies[i].getValue();
			}
			if (cookies[i].getName().equals("id")){
				id = cookies[i].getValue();
			}
			if (cookies[i].getName().equals("rememberPw")&& cookies[i].getValue().equals("keep")){
				rememberPw = cookies[i].getValue();
			}
			if (cookies[i].getName().equals("pw")){
				pw = cookies[i].getValue();
			}
			
		}
	}
			
%>


	<%
		if(session != null && rememberPw == null)
			session.invalidate();
	%>

<body>
	<form action = "Logined.jsp" method = "post">
		아이디와 비밀번호를 입력하십시오<hr/>

		<table border = "1">
			<tr>
				<td align="center">아이디</td>
				<td><input type = "text" name = "id" value = "<%=(rememberPw == null ? "" : id) %>"/></td>
			</tr>
			<tr>
				<td align = "center">비밀번호</td>
				<td><input type = "password" name = "pw" value = "<%=(rememberPw == null ? "" : pw) %>" /></td>
			<tr>
				<td colspan="2" align="right">
					<input type = "checkbox"  name = "rememberPw" value = "keep" <%=(rememberPw==null? "": "checked=\"checked\"") %>/>아이디/비밀번호 기억
				</td>
			</tr>
			<tr>
				<td colspan = "2" align = "right">
					<input type = "submit" value = "로그인"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>