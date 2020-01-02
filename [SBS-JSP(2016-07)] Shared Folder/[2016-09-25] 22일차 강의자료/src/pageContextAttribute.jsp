<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>

setAttribute() 메서드 실행<hr/>
<%pageContext.setAttribute("testAttribute", "Hello, pageContext"); %>

getAttribute() 메서드를 통해 공유된 데이터 불러오기<p/>
현재 testAttribute의 속성값 : 
<%=pageContext.getAttribute("testAttribute")%><hr/>

getAttribute() 메서드를 통해 공유된 데이터를 참조변수에 대입<p/>
<%
	Object attribute1 = pageContext.getAttribute("testAttribute");
	out.println((String) attribute1 + "<hr/>");
%>

removeAttribute() 메서드를 통해 공유된 데이터의 속성값 제거하기<p/>
현재 testAttribute의 속성값 :
<%
	pageContext.removeAttribute("testAttribute");
	Object attribute2 = pageContext.getAttribute("testAttribute");
	out.print((String) attribute2 + "<hr/>");
%>



</body>
</html>