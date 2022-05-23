<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="DivideByZeroEx.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

<%
	int a=Integer.parseInt(request.getParameter("num1"));
	int b=Integer.parseInt(request.getParameter("num2"));
	
	out.print(a/b);
%>

</body>
</html>