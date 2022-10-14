<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action ="expr" method="get">
<input type="text" name="num1">
+
<input type="text" name="num2">
<input type="submit">
</form>
<%
	String n1 = request.getParameter("num1");
	String n2 = request.getParameter("num2");
	int num1 =0;
	int num2 =0;
	if (n1 != null && n2 !=null &&
		n1 != "" && n2!= ""){
		num1 = Integer.parseInt(n1);
		num2 = Integer.parseInt(n2);
	} 
%>
<%=num1 %> + <%=num2 %> = <%=num1+num2 %><br>
${param.num1} + ${param.num2} = ${param.num1 + param.num2} <br>

</body>
</html>