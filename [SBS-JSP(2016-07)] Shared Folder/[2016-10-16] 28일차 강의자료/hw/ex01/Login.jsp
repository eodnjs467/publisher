<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>로그인 페이지</title>
</head>
<%if(session.getAttribute("ID")!=null){
	
	response.sendRedirect("http://localhost:8081/Chap11/Logined.jsp");
}%>

<body>

<form action="Logined.jsp" method="post">
	아이디와 비밀번호를 입력하십시오<hr/>
	<table border="1">
		<tr>
			<td align="center">아이디</td>
			<td><input type="text" name="id" value='${empty cookie.id.value? "" : cookie.id.value}' /></td>
		</tr>
		<tr>
			<td align="center">비밀번호</td>
			<td><input type="password" name="pw" value='${empty cookie.pw.value? "" : cookie.pw.value}' /></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="checkbox" name="rememberIdPw" value="keep" 
				    ${cookie.rememberIdPw.value=="keep"? "checked=\"checked\"" : "" }
				/>
				    아이디 /비밀번호 저장
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