<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Ex1.jsp</title>
</head>

<body>

    <c:set var="no" value="${param.txNo}" />
    <c:if test="${no%2 == 0}">
        <c:out value="${no} is an even number"/>
    </c:if>

    <c:if test="${no%2 != 0}">
        <c:out value="${no} is an odd number"/>
    </c:if>

</body>
</html>