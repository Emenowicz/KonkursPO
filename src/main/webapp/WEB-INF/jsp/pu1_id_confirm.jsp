<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <title>Signup</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="/bootstrap/css/bootstrap.css">
    <script src="/jquery/jquery-3.2.1.min.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <form class="form-horizontal" method="GET" action="/submit_entry" novalidate="novalidate">
        <div class="panel panel-flat">
            <div class="panel-heading" style="padding-top: 20px;">
                <h1 class="panel-title text-info">ArteART Prize Laguna 17.18</h1>
            </div>
        </div>
        <div class="panel panel-flat col-lg-12" name="documentoidentita" id="documentoidentita">
            <div class="panel-heading">
                <h5 class="panel-title text-info">ID CARD</h5>
            </div>

            <div class="panel-body">
                <div class="form-group">
                    <div class="row">
                        <div class="col-lg-2"></div>
                        <div class="col-lg-9"><p>To be entitled to the reduced fee reserved to the UNDER-25 artists, you
                            have to upload a copy of your ID card. Admitted format JPG, DOC or PDF Max 2MB</p></div>
                        <div class="col-lg-1"></div>
                    </div>
                    <!-- campo upload documento  -->
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-1"><span class="text-info">Id card</span><br>Doc, jpg or pdf
                            file</label>
                        <div class="col-lg-9">
                            <div class="form-group">
                                <input type="file" class="form-control-file" id="exampleInputFile"
                                       aria-describedby="fileHelp">
                                <small id="fileHelp" class="form-text text-muted">2 mb max</small>
                            </div>
                        </div>
                    </div>
                    <!-- fine upload documento -->


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
                            <button type="submit" class="btn btn-info">SUBMIT</button>
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

