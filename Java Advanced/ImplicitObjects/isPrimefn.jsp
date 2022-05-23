<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>isPrime Method</title>
</head>

<body>

<%! 
boolean isPrime(int num)
{
	for(int i=2;i<=num/2;i++)
	{
		if(num%i==0)
			return false;
	}
	return true;
}
%>
<%
int num=5;

if(num>0)
{
	if(isPrime(num))
		out.print(num+" is prime");
	else
		out.print(num+" is not prime");
}

else
	out.println(num+" must be greater than 1");
%>

</body>
</html>