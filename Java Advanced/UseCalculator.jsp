<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>UseCalculator</title>
</head>

<body>

<jsp:useBean id="obj" class="MyPack.Calculator"/>

<%
    out.print("cube of 5 is "+obj.cube(5));
%>

</body>
</html>