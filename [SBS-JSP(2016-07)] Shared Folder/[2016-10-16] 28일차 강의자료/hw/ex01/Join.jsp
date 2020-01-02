<%@ page language="java" contentType="text/html; charset=utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>



			<h1>작성하신 내용은 아래와 같습니다.</h1><hr>

			이름 : ${param.name}<hr>
			성별 : ${param.gender }<hr>
			아이디 : ${param.id }<hr>
			주소 : ${param.address }<hr>
			전화번호 : ${param.telnum }<hr>
			이메일주소 : ${param.email }<hr>
			
			취미 : ${empty paramValues.hobby[0]? "[취미가 없습니다]" : "<table border='1'>"}
			
					${empty paramValues.hobby[0]? "" : "<tr><td>"} ${paramValues.hobby[0]} ${empty paramValues.hobby[0]? "" : "</td></tr>"}
					${empty paramValues.hobby[1]? "" : "<tr><td>"} ${paramValues.hobby[1]} ${empty paramValues.hobby[1]? "" : "</td></tr>"}
					${empty paramValues.hobby[2]? "" : "<tr><td>"} ${paramValues.hobby[2]} ${empty paramValues.hobby[2]? "" : "</td></tr>"}
					${empty paramValues.hobby[3]? "" : "<tr><td>"} ${paramValues.hobby[3]} ${empty paramValues.hobby[3]? "" : "</td></tr>"}
					${empty paramValues.hobby[4]? "" : "<tr><td>"} ${paramValues.hobby[4]} ${empty paramValues.hobby[4]? "" : "</td></tr>"}
					${empty paramValues.hobby[5]? "" : "<tr><td>"} ${paramValues.hobby[5]} ${empty paramValues.hobby[5]? "" : "</td></tr>"}
					${empty paramValues.hobby[6]? "" : "<tr><td>"} ${paramValues.hobby[6]} ${empty paramValues.hobby[6]? "" : "</td></tr>"}
					${empty paramValues.hobby[7]? "" : "<tr><td>"} ${paramValues.hobby[7]} ${empty paramValues.hobby[7]? "" : "</td></tr>"}
					${empty paramValues.hobby[8]? "" : "<tr><td>"} ${paramValues.hobby[8]} ${empty paramValues.hobby[8]? "" : "</td></tr>"}
					
				${empty paramValues.hobby[0]? "" : "</table>"}
		
						

</body>
</html>