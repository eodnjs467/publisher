<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>쿠키를 이용한 세션 관리</title>
</head>
<body>
	<%
		String rememberId = request.getParameter("rememberId");
		String rememberPw = request.getParameter("rememberPw");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		Cookie cookieRememberId;
		Cookie cookieRememberPw;
		Cookie cookieId;
		Cookie cookiePw;
		Cookie cookieLoginStatus;
		
//		if (rememberId != null && rememberId.equals("keep")){
//			cookieRememberId = new Cookie("rememberId", "keep");
//		} else {
//			cookieRememberId = new Cookie("rememberId", "temp");
//		}
		
		if (rememberPw != null && rememberPw.equals("keep")){
			cookieRememberPw = new Cookie("rememberPw", "keep");
			cookieRememberId = new Cookie("rememberId", "keep");
		} else {
			cookieRememberPw = new Cookie("rememberPw", "temp");
			cookieRememberId = new Cookie("rememberId", "temp");
		}
		
		cookieId = new Cookie("id", id);
		cookiePw = new Cookie("pw", pw);
		cookieLoginStatus = new Cookie("loginStatus", "login");
		
		response.addCookie(cookieRememberId);
		response.addCookie(cookieId);
		response.addCookie(cookieLoginStatus);
		
		response.addCookie(cookieRememberPw);
		response.addCookie(cookiePw);
		response.addCookie(cookieLoginStatus);
	%>
		<%
		Cookie[] cookies = request.getCookies();
		String loginStatus = null;
		//String rememberId = null;
		//String id = null;
		//String rememberPw = null;
		//String pw = null;
		if (cookies != null && cookies.length>0){
			for (int i = 0 ; i < cookies.length; i++){
				if (cookies[i].getName().equals("rememberId")){
					rememberId = cookies[i].getValue();
				}
				if (cookies[i].getName().equals("rememberPw")){
					rememberPw = cookies[i].getValue();
				}
				if (cookies[i].getName().equals("id")){
					id = cookies[i].getValue();
				}
				if (cookies[i].getName().equals("pw")){
					pw = cookies[i].getValue();
				}
				
			}
		}
		
	%>
	<%
		session.setAttribute("ID", request.getParameter("id"));
	%>
		현재 세션 아이디는[<%=session.getId() %>]입니다.
	<%
		if(rememberId != null && id !=null){
	%>	
	
	<form action = "Logout.jsp" method = "post">
		<table border = "1">
			<tr>
				<td align="center"> [<%=session.getAttribute("ID")%>]님 로그인을 환영합니다.</td>
			<tr>
				<td colspan = "2" align = "right">
					<input type = "submit" value = "로그아웃"/>
				</td>
			</tr>
		</table>
	</form>

	<%	
		}else{
	%>		
		<h3>로그인하지 않으셨거나, 잘못된 접근입니다.<br/>
		로그인하여 주시기 바랍니다</h3>
		<form action="Login.jsp" method = "post">
			<input type = "submit" value = "로그인 페이지">
		</form>
	<%
	}
	%>
</body>
</html>