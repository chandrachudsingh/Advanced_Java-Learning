<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Java Beans jsp</title>
</head>

<body>

<jsp:useBean id="mybean" class="MyPack.MyBean" scope="session">
<jsp:setProperty name="mybean" property="name" value="Hello World"/>
</jsp:useBean>

<h1><jsp:getProperty name="mybean" property="name"/></h1>

</body>
</html>