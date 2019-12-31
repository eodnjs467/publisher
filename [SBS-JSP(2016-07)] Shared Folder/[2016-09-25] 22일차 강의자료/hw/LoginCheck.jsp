<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>application 내장객체의 로그</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		
		if(id.equals("admin") && pw.equals("1234")){
			out.println("<h3>[" + id + "]님 접속을 환영합니다.</h2><br/>");
			out.println("<h4>접속하신 날짜 및 시간은 " + date.format(today) + "입니다.");
			application.log("[" + id + "] 로그인");
		} else {
			out.println("아이디나 비밀번호가 틀립니다.");
		}
	%>
</body>
</html>