<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="addr.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addr" class="addr.AddrBean"/>
<jsp:setProperty name="addr" property="*"/>

<jsp:useBean id="am" class="addr.AddrManager" scope="application"/>
<%
	// grade 에 boolean 저장
	String gr = request.getParameter("grade");
	if(gr!=null) addr.setGrade(gr);
	if(addr.getUserid() != null && addr.getUserpwd() !=null ){
		am.add(addr);
	} else{// 아이디와 패스워드가 없으면 메인으로
		response.sendRedirect("main.jsp");
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addr_add.jsp</title>
</head>
<body>
<div align="center">
<H2>등록내용</H2>
아이디 : <jsp:getProperty property="userid" name="addr"/><P>
비밀번호 : <%=addr.getUserpwd() %><P>
이름 : <%=addr.getUsername() %><P>
전화번호 : <%=addr.getTel() %><P>
이메일 : <%=addr.getEmail() %> <P>
성별 : <%=addr.getGender() %> <P>
관리자 : <%=addr.getGrade() %>
<HR>
<a href="addr_list.jsp">목록 보기</a>
</div>
</body>
</html>










