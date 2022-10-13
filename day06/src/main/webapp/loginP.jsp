<%@page import="beans.Member"%>
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
//로그인 정보를 가져와서 member 객체에 저장된 값과 일치여부 판단
	Member member = new Member();
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	String name = member.checkUser(id, pwd);
	if(name == null){
		response.sendRedirect("loginForm.jsp");
	} else{
		session.setAttribute("name", name);
		response.sendRedirect("main.jsp");
	}
%>

<%=name %>
</body>
</html>