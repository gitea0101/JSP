<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>쿠키 생성 과정</h3>
<%
	// 1. 쿠키 생성
	Cookie[] cookie = new Cookie[3];
	String[] name = {"id", "name", "age"};
	String[] value = {"smart", "길동", "22"};
	for(int i=0; i < cookie.length; i++){
		cookie[i] = new Cookie(name[i], value[i]);
		// 2. 쿠키 정보 유지 기간 설정 (30분)
		cookie[i].setMaxAge(60*30);
		// 3. 클라이언트에 쿠키 전송 
		response.addCookie(cookie[i]);
	}
%>
</body>
</html>