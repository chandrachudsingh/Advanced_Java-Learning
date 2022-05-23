<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sum of two numbers</title>
</head>

<body>

<!-- Method 1
<% 
int x=4,y=10;

out.print("Sum = "+(x+y));
%>
-->

<!-- Method 2-->
<%! int x=4,y=1; %>

<%= "Sum = "+(x+y) %>

 
</body>
</html>