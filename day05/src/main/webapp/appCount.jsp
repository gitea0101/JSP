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
	// application 객체 정보를 얻어서 값이 존재하는지를 확인
	Integer visitCnt = (Integer)application.getAttribute("visitCnt");
	// 존재하지 않을 경우 방문자 수를 저장할 변수 생성
	if(visitCnt == null){
		application.setAttribute("visitCnt", 1);
	}
	// 존재할 경우 방문자 수 증가
	else if(session.isNew()){
		visitCnt++;
		application.setAttribute("visitCnt", visitCnt);
	}
%>
방문자 수: <%=application.getAttribute("visitCnt") %>
</body>
</html>