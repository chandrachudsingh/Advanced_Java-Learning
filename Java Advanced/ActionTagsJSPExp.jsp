<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>UseCalculator</title>
</head>

<body>

    <%-- <%! int a=4, b=5, c;  %>
    <% c=a+b %>
    <%= c %> --%>

    <jsp:declaration>         //alt decalaration tag
        int a=4, b=5, c;    
    </jsp:declaration>

    <jsp:scriptlet>           //alt scriptlet tag
        c=a+b;
    </jsp:scriptlet>

    <h1>Sum is : <jsp:expression> c </jsp:expression></h1>  <!--alt expression tag-->

</body>
</html>