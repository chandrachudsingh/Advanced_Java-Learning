<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ChooseAttr.jsp</title>
</head>

<body>

	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <c:set var="no" scope="session" value="${param.tx1}"/>
    <c:choose>
        <c:when test="${no%5 == 0}">
            <c:set var="st" value="${no} is a multiple of 5"/>
        </c:when>
        <c:otherwise>
            <c:set var="st" value="${no} is not a multiple of 5"/>
        </c:otherwise>
    </c:choose>

    <h4><c:out value="${st}"/><h4>

</body>
</html>