<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	<%out.print("여기는 ActionTagParamFrom2.jsp 페이지입니다!<br/>"); %>
	ActionTagParamFrom2.jsp의 subject 파라미터의 값 :
	<%=request.getParameter("subject") %><br/>
	<%
	 String rsdno = request.getParameter("rsdno"); 
	%>
	주민등록번호 : <%=rsdno %><hr/>
	<jsp:include page="ActionTagParamTo2.jsp">
		<jsp:param name="subject" value="Param Action Tag Example 2"/>
		<jsp:param name="rsdno" value="<%=rsdno.substring(0,6)%>"/>
	</jsp:include>
	<hr/>
	인클루드 끝난 후에 주민등록번호(변수) : <%=rsdno %><br/>
	인클루드 끝난 후에 주민등록번호(req) : <%=request.getParameter("rsdno")%> 
</body>
</html>