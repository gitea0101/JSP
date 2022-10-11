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
	// 로그인 정보를 가져와서 사이트 사용자인지 확인
	String userId = "smart";
	String userPwd = "1234";
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	// 맞으면 page1로 이동, 세션 유지하면서 page2로 이동
	if(id.equals(userId) && pwd.equals(userPwd)){
		// 세션 정보로 userId 값을 저장
		session.setAttribute("userId", userId);
		long sessionStartTime = session.getCreationTime()/1000;
		session.setAttribute("sst", sessionStartTime);
		response.sendRedirect("page1.jsp");
	} 
	// 틀리면 로그인 페이지로 이동
	else{
		response.sendRedirect("loginForm.jsp");
	}
%>
</body>
</html>