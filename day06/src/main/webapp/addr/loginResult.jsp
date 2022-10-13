<%@page import="addr.AddrBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@page import="addr.AddrManager"%>
<meta charset="UTF-8">
<title>로그인 성공!</title>
</head>
<body>
<%
	//로그인 유저 정보 b에 저장
	AddrBean b = (AddrBean)session.getAttribute("user");
%>
<jsp:useBean id="am" class="addr.AddrManager" scope="application"/>
<div align=center>
<H2>주소록</H2>
<table border=1 width=500>
<tr><td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td></tr>
<%
	for(AddrBean ab : am.getAddrList()) {
%>
	<tr>
	<td><%=ab.getUsername() %></td>
	<td><%=ab.getTel() %></td>
	<td><%=ab.getEmail() %></td>
	<td><%=ab.getGender() %></td></tr>
<%	
	}
%>
</table>
</div>
<%-- b가 관리자면 나머지 출력 --%>
<%if (b.getGrade()){ %>
<HR>
<a href="addr_form.html">주소추가</a><P>
<%} %>
<a href="main.jsp">메인 으로</a>
</body>
</html>