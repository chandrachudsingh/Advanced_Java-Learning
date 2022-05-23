<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

<% 
	int age=Integer.parseInt(request.getParameter("age"));
	
	if(age<=12)
		out.print("age="+age +" is of child category");
	else if(age<=19)
		out.print("age="+age+" is of teenager category");
	else 
		out.print("age="+age+" is of adult category");
%>

</body>
</html>