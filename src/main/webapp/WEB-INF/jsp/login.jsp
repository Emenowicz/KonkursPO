<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html lang="en"
      xmlns:th="http://www.thymeleaf.org">
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
    <script src="/bootstrap/js/bootstrap.bundle.js"></script>

</head>

<body>
<div class="jumbotron-fluid">
    <div class="container col-lg-10">
        <h1 class="display-3 text-info">ArteART Prize Laguna 17.18</h1>
    </div>
</div>
<div class="container">
    <form id="login" method="POST" action='<spring:url value="/auth/login"/>' class="form-signin" >
        <div class="card">
            <div class="card-header">
                <h2 class="card-title">Zaloguj się</h2>
            </div>
            <div class="card-body">
                <div class="form-group ${error != null ? 'has-error' : ''}">
                    <span>${message}</span>
                    <input name="username" id="username" type="text" class="form-control" placeholder="Username"
                           autofocus="true"/>
                    <br/>
                    <input name="password" id="password" type="password" class="form-control" placeholder="Password"/>
                    <span>${error}</span>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <br/>
                    <button class="btn btn-lg btn-info btn-block" type="submit">Zaloguj się</button>
                    <br/>
                    <h4 class="text-center"><a href="/registration" class="text-info">Utwórz konto</a></h4>
                    <br/>
                    <h4 class="text-center"><a href="/pu1" class="text-info">Zgłoś Pracę</a></h4>
                </div>
            </div>
        </div>
    </form>
    <%--<script>--%>
        <%--$(document).ready(function () {--%>

            <%--$('#login').click(function () {--%>
                <%--$.ajax({--%>
                    <%--type: "POST",--%>
                    <%--url: '/login',--%>
                    <%--contentType: "application/json; charset=utf-8",--%>
                    <%--data: JSON.stringify({--%>
                        <%--name: $("#username").val(),--%>
                        <%--password: $("#password").val()--%>
                    <%--}),--%>
                    <%--dataType: 'json',--%>
                    <%--success: function(data){--%>
                        <%--this.log("device control succeeded");--%>
                    <%--},--%>
                    <%--error: function(){--%>
                        <%--this.log("Device control failed");--%>
                    <%--},--%>
                <%--});--%>
            <%--});--%>
        <%--});--%>

    <%--</script>--%>

    <div class="btn-group btn-group-justified">
        <a href="/pu1" class="btn btn-info">PU1</a>
        <a href="/pu2" class="btn btn-info">PU2</a>
        <a href="/pu3" class="btn btn-info">PU3</a>
    </div>
</div>
</body>
</html>