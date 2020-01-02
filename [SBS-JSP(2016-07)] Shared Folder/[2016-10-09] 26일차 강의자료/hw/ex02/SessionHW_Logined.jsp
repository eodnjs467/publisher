<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>로그인 확인</title>
</head>
<body>

<%if(session.getAttribute("ID")==null){
	
		String id = request.getParameter("id");
	
		if(id != null && !id.trim().equals("")){
			
			session.setAttribute("ID", id);
			
			
						String rememberIdPw = request.getParameter("rememberIdPw");
						String pw = request.getParameter("pw");
						
						Cookie cookieRememberIdPw=null;
						Cookie cookieId;
						Cookie cookiePw;
						
						if(rememberIdPw!=null && rememberIdPw.equals("keep")){
							cookieRememberIdPw = new Cookie("rememberIdPw", "keep");
							
							cookieId = new Cookie("id", id);
							cookiePw = new Cookie("pw", pw);
							
							cookieId.setMaxAge(30);
							cookiePw.setMaxAge(30);
							
							response.addCookie(cookieId);
							response.addCookie(cookiePw);
							
						}else{
							cookieRememberIdPw = new Cookie("rememberIdPw", "temp");
							
							
							Cookie[] cookies = request.getCookies();
							
							if(cookies != null && cookies.length >0 ){
								
								for(int i=0; i< cookies.length; i++){
									
									if(cookies[i].getName().equals("id")){
										cookies[i].setMaxAge(0);
										response.addCookie(cookies[i]);	
									}
								
									if(cookies[i].getName().equals("pw")){
										cookies[i].setMaxAge(0);
										response.addCookie(cookies[i]);
									}
									
								}//for끝
							
							}//if(cookies != null && cookies.length >0 ) 끝
							
						}//else끝
			
						
						cookieRememberIdPw.setMaxAge(30);
						response.addCookie(cookieRememberIdPw);
			
			
		}else{ %>
	
		<h3>로그인하지 않으셨거나, 잘못된 접근입니다.<br>
			로그인하여 주시기 바랍니다.</h3>
		
		
		<form action="SessionHW_Login.jsp" method="post">
			<input type="submit" value="로그인페이지">
		</form>
		
	<% } 
	
		
}%>
	



<%if(session.getAttribute("ID")!=null){ %>
		
	<table border="1">
	
		<tr><td><%=session.getAttribute("ID") %>님 로그인을 환영합니다.</td></tr>
		<tr><td>
			<form action="SessionHW_Logout.jsp" method="post">
				<input type="hidden" name="logoutKey" value="ok">
				<input type="submit" value="로그아웃">
			</form>
		</td></tr>
	
	</table>
		
		
<%}%>





</body>
</html>