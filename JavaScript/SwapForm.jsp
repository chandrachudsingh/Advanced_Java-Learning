<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SwapForm.jsp</title>
</head>

<body>

<h3>Before Swapping</h3>
<%
	int a=Integer.parseInt(request.getParameter("num1"));
	int b=Integer.parseInt(request.getParameter("num2"));
	
	out.print("First Number : "+a+"<br>");
	out.print("Second Number : "+b+"<br>");
%>
<h3>After Swapping</h3>
<%
	out.print("First Number : "+b+"<br>");
	out.print("Second Number : "+a);
%>

</body>
</html>