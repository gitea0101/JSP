<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fieldset>
<legend>회원가입</legend>
<form action="joinP.jsp" method="post">
<input type="text" name="id" placeholder="아이디"><br>
<input type="password" name="pwd" placeholder="비밀번호"><br>
<input type="text" name="name" placeholder="이름"><br>
<input type="submit" value="가입하기">
<input type="reset" value="초기화">
</form>
</fieldset>
</body>
</html>