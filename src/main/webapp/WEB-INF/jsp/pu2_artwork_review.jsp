<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <%--FONT--%>
    <link href="https://fonts.googleapis.com/css?family=Roboto&amp;subset=latin-ext" rel="stylesheet" type='text/css'>

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
            <div class="col-md-12"><h1 class="display-1 text-info">Oceń pracę</h1></div>
        </div>
    </div>
</div>
<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12"><h1 class="">6 - John Smith</h1></div>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="text-center">
        <img src="http://foto.favore.pl/2013/9/24/13/432536_1380020924528_o.jpg" class="img-thumbnail center-block"
             width="300px">
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

</body>
</html>