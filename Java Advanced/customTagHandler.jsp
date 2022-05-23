<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Tg Support Example</title>
</head>

<body>
    <b> Jsp page content before starting tag.</b>

     <%@ taglib uri="WEB-INF/mytags.tld" prefix="dev" %>
    <dev:myTag>
        <br><b>Body of custom tag</b>
    </dev:myTag>
    <br><b>Jsp page content before closing tag.</b>
</body>
</html>