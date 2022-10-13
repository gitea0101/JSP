<%@page import="addr.AddrBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="am" class="addr.AddrManager" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	if(id == null || pwd == null){// request id 나 pwd 가 null 이면 로그인 페이지로
		response.sendRedirect("main.jsp");
	}
	// id, pwd 가 있으면 getAddr 메소드로 id,pwd 검사
	// 맞는 id, pwd 가 있으면 a에 AddrBean 타입 저장 
	AddrBean a = am.getAddr(id,pwd);
	if(a != null){
		// user에 로그인한 사람 정보 저장 
		session.setAttribute("user", a);
		response.sendRedirect("loginResult.jsp");
	}else{//로그인 실패시 메인 페이지로
		response.sendRedirect("main.jsp");
	}
%>
</body>
</html>