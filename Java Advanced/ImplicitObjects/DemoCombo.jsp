<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DemoCombo.jsp</title>
</head>

<body>

<%
	String que=request.getParameter("question");
	String ans=request.getParameter("answer");
	
	if(que.equals("0"))
		out.print("Please select a question first");
	else
	{
		out.print("Question : "+que+"<br>");
		out.print("Answer : "+ans);
	}
%>

</body>
</html>