<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>get and set properties Example</title>
</head>

<body>

<jsp:useBean id="students" class="MyPack.StudentBean">
    <jsp:setProperty name="students" property="firstName" value="chandrachud"/>
    <jsp:setProperty name="students" property="lastName" value="singh"/>
    <jsp:setProperty name="students" property="age" value="19"/>
</jsp:useBean>

<p>Student FirstName : <jsp:getProperty name="students" property="firstName"/></p>
<p>Student LastName : <jsp:getProperty name="students" property="lastName"/></p>
<p>Student Age : <jsp:getProperty name="students" property="age"/></p>

</body>
</html>