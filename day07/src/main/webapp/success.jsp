<%@page import="model.MemberVO"%>
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
	MemberVO member = (MemberVO)session.getAttribute("member");
	String name = member.getName();
%>
<%=name %>님 환영합니다.<br>
<a href="allMember">회원리스트</a><br>
<a href="logout.jsp">로그아웃</a><br>
</body>
</html>