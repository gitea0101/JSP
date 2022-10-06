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
	String url = request.getParameter("url");
	switch(url){
	case "네이버":
		response.sendRedirect("https://www.naver.com/");
		break;
	case "다음":
		response.sendRedirect("https://www.daum.net/");
		break;
	case "구글":
		response.sendRedirect("https://www.google.com/");
		break;
	}
%>
</body>
</html>