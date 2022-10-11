<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	ArrayList<String> menu = new ArrayList<String>();
	Random ran = new Random(); 
	String basics[] = {"비빔밥","햄버거","짬뽕","샌드위치","국밥","마라탕","쌀국수"};
%>
<%
	// menu 초기화
	String reset = request.getParameter("reset");
	if(reset != null){
		if(reset.equals("초기화")){
			//menu = new ArrayList<>(Arrays.asList());
			menu = new ArrayList<String>();
		}
	}
%>
<form>
<input type="text" name="food">
<input type="submit" value="추가">
</form>
<%
	// 입력이 있을시 메뉴 추가
	String food = request.getParameter("food");
	if(food != null && !food.equals("")){
		menu.add(food);
	}
%>
<form>
<input type="submit" name="go" value="gogo">
</form>
<form>
<input type="submit" name="reset" value="초기화">
</form>

<% 
	String go = request.getParameter("go");
	// 메뉴가 있고 실행될 경우
	if(go != null && menu.size() > 0){
		if(go.equals("gogo")){
			int index = ran.nextInt(menu.size());
			out.print("오늘의 추천 메뉴 : "+ menu.get(index));
		}
	// 메뉴가 없고 실행될 경우
	}else if(menu.size() == 0 && go != null){
		if (go.equals("gogo")){
			int index = ran.nextInt(basics.length);
			out.print("오늘의 추천 메뉴 : "+ basics[index]);
		}
	// 메뉴와 입력이 없는 상태로 추가가 눌릴 경우
	}else if(menu.size() == 0 && food != null){
		if(food.equals("")){
			out.print("오늘의 추천 메뉴 : 공기");
		}
	}
%>
<%= "<br>메뉴 후보 <br>" %>
<%
	// menu 에있는 리스트 출력
	for(int i=0; i<menu.size(); i++){
		out.print(menu.get(i) + "<br>");
	}
%>
</body>
</html>