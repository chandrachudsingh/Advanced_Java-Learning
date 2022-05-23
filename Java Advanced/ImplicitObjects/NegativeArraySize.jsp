<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="NegativeArraySizeEx.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>NegativeArraySizeEx.jsp</title>
</head>

<body>

<%
	int n=Integer.parseInt(request.getParameter("num"));
	int[] arr=new int[n];
	
	out.print("There are "+n+" students");
%>

</body>
</html>