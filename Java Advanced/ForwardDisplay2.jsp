<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Display.jsp</title>
</head>
<body>
    <h2>Hello this is a display.jsp page</h2>
    UserId: <%= request.getParameter("userid") %><br>
    Password: <%= request.getParameter("password") %><br>
    User Name: <%= request.getParameter("name") %><br>
    Age: <%= request.getParameter("age") %><br>
</body>
</html>