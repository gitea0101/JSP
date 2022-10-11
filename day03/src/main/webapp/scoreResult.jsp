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
	// post는 인코딩 설정 해야함
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	int java = Integer.parseInt(request.getParameter("java"));
	int web = Integer.parseInt(request.getParameter("web"));
	int iot = Integer.parseInt(request.getParameter("iot"));
	int android = Integer.parseInt(request.getParameter("android"));
	
	int avgarray[] = {java,web,iot,android};
	double average = avg(avgarray);
%>
<%!
	double avg(int n[]){
		int sum =0;
		for(int i:n){
			sum = sum+i;
		}
		return (double)sum/(n.length);
	}
	
	String grade(double ag){
		// 변수는 왼쪽에
		if((ag <=100) && (ag >= 95)){return "A+";}
		// 100이상의 값은 이미 검사함
		else if(ag >= 90){return "A";}
		else if(ag >= 85){return "B+";}
		else if(ag >= 80){return "B";}
		else if(ag >= 0){return "F";}
		else{return "?";}
	}

%>
<table width="200">
<tr><td>이름</td>
<td><%= name %></td>
</tr>
<tr><td>JAVA점수</td>
<td><%= java %></td>
</tr>
<tr><td>WEB점수</td>
<td><%= web %></td>
</tr>
<tr><td>IOT점수</td>
<td><%= iot %></td>
</tr>
<tr><td>ANDROID점수</td>
<td><%= android %></td>
</tr>
<tr><td>평균</td>
<td><%= average %></td>
</tr>
<tr><td>학점</td>
<td><b><%= grade(average) %></b></td>
</tr>
</table>
</body>
</html>