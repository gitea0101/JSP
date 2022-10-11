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
	// 기존 쿠키 삭제
	Cookie[] cookiesDel = request.getCookies();
	for(int i=0; i < cookiesDel.length; i++){
		String name = cookiesDel[i].getName();
		if(name.contains("book")){
			cookiesDel[i].setMaxAge(0);
			response.addCookie(cookiesDel[i]);
		}
	}
	// 가져온 데이터 인코딩 설정
 	request.setCharacterEncoding("UTF-8");
	// 데이터 가져오기
	String[] books = request.getParameterValues("book");
	// 쿠키 생성	
	Cookie[] cookies = new Cookie[books.length];
	for(int i=0; i < books.length; i++){
		cookies[i] = new Cookie("book"+i , books[i]);

		cookies[i].setMaxAge(60*30);
		// response 객체에 담기
		response.addCookie(cookies[i]);
	}
	response.sendRedirect("shoppingBook.jsp");
%>
</body>
</html>