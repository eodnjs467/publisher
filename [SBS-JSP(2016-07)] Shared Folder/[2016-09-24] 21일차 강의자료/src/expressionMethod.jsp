<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<%
	Date today = new Date();
	SimpleDateFormat date = new SimpleDateFormat("yyyy");
	int num = 5;
%>

<h3>
	현재 연도 <%=date.format(today)%>입니다. <br/>
	<%=num%>년 후의 연도는 <%=num + Integer.parseInt(date.format(today)) %>년 입니다.

</h3>


