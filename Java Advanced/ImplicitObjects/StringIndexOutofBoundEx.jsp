<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>StringIndexOutofBoundEx.jsp</title>
</head>

<body>

<% 
	String name=request.getParameter("txname");
	int pos=Integer.parseInt(request.getParameter("txpos"));
	
	try
	{
		out.print("The character you chose is : "+name.charAt(pos-1));
	}
	catch(StringIndexOutOfBoundsException e)
	{
		out.print(e);
	}
%>

</body>
</html>