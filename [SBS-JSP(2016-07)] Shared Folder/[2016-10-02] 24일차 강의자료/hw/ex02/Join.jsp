<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>


<jsp:useBean id="myJoin" class="beans.Join"/>
<jsp:setProperty name="myJoin" property="*"/>
<%-- 
<jsp:setProperty name="myJoin" property="name" param="name" />
<jsp:setProperty name="myJoin" property="gender" param="gender" />
<jsp:setProperty name="myJoin" property="id" param="id" />
<jsp:setProperty name="myJoin" property="password" param="password" />
<jsp:setProperty name="myJoin" property="address" param="address" />
<jsp:setProperty name="myJoin" property="telnum" param="telnum" />
<jsp:setProperty name="myJoin" property="email" param="email" />
<jsp:setProperty name="myJoin" property="hobby" param="hobby" />
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>



<%String pw1 = myJoin.getPassword(); 
  String pw2 = myJoin.getPassword2();%>

<%if(!pw1.equals(pw2)) { %>

		<h1>비밀번호확인이 일치하지 않습니다.</h1>

<%}else{ %>


		<h1>작성하신 내용은 아래와 같습니다.</h1>
		
		이름 : <jsp:getProperty name="myJoin" property="name"/><hr>
		성별 : <%=myJoin.getGender() %><hr>
		아이디 : <jsp:getProperty name="myJoin" property="id"/><hr>
		주소 : <jsp:getProperty name="myJoin" property="address"/><hr>
		전화번호 : <jsp:getProperty name="myJoin" property="telnum"/><hr>
		이메일주소 : <jsp:getProperty name="myJoin" property="email"/><hr>
		
		
		취미 : 
		<%if(myJoin.getHobby()==null){ %>
			[선택한 취미가 없습니다.]
		<%}else{ %>
			<table border="1">
				<%for(int i=0; i<myJoin.getHobby().length; i++){%>
					<tr><td><%=myJoin.getHobby()[i] %></td></tr>
				<%} %>
			</table>
		<%} %>




<%} %>




</body>
</html>