<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<body>

<%
	// JDBC 드라이버 로딩
	Class.forName("com.mysql.jdbc.Driver");

	// JDBC URL 및 계정과 비밀번호를 지정하여
	// Connection 인스턴스를 통해 데이터베이스에 접속
	Connection conn = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/jspbook",
			"jspbook",
			"jspbook"
			);
	
	// SQL문을 실행하기 위해 Statement 인스턴스 획득
	Statement stmt = conn.createStatement();
	
	// Statement 인스턴스를 통해서 실행한 SQL문의 결과를 ResultSet에 반환
	ResultSet rs = stmt.executeQuery("SELECT * FROM STUDENT");
	
	// 반환된 결과를 ResultSet의 메서드와 while 반복문을 통해 출력
	while(rs.next()){
		out.println(rs.getString(1) + "|");
		out.println(rs.getString(2) + "|");
		out.println(rs.getString(3) + "|");
		out.println(rs.getString(4) + "|");
		out.println(rs.getString(5) + "<br/>");
	}
	
	// 반환된 데이터의 사용이 종료되면 
	// close() 메서드를 사용해서 각각의 인스턴스를 종료
	rs.close();
	stmt.close();
	conn.close();

%>

</body>
</html>