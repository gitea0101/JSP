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
	response.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String psw = request.getParameter("psw");
	
	if(id.equals("smart") && psw.equals("123")){
		// response.sendRedirect("loginSuccess.jsp?id="+id);
		
		// foward() 이용한 페이지 이동
		// RequestDispatcher 객체 생성
		RequestDispatcher dispt = request.getRequestDispatcher("loginSuccess.jsp");
		
		String name = "홍길동";
		request.setAttribute("name",name);
		// foward() 메소드 호출
		dispt.forward(request, response);
	} else{
		response.sendRedirect("loginFail.jsp");
	}
%>
</body>
</html>