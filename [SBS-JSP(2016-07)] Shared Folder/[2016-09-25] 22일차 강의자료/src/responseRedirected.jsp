<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	String redirect = request.getParameter("redirect");
	out.println("redirect 파라미터의 값 : " + redirect);
%>