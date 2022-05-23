<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ChooseAttr.jsp</title>
</head>

<body>

	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <c:set var="income" scope="session" value="${param.tx1}"/>
    <p>Your income is : <c:out value="${income}"/></P><br>
    <c:choose>
        <c:when test="${income <= 1000}">
            <c:set var="gyan" value="Income is not good."/>
        </c:when>
        <c:when test="${income > 10000}">
            <c:set var="gyan" value="Income is very good."/>
        </c:when>
        <c:otherwise>
            <c:set var="gyan" value="Income not determined"/>
        </c:otherwise>
    </c:choose>

    <h4><c:out value="${gyan}"/></h4>

</body>
</html>