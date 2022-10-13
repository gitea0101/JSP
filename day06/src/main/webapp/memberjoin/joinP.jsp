<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="ml" class="com.member.beans.MemberManager" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!-- useBean 이용한 객체 생성과 데이터 저장 
	액션 태그는 XML 표준에 맞추어 장성됨 -->
<jsp:useBean id="member" class="com.member.beans.MemberBean"/>
<!-- member의 MemberBean 객체를 세션동안 유지하면 저장되는 값이 바뀔수 있음
	ml 에는 member의 MemberBean 객체의 주소를 저장
	setProperty에서 MemberBean의 id,pwd,name 데이터가 바뀜 -->
<jsp:setProperty property="*" name="member"/>

<jsp:useBean id="member2" class="com.member.beans.MemberBean" scope="session"/>
<jsp:setProperty property="*" name="member2"/>

<% 
	ml.add(member); 
%>
<a href="joinView.jsp">"회원정보 보기"</a>
</body>
</html>