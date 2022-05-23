<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>AOPForm.jsp</title>
</head>

<body>

<%
	int num1=Integer.parseInt(request.getParameter("num1"));
	int num2=Integer.parseInt(request.getParameter("num2"));
	
	out.print("First Number : "+num1+"<br>");
	out.print("Second Number : "+num2+"<br>");
	
	int result=0;
	if(request.getParameter("cal").equals("+"))
	{
			result=num1+num2;
			out.print("Sum = "+result);
	}
	else if(request.getParameter("cal").equals("-"))
	{
			result=num1-num2;
			out.print("Subtraction = "+result);
	}
	else if(request.getParameter("cal").equals("*"))
	{
			result=num1*num2;
			out.print("Multiplication = "+result);
	}
	else if(request.getParameter("cal").equals("/"))
	{
			result=num1/num2;
			out.print("Division = "+result);
	}
	else 
	{
			result=num1%num2;
			out.print("Modulus = "+result);
	}
%>

</body>
</html>