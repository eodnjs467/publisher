<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%
String redirect = request.getParameter("redirect");

if(redirect == null){
	out.println("redirect가 지정되지 않았습니다.");
}else if(redirect.equals("okjsp")){
	response.sendRedirect("http://www.okjsp.pe.kr");
}else{
	response.sendRedirect("http://localhost:8081/Chap06/responseRedirected.jsp");
}
%>