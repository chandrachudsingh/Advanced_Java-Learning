<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>get and set properties Example</title>
</head>

<body>

<jsp:useBean id="emp" class="MyPack.Employee">
    <jsp:setProperty name="emp" property="*" />
</jsp:useBean>

Records are :<br><br>
id : <jsp:getProperty property="id" name="emp"/><br>
name : <jsp:getProperty property="name" name="emp"/>

</body>
</html>