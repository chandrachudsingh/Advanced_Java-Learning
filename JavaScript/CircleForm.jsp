<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CircleForm area</title>
</head>

<body>

<fieldset>
	<legend>Area</legend>
<%
	float r=Float.parseFloat(request.getParameter("radius"));
	float result=(float)Math.PI*r*r;
	
	out.print("Radius : "+r+"<br>");
	out.print("Result = "+result);
%>
</fieldset>

</body>
</html>