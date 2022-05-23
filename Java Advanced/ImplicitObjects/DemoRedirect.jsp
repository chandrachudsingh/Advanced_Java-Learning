<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Google</title>
</head>

<body>

<%-- request.getContextPath() gives the current directory --%>
<%
	//(Incorrect)  response.sendRedirect("file://D:/Fibonacci.jsp");
	
	response.sendRedirect(request.getContextPath()+"/Fibonacci.jsp");
	
	//response.sendRedirect("./../Fibonacci.jsp");
%>

</body>
</html>