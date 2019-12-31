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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String gender = request.getParameter("gender");
		String pwch = request.getParameter("pwch");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String[] hobby = request.getParameterValues("hobby");
		
		if(pw.equals(pwch)){
			out.println("<h3>작성하신 내용은 아래와 같습니다</h3><br/>");
			out.println("이름 : " + name + "<hr/>");
			out.println("성별 : " + gender + "<hr/>");
			out.println("아이디 : " + id + "<hr/>");
			out.println("주소 : " + addr + "<hr/>");
			out.println("전화번호 : " + phone + "<hr/>");
			out.println("이메일 : " + email + "<hr/>");
			out.println("취미 : <br/>");
			
			if(hobby == null){
				out.println("[선택한 취미가 없습니다]");
			} else {
				out.println("<table border=\"1\">");
				for(int i = 0; i < hobby.length; i++){
					out.println("<tr>");
					out.print("<td width=\"80\" align=\"center\">");
					out.print(hobby[i]);
					out.println("</td>");
					out.println("</tr>");
				}
				out.println("</table>");
			}
		} else {
			out.println("비밀번호가 같지 않습니다.");
		}
	%>
</body>
</html>