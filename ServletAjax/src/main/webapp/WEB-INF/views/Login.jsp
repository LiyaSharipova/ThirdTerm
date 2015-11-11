<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Baths
  Date: 15.10.2015
  Time: 1:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log in</title>
</head>
<body>
<c:if test="${not empty message}">
  <h3>${message}</h3>
</c:if>
<form action="" form method="POST">
  <p>Email:<br><input type="text" name="email"></p>

  <p>Password:<br><input type="password" name="password" value=""></p>
  <p><input type="submit" value="Log in">
</body>
</html>
