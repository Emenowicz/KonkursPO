<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <title>Zarządzaj edycją</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" href="/bootstrap/css/bootstrap.css">
    <script src="/jquery/jquery-3.2.1.min.js"></script>
    <script src="/bootstrap/js/bootstrap.bundle.js"></script>

    <%--DATEPICKER--%>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
          integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <script src="http://code.gijgo.com/1.6.1/js/gijgo.js" type="text/javascript"></script>
    <link href="http://code.gijgo.com/1.6.1/css/gijgo.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<div class="jumbotron-fluid">
    <div class="container col-lg-10">
        <h1 class="display-3 text-info">ArteART Prize Laguna 17.18</h1>
    </div>
</div>
<div class="container">
    <div class="card">
        <form method="get">
            <div class="card-header">
                <h5 class="card-title text-info">EDYCJE</h5>
                <h6 class="card-subtitle">
                    <label for="edition_choice">Wybierz edycję</label>
                    <select class="form-control" id="edition_choice">
                        <option value="0">Aktualna edycja</option>
                        <option value="1">Nowa edycja</option>
                        <option value="2">Jakaś inna edycja</option>
                    </select>
                </h6>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Numer edycji</label>
                        <div class="col-lg-8">
                            <input type="text" name="pseudonim" id="pseudonim" class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Data rozpoczęcia edycji<span class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <div class="input-group"> <!-- Date input -->
                                <input class="form-control" id="start_date" name="start_date" placeholder="MM/DD/YYY"
                                       type="text"/>
                            </div>
                        </div>
                        <script>
                            $('#start_date').datepicker({
                                uiLibrary: 'bootstrap4',
                                iconsLibrary: 'fontawesome'
                            });
                        </script>
                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Data zakończenia edycji<span class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <div class="input-group"> <!-- Date input -->
                                <input class="form-control" id="end_date" name="end_date" placeholder="MM/DD/YYY"
                                       type="text"/>
                            </div>
                        </div>
                        <script>
                            $('#end_date').datepicker({
                                uiLibrary: 'bootstrap4',
                                iconsLibrary: 'fontawesome'
                            });
                        </script>
                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Data zakończenia 1 etapu<span
                                class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <div class="input-group"> <!-- Date input -->
                                <input class="form-control" id="etap1_date" name="etap1_date"
                                       placeholder="MM/DD/YYY"
                                       type="text"/>
                            </div>
                        </div>
                        <script>
                            $('#etap1_date').datepicker({
                                uiLibrary: 'bootstrap4',
                                iconsLibrary: 'fontawesome'
                            });
                        </script>
                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Data zakończenia 2 etapu<span
                                class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <div class="input-group"> <!-- Date input -->
                                <input class="form-control" id="etap2_date" name="etap2_date"
                                       placeholder="MM/DD/YYY"
                                       type="text"/>
                            </div>
                        </div>
                        <script>
                            $('#etap2_date').datepicker({
                                uiLibrary: 'bootstrap4',
                                iconsLibrary: 'fontawesome'
                            });
                        </script>
                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Data zakończenia 3 etapu<span
                                class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <div class="input-group"> <!-- Date input -->
                                <input class="form-control" id="etap3_date" name="etap3_date"
                                       placeholder="MM/DD/YYY"
                                       type="text"/>
                            </div>
                        </div>
                        <script>
                            $('#etap3_date').datepicker({
                                uiLibrary: 'bootstrap4',
                                iconsLibrary: 'fontawesome'
                            });
                        </script>
                    </div>
                    <div class="row" style="padding-top: 20px">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                            <div class="card">
                                <div class="card-header">
                                    <h5 class="card-title">Nagrody</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-10">
                                        <div class="card-body">
                                            <div class="list-group">
                                                <a href="#myModal"
                                                   class="list-group-item list-group-item-action flex-column align-items-start"
                                                   data-toggle="modal">
                                                    <div class="d-flex w-100 justify-content-between">
                                                        <h5 class="mb-1">Nagroda 1</h5>
                                                        <small>Kategoria 1</small>
                                                    </div>
                                                    <p class="mb-1">Donec id elit non mi porta gravida at eget metus.
                                                        Maecenas
                                                        sed
                                                        diam eget
                                                        risus varius blandit.</p>
                                                    <small>Donec id elit non mi porta.</small>
                                                </a>
                                                <a href="#myModal"
                                                   class="list-group-item list-group-item-action flex-column align-items-start"
                                                   data-toggle="modal">
                                                    <div class="d-flex w-100 justify-content-between">
                                                        <h5 class="mb-1">Nagroda 2</h5>
                                                        <small class="text-muted">Kategoria 2</small>
                                                    </div>
                                                    <p class="mb-1">Donec id elit non mi porta gravida at eget metus.
                                                        Maecenas
                                                        sed
                                                        diam eget
                                                        risus varius blandit.</p>
                                                    <small class="text-muted">Donec id elit non mi porta.</small>
                                                </a>
                                                <a href="#myModal"
                                                   class="list-group-item list-group-item-action flex-column align-items-start"
                                                   data-toggle="modal">
                                                    <div class="d-flex w-100 justify-content-between">
                                                        <h5 class="mb-1">Nagroda 3</h5>
                                                        <small class="text-muted">Kategoria 3</small>
                                                    </div>
                                                    <p class="mb-1">Donec id elit non mi porta gravida at eget metus.
                                                        Maecenas
                                                        sed
                                                        diam eget
                                                        risus varius blandit.</p>
                                                    <small class="text-muted">Donec id elit non mi porta.</small>
                                                </a>
                                                <a href="#myModal"
                                                   class="list-group-item list-group-item-action flex-column align-items-start"
                                                   data-toggle="modal">
                                                    <h4 class="text-center text-muted">DODAJ NOWĄ NAGRODĘ</h4>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <div class="panel panel-flat col-lg-12">
        <div class="panel-body">
            <div class="form-group">
                <div class="row" style="padding-top: 20px;">
                    <div class="col-lg-1"></div>
                    <div class="text-center col-lg-10" style="margin-left:0;margin-right:0px;padding-right:0;">
                        <div class="form-group"></div>
                        <a href="/login" class="btn btn-info">Powrót do strony głównej</a>
                        <a href="#" class="btn btn-info">Zapisz</a>
                    </div>
                    <div class="col-lg-1"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">EDYCJA NAGRODY</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Tytuł nagrody<span class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <input type="text" name="title" id="title" class="form-control" required="required"
                                   placeholder="" data-msg-required="This field is required" aria-required="true">
                        </div>
                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Kategoria<span class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <input type="text" name="category" id="category" class="form-control" required="required"
                                   placeholder="" data-msg-required="This field is required" aria-required="true">
                        </div>
                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Opis</label>
                        <div class="col-lg-8">
                            <input type="text" name="description" id="description" class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Komentarz</label>
                        <div class="col-lg-8">
                            <input type="text" name="comment" id="comment" class="form-control" placeholder="">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Zamknij</button>
                    <button type="button" class="btn btn-primary">Zapisz nagrodę</button>
                    <button type="button" class="btn btn-primary">Usuń nagrodę</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>