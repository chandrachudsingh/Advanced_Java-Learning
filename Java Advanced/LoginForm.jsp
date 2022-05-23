<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>LoginForm.jsp</title>
</head>

<body>
<%-- This cannot be done as this returns void --%>
<%-- 
	<% String name = %> ${param.uname} <% ; %> 
	<% String pass = %> ${param.pass} <% ; %> 
--%>

<%
String name=request.getParameter("uname");
String pass=request.getParameter("pass");

if(name.equals("chandra") && pass.equals("6250"))
{
%>
		<h4> Welcome, ${param.uname} </h4>
<%
		session.setAttribute("session-user",name);
%>
		<a href="LoginForm2.jsp">Click here</a>
<%
}
else
	out.print("Either username or password is incorrect");
%>

</body>
</html>