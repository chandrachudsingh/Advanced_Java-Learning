<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*, java.util.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Application implicit object</title>
</head>

<body>

<h1> (get/set/remove)Attribute </h1>
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

<br>
<h1> getAttributeNames using Enumeration</h1>
<%
    for(Enumeration e=application.getAttributeNames();e.hasMoreElements();)
    {
        String attr = (String)e.nextElement();
        out.print(attr+" = "+application.getAttribute(attr)+"<br>");
    }
%>
<br>
<h1> getInitParameter </h1>
<%
    String S=application.getInitParameter("debug");
    out.print(S);
%>

<br>
<h1> getInitParameterNames using Enumeration</h1>
<%
    String ParameterNames="";
    for(Enumeration e=application.getInitParameterNames();e.hasMoreElements();)
    {
        ParameterNames = (String)e.nextElement();
        out.print(ParameterNames);
        String paramValue = application.getInitParameter(ParameterNames);
        out.print(" = "+paramValue+"<br>");
    }
%>

<br>
<h1>Write in log file </h1>
<%
    application.log("This is error 404 Page not found");
    out.print("log file successfully written");
%>

<br>
<h1>getrealPath</h1>
<%
    out.print(application.getRealPath("/AOPForm.html"));
%>

<br>
<h1>getServerInfo</h1>
<%
    out.print("Server Info = "+application.getServerInfo());
%>

<br>
<h1>getMajorVersion & getMinorVersion</h1>
<h3>Major Version : <%= application.getMajorVersion() %> </h3>
<h3>Minor Version : <%= application.getMinorVersion() %> </h3>

</body>
</html>