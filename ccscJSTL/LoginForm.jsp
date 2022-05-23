<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>LoginForm.jsp</title>
</head>

<body>
<%-- This cannot be done as this returns void --%>
<%-- 
	<% String name = %> ${param.uname} <% ; %>
	<% String pass = %> ${param.pass} <% ; %> 
--%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<c:set var="user" value="${param.uname}" />
	<c:set var="password" value="${param.pass}" />
	<c:set var="age" value="${param.age}" />

	<c:if test="${age <= 12}">
		<c:set var="str" value="Master" />
	</c:if>
	<c:if test="${age > 12}">
		<c:set var="str" value="Mr." />
	</c:if>
	<c:if test="${age > 60}">
		<c:set var="str" value="Shri" />
	</c:if>

	<c:if test="${user == 'chandra' && password == '6250'}">
		<h4> Welcome, ${str} ${user} </h4>
		<c:set var="session-user" scope="session" value="${str} ${user}"/>
		<c:redirect url="LoginForm2.jsp"/>
	</c:if>

	<c:if test="${!(user == 'chandra' && password == '6250')}">
		<c:out value="Either username or password is incorrect"/>
	</c:if>

</body>
</html>