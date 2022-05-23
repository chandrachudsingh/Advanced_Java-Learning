<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Print integers from 1-10</title>
</head>

<body>

<!-- HTML tags will only be recognized outside the scriplet tag as it 
is for Java Programming but they can be used in the java statements like
out.print() -->

<% 
for(int i=1;i<=10;i++)
	out.print(i+"<br>");
%>

</body>
</html>