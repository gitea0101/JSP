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
	int num = Integer.parseInt(request.getParameter("num"));
%>
	<table border>
	<tr>
<%
	for(int i=1; i<num+1; i++){
		out.print("<td>" + i + "</td>");
	}
%>
	</tr>
	</table>
</body>
</html>