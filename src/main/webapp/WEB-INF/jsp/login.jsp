<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Log in with your account</title>

    <link rel="stylesheet" href="/bootstrap/css/bootstrap.css">
    <script src="/jquery/jquery-3.2.1.min.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>

</head>

<body>

<div class="container">
    <div class="panel panel-flat">
        <div class="panel-heading" style="padding-top: 20px;">
            <h1 class="panel-title text-info">ArteART Prize Laguna 17.18</h1>
        </div>
    </div>
    <form method="POST" action="${contextPath}/login" class="form-signin">
        <h2 class="form-heading">Log ąć in</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="username" type="text" class="form-control" placeholder="Username"
                   autofocus="true"/>
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-lg btn-info btn-block" type="submit">Log In</button>
            <h4 class="text-center"><a href="/registration" class="text-info">Create an account</a></h4>
        </div>

    </form>

    <div class="btn-group btn-group-justified">
        <a href="/pu1" class="btn btn-info">PU1</a>
        <a href="/pu2" class="btn btn-info">PU2</a>
        <a href="#" class="btn btn-info">PU3</a>
    </div>
</div>
</body>
</html>