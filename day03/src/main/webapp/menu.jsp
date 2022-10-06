<%@page import="java.util.Random"%>
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
	Random ran = new Random();
	String [] menu= {"아","무","거","나"};

%>
<form>
<input type="submit" value="reroll">
</form>

<% 
	int index = ran.nextInt(menu.length);
	out.print("오늘의 추천 메뉴 : "+ menu[index]);

%>
</body>
</html>