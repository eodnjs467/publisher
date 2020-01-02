<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>로그인 페이지</title>
</head>

<%

	Cookie[] cookies = request.getCookies();
	String loginStatus = null;
	String rememberWhat = "Temp";
	String id = null;
	String pw = null;
	
	if(cookies!=null && cookies.length>0){
		
		for(int i=0; i<cookies.length; i++){
			
			if(cookies[i].getName().equals("rememberWhat")){
				
				if(cookies[i].getValue().equals("keepID") || cookies[i].getValue().equals("keepIDPW")){
					rememberWhat = cookies[i].getValue();	
				}
				
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


<body>


<form action="CookieHW2_addCookie.jsp" method="post">
	아이디와 비밀번호를 입력하십시오<hr/>
	<table border="1">
		<tr>
			<td align="center">아이디</td>
			<td><input type="text" name="id" value="<%=(id==null ? "" : id) %>"/></td>
		</tr>
		<tr>
			<td align="center">비밀번호</td>
			<td><input type="password" name="pw" value="<%=(pw==null ? "" : pw)%>"/></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				  <label><input type="radio" name="rememberWhat" value="Temp" 
				  			<%=(rememberWhat.equals("Temp")? "checked=\"checked\"" : "")%>/>저장안함</label><br>
				  <label><input type="radio" name="rememberWhat" value="keepID" 
				  			<%=(rememberWhat.equals("keepID")? "checked=\"checked\"" : "")%>/>아이디저장</label><br>
				  <label><input type="radio" name="rememberWhat" value="keepIDPW"
				            <%=(rememberWhat.equals("keepIDPW")? "checked=\"checked\"" : "")%>/>아이디 비밀번호 저장</label>
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