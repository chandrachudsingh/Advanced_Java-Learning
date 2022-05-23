<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Table of a number</title>
</head>

<body>
<%@ include file="NavigationMenu.html" %>
<% 
for(int i=1;i<=10;i++)
	out.print("5 * "+i+" = "+(5*i)+"<br>");
%>

</body>
</html>