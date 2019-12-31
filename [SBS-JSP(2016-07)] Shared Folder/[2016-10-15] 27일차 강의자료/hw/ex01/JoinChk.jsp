<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>

<% request.setCharacterEncoding("utf-8"); %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>회원가입</title>
</head>
<body>

<%
String id = request.getParameter("id");
String password = request.getParameter("password");
String password2 = request.getParameter("password2");
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String address = request.getParameter("address");
String phone = request.getParameter("telnum");
String email = request.getParameter("email");


if(id!=null && password!=null && name!=null && gender!=null && address!=null
	&& phone!=null && email!=null){

	if(password.equals(password2)){
		
		Connection conn = null;
		Statement stmt = null;
		int rowNum;
		
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook", "jspbook", "jspbook");
			
			stmt =  conn.createStatement();
			
			rowNum = stmt.executeUpdate("INSERT INTO MEMBER (ID, PASSWORD, NAME, GENDER, ADDRESS, PHONE, EMAIL )"
										+"VALUE('"+id+"', '"+password+"', '" +name+"', '"+gender+"', '"+address+"', '"+phone+"', '"+email+"')"
									);
			
		%>	
			<h1>작성하신 내용은 아래와 같습니다.</h1><hr>
			이름 : <%=request.getParameter("name")%><hr>
			성별 : <%=request.getParameter("gender") %><hr>
			아이디 : <%=request.getParameter("id")%><hr>
			주소 : <%=request.getParameter("address")%><hr>
			전화번호 : <%=request.getParameter("telnum") %><hr>
			이메일주소 : <%=request.getParameter("email") %><hr>
		<%
			
			
		}catch(SQLException e){
			
			out.print("회원가입에 실패 했습니다.");
			
			
		}finally{
			
			if(stmt!=null)try{stmt.close();}catch(SQLException e){}
			if(conn!=null)try{conn.close();}catch(SQLException e){}	
			
		}

	}else{ //패스워드 확인 일치여부
		
		
		out.print("비밀번호가 일치하지 않습니다.");
		pageContext.include("Join.jsp");
		//<script>history.back();</script>
		
	}


}else{
	
	out.print("잘못된 접근입니다.<hr>");
	
}

%>





<form action="Login.jsp" method="post">
	<input type="submit" value="로그인 화면으로">
</form>

</body>
</html>