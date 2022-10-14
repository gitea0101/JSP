<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${empty loginUser}">
	<jsp:forward page='login.do' />
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="button" value="메인으로" onclick="location.href='main.jsp'">
<form action="delMember.do" method="post">
<table width='800' border='1'>
<tr>
	<th>이름</th>
	<th>아이디</th>
	<th>암호</th>
	<th>이메일</th>
	<th>전화번호</th>
	<th>권한(1:관리자, 0:일반회원)</th>
	<c:if test="${1 == loginUser.admin}">
	<th>삭제</th>
	</c:if>
</tr>
<c:forEach var="user" items="${memberList}">
	<tr><td>${user.name }</td>
	<td>${user.userid }</td>
	<td>${user.pwd }</td>
	<td>${user.email }</td>
	<td>${user.phone }</td>
	<td>${user.admin }</td>
	<c:if test="${1 == loginUser.admin}">
		<td><input type="checkbox" name ="delMem" value="${user.userid }"></td>
	</c:if></tr>
</c:forEach>
</table>
<c:if test="${1 == loginUser.admin}">
<input type="submit" value="삭제"	>
</c:if>	
</form>
</body>
</html>