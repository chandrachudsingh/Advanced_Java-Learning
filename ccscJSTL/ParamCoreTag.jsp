<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Core url tag</title>
<body>
    <c:url value="/Ex1.jsp" var="completeUrl" >
        <c:param name="user" value="ccsc" />
        <c:param name="password" value="6250" />
    </c:url>

    ${completeUrl}
</body>
</head>
</html>