<%@page import="beans.Member"%>
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
//request 객체로부터 데이터 분리
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	
	//Member 객체 생성하고 데이터 저장
	/*
	Member member = new Member();
	member.setId(id);
	member.setPwd(pwd);
	member.setName(name);
	//member 객체 공유
	// session.setAttribute("member", member);
	// forward 이용 (request 객체에 member만 추가해줌)
	request.setAttribute("member", member);
	RequestDispatcher dispt = request.getRequestDispatcher("joinView.jsp");
	dispt.forward(request, response);
	*/
%>
<!-- useBean 이용한 객체 생성과 데이터 저장 
	액션 태그는 XML 표준에 맞추어 장성됨 -->
<jsp:useBean id="member" class="beans.Member" scope="request"/>
<!-- 모든 데이터 저장 -->
<jsp:setProperty property="*" name="member"/>
<%-- <jsp:setProperty property="id" name="member"/> --%>
<%-- <jsp:setProperty property="pwd" name="member"/> --%>
<%-- <jsp:setProperty property="name" name="member"/> --%>

<%
	RequestDispatcher dispt = request.getRequestDispatcher("joinView.jsp");
	dispt.forward(request, response);
%>

<!-- 결과 피드백 -->
<!-- <h3>회원가입 결과</h3> -->
<%-- 아이디: <%=member.getId() %><br> --%>
<%-- 비밀번호: <%=member.getPwd() %><br> --%>
<%-- 이름: <%=member.getName() %><br> --%>

</body>
</html>