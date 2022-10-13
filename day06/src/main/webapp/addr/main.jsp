<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환영합니다.</title>
</head>
<body>
<fieldset style="width:300px; height:200px; align:left;">
<legend><b>환영합니다.</b></legend>
<br>
<button><a href="loginform.jsp"><b>로그인</b></a></button><br><br>
<button><a href="addr_form.html"><b>회원가입</b></a></button>
<%
	//application 객체 정보를 얻어서 값이 존재하는지를 확인.
	Integer visitCnt = (Integer)application.getAttribute("visitCnt");
	//존재하지 않을 경우에는 방문자 수를 저장할 변수 생성
	if(visitCnt == null){
		application.setAttribute("visitCnt", 1);
	}else{
		if(session.isNew()){
		//존재할 경우는 방문자수 증
		visitCnt++;
		//application 객체에 저장
		application.setAttribute("visitCnt", visitCnt);
		}
	}
%>
<br><br>
당신은 <%=application.getAttribute("visitCnt")%>번째 방문자입니다.
</fieldset>
</body>
</html>