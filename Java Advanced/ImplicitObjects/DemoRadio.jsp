<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

<%
	String stname=request.getParameter("stname");
	String college=request.getParameter("college");
	String degree=request.getParameter("degree");
	
	out.print("Student Name : "+stname+"<br>");
	out.print("College : "+college+"<br>");
	out.print("Degree : "+degree+"<br>");
%>

</body>
</html>