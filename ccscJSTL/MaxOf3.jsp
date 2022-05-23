<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Check Max of 3</title>
</head>

<body>

    <c:set var="no1" value="${param.txNo1}" />
    <c:set var="no2" value="${param.txNo2}" />
    <c:set var="no3" value="${param.txNo3}" />

    <c:if test="${no1 > no2 && no1 > no3}">
        <c:out value="${no1} is the greatest number"/>
    </c:if>
	<c:if test="${no2 > no1 && no2 > no3}">
        <c:out value="${no2} is the greatest number"/>
    </c:if>
	<c:if test="${no3 > no1 && no3 > no2}">
        <c:out value="${no3} is the greatest number"/>
    </c:if>

</body>
</html>