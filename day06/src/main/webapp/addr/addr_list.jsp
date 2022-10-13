<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="addr.*"%>
<!DOCTYPE html>
<jsp:useBean id="am" class="addr.AddrManager" scope="application"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주소록 목록</title>
</head>
<body>
<div align=center>
<H2>주소록</H2>
<HR>
<a href="main.jsp">메인으로</a><P>
<table border=1 width=500>
<tr><td>아이디</td><td>패스워드</td><td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td><td>관리자</td></tr>
<%
	for(AddrBean ab : am.getAddrList()) {
%>
	<tr>
	<td><%=ab.getUserid() %></td>
	<td><%=ab.getUserpwd() %></td>
	<td><%=ab.getUsername() %></td>
	<td><%=ab.getTel() %></td>
	<td><%=ab.getEmail() %></td>
	<td><%=ab.getGender() %></td>
	<td><%=ab.getGrade() %></td></tr>
<%	
	}
%>
</table>
</div>
</body>
</html>


