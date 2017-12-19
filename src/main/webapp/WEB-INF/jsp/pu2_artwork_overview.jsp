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

<div class="jumbotron-fluid">
    <div class="container col-lg-10">
        <div class="row">
            <div class="col-lg-10">
                <h1 class="display-3 text-info">ArteART Prize Laguna 17.18</h1>
            </div>
            <div class="col-lg-2">
                <div class="media" style="padding-top: 30px">
                    <img class="d-block img"
                         src="http://fuuse.net/wp-content/uploads/2016/02/avatar-placeholder.png"
                         style="max-width: 64px"/>
                    <div class="media-body">
                        <h6 class="mt-0 ml-0">Imię Nazwisko</h6>
                        Kategoria
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="card">
        <div class="card-header">
            <h4 class="card-title">PRZEGLĄD PRAC</h4>
            <h6 class="card-subtitle">
                <label for="list_filter">Filtruj...</label>
                <select class="form-control" id="list_filter">
                    <option value="0">Wszystkie</option>
                    <option value="1">Bez nagród</option>
                    <option value="2">Z przyznaną nagrodą</option>
                    <option value="3">Zakwalifikowane</option>
                    <option value="4">Nie zakwalifikowane</option>
                </select>
            </h6>
        </div>
        <div class="card-body">
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
                                    <td><a class="btn btn-info"
                                           href="#photo_modal" data-toggle="modal">Zobacz
                                        pracę</a></td>
                                    <td>Tak</td>
                                    <td><a class="btn btn-info btn-block" href="#rate_modal"
                                           data-toggle="modal">Oceń</a></td>
                                    <td>Brak</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Jacob</td>
                                    <td>Thornton</td>
                                    <td>Urban Art</td>
                                    <td><a class="btn btn-info"
                                           href="#photo_modal" data-toggle="modal">Zobacz
                                        pracę</a></td>
                                    <td>Nie</td>
                                    <td class="text-center">Nie zakwalifikowano</td>
                                    <td>Brak</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Larry</td>
                                    <td>the Bird</td>
                                    <td>Performance</td>
                                    <td><a class="btn btn-info"
                                           href="#photo_modal" data-toggle="modal">Zobacz
                                        pracę</a></td>
                                    <td>Tak</td>
                                    <td><a class="btn btn-info btn-block" href="#rating_modal" data-toggle="modal">Zobacz
                                        ocenę</a></td>
                                    <td><a class="btn btn-info btn-block" href="#prizes_modal" data-toggle="modal">Przyznaj<br></a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a href="/login" class="btn btn-info">Wyloguj</a>
</div>
<%--PHOTO MODAL--%>
<div class="modal fade" id="photo_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Zdjęcie pracy</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="container">
                    <img class="img-fluid thumbnail d-block mx-auto"
                         src="http://foto.favore.pl/2013/9/24/13/432536_1380020924528_o.jpg"/>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<%--RATE WORK MODAL--%>
<div class="modal fade" id="rate_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Oceń pracę</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12"><h1 class="">6 - John Smith</h1></div>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="text-center">
                        <img src="http://foto.favore.pl/2013/9/24/13/432536_1380020924528_o.jpg"
                             class="img-thumbnail center-block">
                    </div>
                    <form>
                        <div class="form-group">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <label for="rating" class="control-label">Ocena:</label>
                                        <select id="rating" class="form-control">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                            <option>6</option>
                                            <option>7</option>
                                            <option>8</option>
                                            <option>9</option>
                                            <option>10</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <label for="comment">Komentarz:</label>
                                        <textarea id="comment" type="text" class="form-control" rows="5"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <button class="btn btn-info btn-block">OCEŃ</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<%--RATING MODAL--%>
<div class="modal fade" id="rating_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Oceń pracę</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <div class="row">
                    <div class="col-md-12"><h1 class="">6 - John Smith</h1></div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12"><img class="img-fluid d-block mx-auto"
                                                    src="https://beks.pl/wp-content/uploads/2015/05/beks_str_glowna_obraz_3.jpg">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12"><h6 class="">Ocena: 7</h6></div>
                </div>
                <div class="row">
                    <div class="col-md-12"><h6 class="">Komentarz:</h6></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<%--PRIZE ASSIGNING--%>
<div class="modal fade" id="prizes_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Przyznaj nagrodę</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
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

                <div class="container">
                    <div class="row">
                        <div class="col-md-12"><img class="img-fluid thumbnail d-block mx-auto"
                                                    src="https://img-ovh-cloud.zszywka.pl/0/0170/6690-quotplonaca-zyrafaquot--salvador-da.jpg">
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
                <div class="container">
                    <div class="row">
                        <div class="col-md-12"><a class="btn btn-info w-100" href="/pu2">Przyznaj</a></div>
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>


</body>
</html>

