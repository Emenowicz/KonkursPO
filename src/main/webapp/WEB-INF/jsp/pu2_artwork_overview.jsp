<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12"><h1 class="display-1 text-info">Przegląd prac</h1></div>
        </div>
    </div>
</div>
<div class="py-0">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="btn-group py-3">
                    <button class="btn btn-info dropdown-toggle" data-toggle="dropdown"> Wszystkie</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Wszystkie</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">bez nagrdód</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">z nagrodą</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">zakwalifikowane</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">nie zakwalifikowane</a></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="py-0">
    <div class="container">
        <div class="row">
            <div class="col-md-12" style="">
                <table class="table" style="">
                    <thead>
                    <tr>
                        <th>Id<br></th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Kategoria</th>
                        <th>Praca</th>
                        <th>Czy zakwalifikowano<br></th>
                        <th>Punkty<br></th>
                        <th>Nagrody<br></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>Digital Graphics</td>
                        <td><a class="btn btn-info" href="http://foto.favore.pl/2013/9/24/13/432536_1380020924528_o.jpg">Zobacz pracę</a></td>
                        <td>Tak</td>
                        <td><a class="btn btn-info btn-block" href="/rate_artwork">Oceń</a></td>
                        <td>Brak</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>Urban Art</td>
                        <td><a class="btn btn-info" href="http://foto.favore.pl/2013/9/24/13/432536_1380020924528_o.jpg">Zobacz pracę</a></td>
                        <td>Nie</td>
                        <td class="text-center">Nie zakwalifikowano</td>
                        <td>Brak</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Larry</td>
                        <td>the Bird</td>
                        <td>Performance</td>
                        <td><a class="btn btn-info" href="http://foto.favore.pl/2013/9/24/13/432536_1380020924528_o.jpg">Zobacz pracę</a></td>
                        <td>Tak</td>
                        <td><a class="btn btn-info btn-block" href="/show_review">Zobacz ocenę</a></td>
                        <td><a class="btn btn-info btn-block" href="/assign_prize">Przyznaj<br></a></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>

