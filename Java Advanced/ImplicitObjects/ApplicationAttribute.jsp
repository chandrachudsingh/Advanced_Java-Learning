<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>(get/set/remove)Attribute</title>
</head>

<body>

<%
    Integer counter=(Integer)application.getAttribute("visit");
    if(counter==null || counter==0)
        counter=1;
    else
        counter+=1;

    application.setAttribute("visit",counter);

    if(counter==100)
        application.removeAttribute("visit");
%>

<h3>Total number of views on this page is: <%= counter %> </h3>

</body>
</html>