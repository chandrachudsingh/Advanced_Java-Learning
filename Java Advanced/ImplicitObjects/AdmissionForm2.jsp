<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>AdmissionForm2.jsp</title>
</head>

<body>

<fieldset>
	<legend>Admission Form Total Fees</legend>
<%
	float degfee=Float.parseFloat(request.getParameter("cbdegree"));
	
	out.print("Degree : "+request.getParameter("hdDeg")+"<br>");
	out.print("Degree Fee : "+degfee+"<br>");
	out.print("Facilities : ");
	
	float facfee=0;
	String[] st=request.getParameterValues("chfac");
	if(st != null)
	{
		for(int i=0;i<st.length;i++)
		{
			if(st[i].equals("Mess"))
				facfee+=10000;
			if(st[i].equals("Hostel"))
				facfee+=12000;
			if(st[i].equals("Bus"))
				facfee+=8000;
			
			out.print(st[i]+" ");
		}
	}
	else
	{
		facfee=0;
		out.print(" ");
	}
	out.print("<br>Facilities Fee : "+facfee+"<br>");
	out.print("Total Fee : "+(degfee+facfee));
%>
</fieldset>

</body>
</html>