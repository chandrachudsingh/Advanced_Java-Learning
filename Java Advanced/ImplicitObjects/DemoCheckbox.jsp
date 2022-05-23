<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DemoCheckbox.jsp</title>
</head>

<body>

<%
	String[] movies=request.getParameterValues("chmovies");
	out.print("fav. Movies are : ");
	if(movies != null) 
		for(int i=0;i<movies.length;i++)
		{
%>
			<%= movies[i]+" " %>
<%
		}
%>

</body>
</html>