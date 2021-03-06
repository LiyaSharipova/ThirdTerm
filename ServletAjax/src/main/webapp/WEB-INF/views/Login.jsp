<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/clean-blog.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <script>
        function formCheck() {
            var email = document.logForm.email.value;
            var pass = document.logForm.password.value;
            if(email==null || pass==null || email=="" || pass==""){
                alert("Fill in all fields")
                return false;
            }
            return true;
        }
    </script>
    <style>
        .form-control{
            width:50%;
        }
    </style>
    <title>Log in</title>
</head>
<body>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header ">
            <a class="navbar-brand" href="<c:url value="/welcome"/>">MYPROJECT</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li><a href="<c:url value="/welcome"/>">Home</a></li>
                <li class="active"><a href="<c:url value="/login"/>">Log in</a></li>
                <li><a href="<c:url value="/posts"/>">Posts</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <c:if test="${not empty message}">
        <h3>${message}</h3>
    </c:if>
    <form action="" name="logForm" method="POST" role="form" class="form-horizontal" onsubmit="return formCheck()">
        <div class="form-group">
            <label for="email">Email address:</label>
            <input type="email" class="form-control" id="email" name="email">
        </div>
        <div class="form-group">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control" id="pwd" name="password">
        </div>
        <div class="checkbox" style="margin: 10px">
            <label><input type="checkbox" name="rememberMe" value="on"> Remember me</label>
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
    </form>

    <p><a href="/Regform" class="link">Don't have an account? Create one!</a> </p>
</div>


<%--<form action="" form method="POST">--%>
<%--<p>Email:<br><input type="text" name="email"></p>--%>

<%--<p>Password:<br><input type="password" name="password" value=""></p>--%>

<%--<p><input type="submit" value="Log in">--%>
<%--</p>--%>
<%--</form>--%>
</body>
</html>
