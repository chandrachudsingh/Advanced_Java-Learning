<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Process</title>
</head>

<body>

<%
    String user=request.getParameter("txuser");
    String password=request.getParameter("txpassword");
    out.println("Hello : "+user+"<br>");
    pageContext.setAttribute("Username",user,PageContext.SESSION_SCOPE);
    pageContext.setAttribute("Password",password,PageContext.SESSION_SCOPE);
%>

<a href="PageContextDisplay.jsp">click</a>

</body>
</html>