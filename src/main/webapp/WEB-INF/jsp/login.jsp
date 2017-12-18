<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Zaloguj się</title>

    <link rel="stylesheet" href="/bootstrap/css/bootstrap.css">
    <script src="/jquery/jquery-3.2.1.min.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>

</head>

<body>
<div class="jumbotron-fluid">
    <div class="container col-lg-10">
        <h1 class="display-3 text-info">ArteART Prize Laguna 17.18</h1>
    </div>
</div>
<div class="container">
    <form method="POST" action="${contextPath}/login" class="form-signin">
        <div class="card">
            <div class="card-header">
                <h2 class="card-title">Zaloguj się</h2>
            </div>
            <div class="card-body">
                <div class="form-group ${error != null ? 'has-error' : ''}">
                    <span>${message}</span>
                    <input name="username" type="text" class="form-control" placeholder="Username"
                           autofocus="true"/>
                    <input name="password" type="password" class="form-control" placeholder="Password"/>
                    <span>${error}</span>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                    <button class="btn btn-lg btn-info btn-block" type="submit">Zaloguj się</button>
                    <h4 class="text-center"><a href="/registration" class="text-info">Utwórz konto</a></h4>
                </div>
            </div>
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