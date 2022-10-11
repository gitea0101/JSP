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
	String userId = "smart";
	String userPwd = "1234";
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	if(id == null || pwd == null){// request id 나 pwd 가 null 이면 로그인 페이지로
		response.sendRedirect("login2.jsp");
	}else if(id.equals(userId) && pwd.equals(userPwd)){
		// 세션 정보로 userId 값을 저장
		session.setAttribute("userId", userId);
		String name = "홍길동";
		session.setAttribute("name",name);
		response.sendRedirect("loginSuccess1.jsp");
	}else{//로그인 실패시 로그인 실패 페이지로
		response.sendRedirect("loginFail2.jsp");
	}
%>
</body>
</html>