<%@ page language="java" contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
	label {display:inline-block; width:150px; height:30px; }
	
</style>

</head>
<body>



<form action="JoinChk.jsp" method="post">

<dl>

	<dd>
		<label for="name">이름</label><input type="text" name="name" id="name" required>
	</dd>

	<dd>
		<label for="gender">성별</label>
		<select name="gender" id="gender">
			<option value="남자">남자</option>
			<option value="여자">여자</option>
		</select>
	</dd>

	<dd>
		<label for="id">아이디</label><input type="text" name="id" id="id" required>
	</dd>
	
	<dd>
		<label for="psw">비밀번호</label><input type="password" name="password" id="psw" required>
	</dd>
	
	<dd>
		<label for="psw2">비밀번호 확인</label><input type="password" name="password2" id="psw2" required>
	</dd>
	
	<dd>
		<label for="ads">주소</label><input type="text" name="address" id="ads" required>
	</dd>
	
	<dd>
		<label for="tel">전화번호</label><input type="text" name="telnum" id="tel" required>
	</dd>
	
	<dd>
		<label for="email">이메일주소</label><input type="text" name="email" id="email" required>
	</dd>
	
	

</dl>

<hr>
<input type="submit" value="회원가입">



</form>

</body>
</html>