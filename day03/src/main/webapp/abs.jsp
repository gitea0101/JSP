<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>메소드 선언</h3>
<%!
	int abs(int num){
		if(num>0) return num;
		else return -num;
	}
%>
<h3>abs()메소드 호출하기</h3>
<%
	out.print("절대값 5 " + abs(5));
	out.print("<br>절대값 -5 " + abs(-5));

%>
</body>
</html>