<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post">
<input type="text" name="num1">
+
<input type="text" name="num2">
<input type="submit" value="Odd 판별">
</form>
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	int sum = num1 + num2;
	
	if(isOdd(sum)){
		out.print(num1 + "+"+ num2 + "는 홀수 입니다.");
	}else{
		out.print(num1 + "+"+ num2 + "는 짝수 입니다.");
	}
%>
<%!
	public boolean isOdd(int num){
		if(num % 2 == 1) return true;
		else return false;
	}
%>
</body>
</html>