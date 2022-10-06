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
<h2>첫번째 액션 입니다.</h2>
내용이 여기에 들어갑니다.
<br><img src="./images/1.jpg" style="width:300px;height:168px">
<hr>
<a href="secondAction.jsp">두번째 페이지</a>
<hr>
<!-- 액션태그는 XML 표준 기준으로 작성된다.
	 시작태그와 종료태그는 반드시 있어야 한다. -->
오늘 날짜 : <jsp:include page="today.jsp"/>
</div>
</body>
</html>