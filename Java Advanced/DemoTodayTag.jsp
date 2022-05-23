<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="QuadException.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Taglib.jsp</title>
</head>

<body>

<%@ taglib uri="./WEB-INF/MyTags.tld" prefix="p" %>
Current Date and Time is: <p:today/> 

</body>
</html>