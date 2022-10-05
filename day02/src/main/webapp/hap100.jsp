<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int n = 0;
	for(int i =1; i<101; i++){
		n = n+i;
	}
	out.print("1~100까지의 합: "+n);
%>
</body>
</html>