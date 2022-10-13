<%@page import="model.MemberVO"%>
<%@page import="java.util.ArrayList" %>
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
	// ml 에 memberList 저장 
	ArrayList<MemberVO> ml = (ArrayList<MemberVO>) request.getAttribute("memberList");
%>
<table width='800' border='1'>
	<tr>
		<th>이름</th>
		<th>아이디</th>
		<th>암호</th>
		<th>이메일</th>
		<th>전화번호</th>
		<th>권한(1:관리자, 2:일반회원)</th>
	</tr>
		<%
			// ml에 저장된 모든 데이터 출력
			for(MemberVO vo : ml){
				out.print("<tr><td>"+vo.getName()+"</td>");
				out.print("<td>"+vo.getUserid()+"</td>");
				out.print("<td>"+vo.getPwd()+"</td>");
				out.print("<td>"+vo.getEmail()+"</td>");
				out.print("<td>"+vo.getPhone()+"</td>");
				out.print("<td>"+vo.getAdmin()+"</td></tr>");
			}
		%>
</table>
<a href="logout.jsp">로그아웃</a><br>
</body>
</html>