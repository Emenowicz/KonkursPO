<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Rejestracja</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="/bootstrap/css/bootstrap.css">
    <script src="/jquery/jquery-3.2.1.min.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <form class="form-horizontal" method="GET" action="/payment_confirmation" novalidate="novalidate">
        <div class="panel panel-flat">
            <div class="panel-heading" style="padding-top: 20px;">
                <h1 class="panel-title text-info">ArteART Prize Laguna 17.18</h1>
            </div>
        </div>
        <div class="panel panel-flat col-lg-12" name="documentoidentita" id="documentoidentita">
            <div class="panel-heading">
                <h5 class="panel-title text-info">TWOJA PRACA</h5>
            </div>

            <div class="panel-body">
                <div class="form-group">
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-2"></div>
                        <div class="col-lg-9"><p>Prześlij kopię twojej pracy.</p></div>
                        <div class="col-lg-1"></div>
                    </div>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-1"><span class="text-info">Twoja praca</span></label>
                        <div class="col-lg-9">
                            <div class="form-group">
                                <input type="file" class="form-control-file" id="work_copy"
                                       aria-describedby="fileHelp">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-1"><span class="text-info">Kategoria</span></label>
                        <div class="col-lg-9">
                            <div class="form-group">
                                <select class="form-control" id="category" name="category" required="">
                                    <option></option>
                                    <option value="1">Malarstwo</option>
                                    <option value="2">Sztuka fotografii</option>
                                    <option value="3">Rzeźba i instalacja</option>
                                    <option value="4">Sztuka wideo i filmy krótkometrażowe</option>
                                    <option value="5">Występy</option>
                                    <option value="6">Sztuka wirtualna</option>
                                    <option value="7">Grafika cyfrowa</option>
                                    <option value="8">Sztuka środowiskowa</option>
                                    <option value="9">Urban art</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-1"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel panel-flat col-lg-12">
            <div class="panel-body">
                <div class="form-group">
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <div class="text-center col-lg-10" style="margin-left:0;margin-right:0px;padding-right:0;">
                            <div class="form-group"></div>
                            <button type="submit" class="btn btn-info">DALEJ</button>
                        </div>
                        <div class="col-lg-1"></div>
                    </div>
                </div>

            </div>
        </div>
    </form>
</div>
</body>
</html>
