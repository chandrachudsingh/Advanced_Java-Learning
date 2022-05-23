<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Maximum</title>
</head>

<body>

<fieldset>
	<legend>Maximum</legend>
<%
	int num1=Integer.parseInt(request.getParameter("num1"));
	int num2=Integer.parseInt(request.getParameter("num2"));
	int num3=Integer.parseInt(request.getParameter("num3"));
	
	out.print("First Number : "+num1+"<br>");
	out.print("Second Number : "+num2+"<br>");
	out.print("Third Number : "+num3+"<br>");
	
	if(num1>num2 && num1>num3)
		out.print("Result : "+num1+"<br>");
	else if(num2>num3)
		out.print("Result : "+num2+"<br>");
	else
		out.print("Result : "+num3+"<br>");
%>
</fieldset>

</body>
</html>