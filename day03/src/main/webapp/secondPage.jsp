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
<h2>두번째 페이지</h2>
내용이 여기에 들어갑니다.
<br><img src="./images/2.jpg" style="width:530px;height:338px">
<hr>
<a href="firstPage.jsp">첫번째 페이지</a>
<hr>
오늘 날짜 : <%@ include file="today.jsp" %>
</div>
</body>
</html>