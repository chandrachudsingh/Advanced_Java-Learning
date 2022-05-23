<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*, java.util.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Enumeration </title>
</head>

<body>

<%
    for(Enumeration e=application.getAttributeNames();e.hasMoreElements();)
    {
        String attr = (String)e.nextElement();
        out.print(attr+" = "+application.getAttribute(attr)+"<br>");
    }
%>

</body>
</html>