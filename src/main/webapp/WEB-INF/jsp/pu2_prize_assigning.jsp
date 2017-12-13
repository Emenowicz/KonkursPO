<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title></title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>

    <%--DATEPICKER--%>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
          integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <script src="http://code.gijgo.com/1.6.1/js/gijgo.js" type="text/javascript"></script>
    <link href="http://code.gijgo.com/1.6.1/css/gijgo.css" rel="stylesheet" type="text/css"/>

    <title>Submit for competition</title>
</head>
<body>
<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12"><h1 class="display-1 text-info">Przyznaj nagrodę</h1></div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h4 class="display-4">Kategoria: Painting</h4>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-12"><h1 class="">6 - John Smith</h1></div>
    </div>
</div>
</div>
<div class="py-5">

    <div class="container">
        <div class="row">
            <div class="col-md-12"><img class="img-fluid thumbnail d-block mx-auto"
                                        src="https://img-ovh-cloud.zszywka.pl/0/0170/6690-quotplonaca-zyrafaquot--salvador-da.jpg"
                                        width="500"
                                        height="500"></div>
        </div>
    </div>
</div>
</div>
</div>

<form>
    <div class="form-group">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <label for="prize" class="control-label">Nagroda:</label>
                    <select id="prize" class="form-control">
                        <option>500 Euro and a dedicated digital catalogue</option>
                        <option>7.000 Euro</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
</form>
<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12"><a class="btn btn-info w-100" href="/pu2">Przyznaj</a></div>
        </div>
    </div>
</div>
</body>
</html>