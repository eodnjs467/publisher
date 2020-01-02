<%@ page language="java" contentType="text/html; charset=utf-8"%>

<%!

	int a=10;
	int b=3;

	public int add(int a, int b){
	
		return a+b;
	
	}

	public int minus(int a, int b){
		
		return a-b;
		
	}
	
	public int multiply(int a, int b){
		
		return a*b;
		
	}
	
	public int divide(int a, int b){
		
		return (int)a/b;
		
	}
	
	public int namuzi(int a, int b){
		
		return a%b;
		
	}


%>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>

	<h1><%=a%>, <%=b %>의 오칙 연산 결과</h1>

	
	<p><%=a%>과<%=b%>의 덤셈 결과는 [<%=add(a,b) %>]입니다.</p>
	<p><%=a%>과<%=b%>의 뺄셈 결과는 [<%=minus(a,b) %>]입니다.</p>
	<p><%=a%>과<%=b%>의 곱셈 결과는 [<%=multiply(a,b) %>]입니다.</p>
	<p><%=a%>과<%=b%>의 나눗셈 결과는 [<%=divide(a,b) %>]입니다.</p>
	<p><%=a%>과<%=b%>의 나머지 연산 결과는 [<%=namuzi(a,b) %>]입니다.</p>

</body>
</html>