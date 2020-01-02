<%@ page language="java" contentType="text/html; charset=utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="beans.*" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

<%

Join myJoin = new Join();


myJoin.setName(request.getParameter("name"));
myJoin.setGender(request.getParameter("gender"));
myJoin.setId(request.getParameter("id"));
myJoin.setPassword(request.getParameter("password"));
myJoin.setPassword2(request.getParameter("password2"));
myJoin.setAddress(request.getParameter("address"));
myJoin.setTelnum(request.getParameter("telnum"));
myJoin.setEmail(request.getParameter("email"));
myJoin.setHobby(request.getParameterValues("hobby"));


String pw1 = myJoin.getPassword();
String pw2 = myJoin.getPassword2();
String[] HOBBY = myJoin.getHobby();

%>

<%if(!pw1.equals(pw2)) { %>

		<h1>비밀번호확인이 일치하지 않습니다.</h1>

<%}else{ %>

		
		<h1>작성하신 내용은 아래와 같습니다.</h1><hr>
		이름 : <%=myJoin.getName()%><hr>
		성별 : <%=myJoin.getGender() %><hr>
		아이디 : <%=myJoin.getId() %><hr>
		주소 : <%=myJoin.getAddress() %><hr>
		전화번호 : <%=myJoin.getTelnum() %><hr>
		이메일주소 : <%=myJoin.getEmail() %><hr>
		취미 : 
		<%if(HOBBY==null){ %>
			[선택한 취미가 없습니다.]
		<%}else{ %>
			<table border="1">
				<%for(int i=0; i<HOBBY.length; i++){%>
					<tr><td><%=HOBBY[i] %></td></tr>
				<%} %>
			</table>
		<%} %>


<%} %>

</body>
</html>