<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Config implicit object</title>
</head>

<body>

<h1> getInitParameter </h1>
<%
    String S=config.getInitParameter("debug");
    out.print(S);
%>

<br>
<h1> getInitParameterNames using Enumeration</h1>
<%
    String ParameterNames="";
    for(Enumeration e=config.getInitParameterNames();e.hasMoreElements();)
    {
        ParameterNames = (String)e.nextElement();
        out.print(ParameterNames);
        String paramValue = config.getInitParameter(ParameterNames);
        out.print(" = "+paramValue+"<br>");
    }
%>

<h1>getServletName</h1>
<%
    String sname=config.getServletName();
    out.print("Servlet Name : "+sname);
%>

<h1>getServletContext</h1>
<%
    out.print("Servlet Context : "+config.getServletContext());
%>

</body>
</html>