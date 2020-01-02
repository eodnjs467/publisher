<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>쿠키를 이용한 세션 관리.</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		String loginStatus = null;
		String rememberId = null;
		String rememberPw = null;
		String id = null;
		String pw = null;

		
		if (cookies != null && cookies.length > 0) {
			for(int i = 0 ; i < cookies.length; i ++){
				if(cookies[i].getName().equals("loginStatus")){
					loginStatus = cookies[i].getValue();
					cookies[i].setValue("logout");
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
				}
				if(cookies[i].getName().equals("rememberId")){
					rememberId = cookies[i].getValue();
				}
				if(cookies[i].getName().equals("rememberPw")){
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
	안전하게 로그아웃되었습니다. 이용해주셔서 감사합니다.<hr/>
	다시 로그인하시려면
	
	
	<%
		if(rememberId != null && rememberId.equals("temp")){
			if(cookies != null && cookies.length > 0){
				for ( int i = 0; i<cookies.length; i++){
					if(cookies[i].getName().equals("id")){
						cookies[i].setMaxAge(0);
					}

				}
			}
		}
	%>
	<%
		if(rememberPw != null && rememberPw.equals("temp")){
			if(cookies != null && cookies.length > 0){
				for ( int i = 0; i<cookies.length; i++){
					if(cookies[i].getName().equals("pw")){
						cookies[i].setMaxAge(0);
					}
				}
			}
		}
	%>
	<%
		if(rememberId != null && rememberId.equals("keep")){
			if(cookies != null && cookies.length > 0){
				for ( int i = 0; i<cookies.length; i++){
					if(cookies[i].getName().equals("id")){
						cookies[i].setMaxAge(5);
						response.addCookie(cookies[i]);
						
					}
				}
			}
		}

	%>
	<%
		if(rememberId != null && rememberId.equals("keep")){
			if(cookies != null && cookies.length > 0){
				for ( int i = 0; i<cookies.length; i++){
					if(cookies[i].getName().equals("rememberPw")){
						cookies[i].setMaxAge(5);
						response.addCookie(cookies[i]);
						
					}
				}
			}
		}

	%>
	<%
		if(rememberPw != null && rememberPw.equals("keep")){
			if(cookies != null && cookies.length > 0){
				for ( int i = 0; i<cookies.length; i++){
					if(cookies[i].getName().equals("pw")){
						cookies[i].setMaxAge(5);
						response.addCookie(cookies[i]);
						
					}
				}
			}
		}
		
	%>
	<%
	//	if(session != null)
		//	session.invalidate();
	%>
	
	<%
		pageContext.include("/Login.jsp");
	%>
	<hr/>
	<form action = "Login.jsp" method = "post">
		<input type = "submit" value = "첫 화면으로">
	</form>
</body>
</html>