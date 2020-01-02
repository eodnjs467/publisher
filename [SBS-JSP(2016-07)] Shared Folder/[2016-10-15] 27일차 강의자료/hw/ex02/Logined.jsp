<%@ page language="java" contentType="text/html; charset=utf-8" %>

<html>
	<head>
		<title>쿠키를 이용한 세션관리</title>
	</head>
	<body>
		<%
			String rememberId = request.getParameter("rememberId");
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			Cookie cookieRememberId;
			Cookie cookieId;
			Cookie cookiePw;
			Cookie cookieLoginStatus;
		
			if (rememberId != null && rememberId.equals("keep")){
				cookieRememberId = new Cookie("rememberId", "keep");
			} else {
				cookieRememberId = new Cookie("rememberId", "temp");
			}
			cookieId = new Cookie("id", id);
			cookiePw = new Cookie("pw", pw);
			cookieLoginStatus = new Cookie("loginStatus", "login");
			
			cookieId.setMaxAge(300);
			cookiePw.setMaxAge(300);
			cookieRememberId.setMaxAge(300);
			
			response.addCookie(cookieRememberId);				
			response.addCookie(cookieId);
			response.addCookie(cookiePw);
			response.addCookie(cookieLoginStatus);

			session.setAttribute("ID", id);	

		%>
		
		
		<form action="Logout.jsp" method="post">
			<table border="1">
				<tr>
					<td><%=session.getAttribute("ID") %>님 로그인을 환영합니다.</td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="로그아웃" />
					</td>
				</tr>
			</table>
		</form>
		
	</body>
</html>
