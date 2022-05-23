<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP forward action tag example</title>
</head>
<body>
    <p align="center">This is JSP forward page</p>
    <jsp:include page="ForwardDisplay2.jsp">
        <jsp:param name="userid" value="ccsc"/>
        <jsp:param name="password" value="6250"/>
        <jsp:param name="name" value="chandrachud"/>
        <jsp:param name="age" value="20"/>
    </jsp:include>
</body>
</html>