<%
	if(session.getAttribute("userId") == null){
		response.sendRedirect("loginForm.jsp");
	}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>2 페이지</h3>
<%= session.getAttribute("userId")%>님 환영합니다. <a href="Logout.jsp">로그아웃</a>
세션 시작 시간: <%= (long)session.getAttribute("sst")/60 %>분
<!-- 마지막 request 호출 시간 -->
<%
	long presentTime = session.getLastAccessedTime()/1000;
	System.out.println("현재시간: " + presentTime + "초");
	
	//세션 유지된 시간
	long stayTime = presentTime - (long)session.getAttribute("sst");
	out.print("머문 시간: " + stayTime + "초");
%>
<hr>
<a href="page1.jsp">1페이지로 이동</a>
</body>
</html>