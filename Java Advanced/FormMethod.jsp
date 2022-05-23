<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*, java.util.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Form Method jsp</title>
</head>

<body>

    <h1>Reading checkbox data</h1>

    <%-- Physics flag: <%= request.getParameter("physics") %><br>
    Chemistry flag: <%= request.getParameter("chemistry") %><br>
    Maths flag: <%= request.getParameter("maths") %> --%>
	
    <%
        Enumeration paramNames=request.getParameterNames();
        while(paramNames.hasMoreElements())
        {
            String paramName=(String)paramNames.nextElement();
            out.print("<br><tr><td>"+paramName+"</td> :");
            String paramValue=request.getParameter(paramName);
            out.print("<tr><td>"+paramValue+"</td></tr>");
        }
    %>
</body>
</html>