<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<body>
<%
// 변수선언
Connection conn = null;
Statement stmt = null;
int rowNum;

try{
	// JDBC 드라이버 로딩
	Class.forName("com.mysql.jdbc.Driver");

	// JDBC URL 및 계정과 비밀번호를 지정하여
	// Connection 인스턴스를 통해 데이터베이스에 접속
	conn = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/jspbook",
			"jspbook",
			"jspbook"
			);
	
	// SQL문을 실행하기 위해 Statement 인스턴스 획득
	stmt = conn.createStatement();
	
	// Ststement 인스턴슥를 통해 실행한 SQL문 실행
	rowNum = stmt.executeUpdate(
			"INSERT INTO STUDENT " 
			+"(STUDENT_ID, STUDENT_NAME, STUDENT_EMAIL, STUDENT_TEL, DEPARTMENT_ID) "
			+"VALUES('20140006', '김연아', 'yunakim@email.com', '010-006-0007', 'M001')"
			);
	
	out.println(rowNum + "개의 행이 삽입되었습니다." + "<hr/>");
}catch(SQLException e){
	e.printStackTrace();
}finally{
	if(stmt != null) try{stmt.close();}catch(SQLException e){}
	if(conn != null) try{conn.close();}catch(SQLException e){}
}
%>

<a href="http://localhost:8081/Chap10/FirstJDBC.jsp">결과 확인</a>
</body>
</html>