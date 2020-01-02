<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String addr = request.getParameter("addr");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
	%>
	
	<jsp:useBean id="myJoin" class="beans.Join"/>
	<%
		myJoin.setName(name);
		myJoin.setId(id);
		myJoin.setAddr(addr);
		myJoin.setEmail(email);
		myJoin.setPhone(phone);
	%>
	
	<h3>작성하신 내용은 아래와 같습니다</h3><br/>
	
	이름 : <%=myJoin.getName() %><hr/>
	성별 : <%=gender%><hr/>
	아이디 : <%=myJoin.getId() %><hr/>
	주소 : <%=myJoin.getAddr() %><hr/>
	전화번호 : <%=myJoin.getPhone() %><hr/>
	이메일주소 : <%=myJoin.getEmail() %><hr/>
	취미 : <br/>
	<%
		if(hobby == null){
			out.print("[선택한 취미가 없습니다]");
		} else {
	%>
	 		<table border="1">
	<%
			for(int i = 0; i < hobby.length; i++){
				out.println("<tr>");
				out.println("<td width=\"80\" align=\"center\">");
				out.print(hobby[i]);
				out.println("</tr>");
			}
	%>
			</table>
	<%
		}
	%>
</body>
</html>