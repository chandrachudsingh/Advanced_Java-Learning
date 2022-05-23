<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="QuadException.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Quad.jsp</title>
</head>

<body>

<%	
	int a=Integer.parseInt(request.getParameter("a"));
	int b=Integer.parseInt(request.getParameter("b"));
	int c=Integer.parseInt(request.getParameter("c"));
	
	int d=(b*b)-(4*a*c);
	if(d<0)
		throw 	
%>

</body>
</html>