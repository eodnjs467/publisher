<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>로그인 완료</title>
</head>
<body>

<%



	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

if(id!=null && pw!=null){
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	//JDBC 드라이버 로딩
	Class.forName("com.mysql.jdbc.Driver");

	//JDBC URL 및 계정과 비밀전호를 지정하여
	//Connection 인스턴스를 통해 데이터베이스에 접속
	conn = DriverManager.getConnection(
			
			"jdbc:mysql://localhost:3306/jspbook",
			"jspbook",
			"jspbook"
			);
	
	
	stmt = conn.createStatement();
	
	
	rs = stmt.executeQuery("select id from member where id='"+id+"' and password='"+pw+"'");
	


	if(rs.next()){
		
		session.setAttribute("ID", rs.getString(1));
		
		
	}
	
	//반환된 데이터의 사용이 종료되면 close() 메서드를 사용하여 각각의 인스턴스를 종료
	
	rs.close();
	stmt.close();
	conn.close();
	
}


if(session.getAttribute("ID")!=null){%>
	
	<%=session.getId()%>
	<table border="1">
	<tr>
		<td><%=session.getAttribute("ID") %>님 로그인을 환영합니다.</td>
	</tr>
	<tr>
		<td>
			<form action="Logout.jsp" method="post">
				<input type="submit" value="로그아웃">
			</form>
		</td>
	</tr>
</table>
	
	
<%}else{
	
	out.print("로그인에 실패하였습니다.<br>아이디와 비밀번호를 확인하세요.<hr>");
	pageContext.include("Login.jsp");
}
%>


</body>
</html>