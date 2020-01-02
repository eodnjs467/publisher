<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>로그아웃 페이지</title>
</head>
<body>

	<%
	
	Cookie[] cookies = request.getCookies();
	String loginStatus = null;
	String rememberIdPw = null;
	String id = null;
	String pw = null;
	
	if(cookies!=null && cookies.length>0){
		
		for(int i=0; i<cookies.length; i++){
			
			if(cookies[i].getName().equals("loginStatus")){
				
				cookies[i].setValue("logout");
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
				
			}
			
			if(cookies[i].getName().equals("rememberIdPw")){
				
				rememberIdPw = cookies[i].getValue();
				
			}
			
			if(cookies[i].getName().equals("id")){
				id=cookies[i].getValue();
			}
			
			if(cookies[i].getName().equals("pw")){
				pw=cookies[i].getValue();
			}
			
			
		}//for끝
		
	
	}//if끝
	
	
	%>


	<h3>[<%=id %>]님 정상적으로 로그아웃되었습니다.<br>이용해주셔서 감사합니다.</h3>
	
	<%
	if(rememberIdPw != null && rememberIdPw.equals("temp")){
			
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
					
				}
			
			}
			
			
			
		}
	%>


<form action="CookieHW_Login.jsp" method ="post" >
	<input type="submit" value="로그인페이지 이동">
</form>


</body>
</html>