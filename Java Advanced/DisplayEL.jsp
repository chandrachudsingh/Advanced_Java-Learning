<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" isELIgnored="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Display Page</title>
</head>

<body>

<%-- to display these attriute values remove isELIgnored or set it to false in page directive, as it ignores EL --%>

${applicationScope.Faculty}<br>
${applicationScope.Institute}<br>

</body>
</html>