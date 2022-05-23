<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome</title>
</head>

<body>

<%
	String name=(String)session.getAttribute("session-user");
%>

<h1>Welcome <%= name %>, enjoy the page...</h1>
<a href="ChangePassword.html" style="color: blue;">Change Password</a>

</body>
</html>