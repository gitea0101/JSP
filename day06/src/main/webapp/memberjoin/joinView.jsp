<%@page import="com.member.beans.MemberBean"%>
<%@page import="java.util.ArrayList"%>
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

<!-- request 객체에 저장된 값을 getProperty 액션 태그 이용해여 가져오기 -->
<jsp:useBean id="member2" class="com.member.beans.MemberBean" scope="session"/>
아이디: <jsp:getProperty property="id" name="member2"/><br>
비밀번호: <jsp:getProperty property="pwd" name="member2"/><br>
이름: <jsp:getProperty property="name" name="member2"/>

<h3>회원 리스트</h3>
<% ArrayList<MemberBean> mList = ml.getList(); %>
<table>
<tr><th>아이디</th><th>비밀번호</th><th>이름</th></tr>
<%
	for(MemberBean m : mList){
		out.print("<tr>");
		out.print(String.format("<td>%s</td><td>%s</td><td>%s</td>",m.getId(),m.getPwd(),m.getName()));
		out.print("</tr>");
	}
%>
</table>
</body>
</html>