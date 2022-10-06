<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="width: 600px;heigh: 500px; border: 1px solid gray; text-align:center">
<h2>첫번째 액션 페이지입니다.</h2>
<hr>
<% 
	String name = (String) request.getAttribute("name");%>
<%= name %>님 환영 합니다.
<a href="login2.jsp">로그아웃</a>
<br><img src="./images/1.jpg" style="width:300px;height:168px">
<hr>
<a href="loginSuccess2.jsp">두번째 페이지</a>
<hr>
오늘 날짜 : <jsp:include page="today.jsp"/>
<hr>
</div>
</body>
</html>