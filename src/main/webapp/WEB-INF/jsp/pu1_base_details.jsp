<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Rejestracja</title>

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

    <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.0-RC3/css/bootstrap-datepicker.css">
    <title>Submit for competition</title>
</head>
<body>
<div class="jumbotron-fluid">
    <div class="container col-lg-10">
        <h1 class="display-3 text-info">ArteART Prize Laguna 17.18</h1>
    </div>
</div>
<div class="container">
    <form:form modelAttribute="userArtworkWrapper" class="form-horizontal" name="registerForm" id="registerForm" method="POST"
               action="/setUserDetails">
        <div class="card">
            <div class="card-header">
                <h5 class="card-title text-info">INFORMACJE</h5>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Imię<span class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <form:input type="hidden" name="edition" id="edition" class="form-control" required="required"
                                        path="artworkModel.edition" value="${ currentEdition.number }"/>
                            <form:input type="text" name="name" id="name" class="form-control" required="required"
                                        path="userDetailsModel.name"/>
                        </div>
                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Nazwisko<span class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <form:input type="text" name="lastname" id="lastname" class="form-control"
                                        required="required"
                                        placeholder=""
                                        path="userDetailsModel.lastName"/>
                        </div>
                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Pseudonim artystyczny</label>
                        <div class="col-lg-8">
                            <form:input type="text" name="pseudonim" id="pseudonim" class="form-control" placeholder=""
                                        path="userDetailsModel.alias"/>
                        </div>
                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Narodowość<span class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <form:select path="userDetailsModel.nationality" class="form-control" id="nationality"
                                         name="nationality"
                                         required="required">
                                <option selected disabled>Wybierz kraj...</option>
                                <option value="Afganistan">Afganistan</option>
                                <option value="Polska">Polska</option>
                                <option value="Ukraina">Ukraina</option>
                            </form:select>
                        </div>
                    </div>

                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Miejsce urodzenia<span
                                class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <form:input path="userDetailsModel.bornPlace" type="text" name="birthplace" id="birthplace"
                                        class="form-control"/>
                        </div>
                    </div>
                        <%--TURBO DORBY DATEPICKER DO ZABRANIA DO PU3--%>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Data urodzenia<span class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <div class="input-group "> <!-- Date input -->
                                <form:input path="userDetailsModel.dateOfBirth" class="form-control" id="datepicker"
                                            name="dateofbirth" placeholder="YYYY-MM-DD"
                                            type="text" onchange="check_for_below_25()"/>
                            </div>
                        </div>
                        <script>
                            $('#datepicker').datepicker({
                                uiLibrary: 'bootstrap4',
                                iconsLibrary: 'fontawesome'
                            });

                            function diff_years(dt2, dt1) {
                                console.log(dt2 + " - " + dt1);
                                var diff = (dt2.getTime() - dt1.getTime()) / 1000;
                                diff /= (60 * 60 * 24);
                                return Math.abs(Math.round(diff / 365.25));
                            }

                            function stringToDate(str) {
                                var date = str.split("/"), m = date[0], d = date[1], y = date[2], temp = [];
                                temp.push(y, m, d);
                                return (new Date(temp.join("-")));
                            }

                            function check_for_below_25() {
                                var d = new Date();
                                var dp = document.getElementById("datepicker").value;
                                dp = stringToDate(dp);
                                console.log(dp);
                                var x = diff_years(d, dp);
                                var idPanel = $('#id_panel');
                                var idCardInput = $('#idcard');
                                if (x < 25) {
                                    idCardInput.attr("required", "required");
                                    idPanel.attr("class", "card");
                                }
                                else {
                                    idCardInput.removeAttribute("required");
                                    idPanel.attr("class", "card d-none");
                                }
                            }
                        </script>
                    </div>
                </div>
            </div>
        </div>

        <div class="card d-none" name="id_panel" id="id_panel">
            <div class="card-header">
                <h5 class="card-title text-info">DOWÓD OSOBISTY</h5>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <div class="row">
                        <div class="col-lg-3"></div>
                        <div class="col-lg-8 text-muted"><p>
                            Aby mieć prawo do obniżonej opłaty zarezerwowanej dla artystów PONIŻEJ-25, musisz
                            przesłać
                            kopię dowodu osobistego. Dopuszczony format JPG, DOC lub PDF Max 2MB</p></div>
                        <div class="col-lg-1"></div>
                    </div>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2"><span class="text-info">Dowód osobisty</span><br>Doc, jpg
                            lub pdf</label>
                        <div class="col-lg-8">
                            <div class="form-group">
                                <form:input path="userDetailsModel.idCard" type="file" class="form-control-file" id="id_card"
                                            aria-describedby="fileHelp" accept=".pdf, .jpg, .doc"/>
                                <small id="fileHelp" class="form-text text-muted">2 mb max</small>
                                    <%--TODO: FILESIZE--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="card">
            <div class="card-header">
                <h5 class="card-title text-info">ADRES</h5>
            </div>

            <div class="card-body">
                <div class="form-group">
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Kraj<span class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <form:select path="userDetailsModel.country" class="form-control" id="country"
                                         name="country" required="required">
                                <option selected hidden>Wybierz kraj...</option>
                                <option value="Afganistan">Afganistan</option>
                                <option value="Polska">Polska</option>
                                <option value="Ukraina">Ukraina</option>
                            </form:select>
                        </div>
                    </div>

                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Miasto<span class="text-danger">*</span></label>
                        <div class="col-lg-3">
                            <form:input path="userDetailsModel.city" type="text" name="city" id="city" class="form-control"
                                        required="required"/>
                        </div>
                        <label class="control-label col-lg-2">Kod pocztowy<span
                                class="text-danger">*</span></label>
                        <div class="col-lg-3">
                            <form:input path="userDetailsModel.zipcode" type="text" name="postcode" format="\d{2}-\d{3}"
                                        title="Przykładowy format: 99-999" id="postcode" class="form-control"
                                        required="required"/>
                        </div>
                    </div>

                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Ulica<span class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <form:input path="userDetailsModel.street" type="text" name="street" id="street"
                                        format="\s+\w+\s+\d+(\W\d+)?" title="Nazwa ulicy i numer domu/mieszkania"
                                        class="form-control"/>
                        </div>
                    </div>

                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Nr telefonu<span class="text-danger">*</span></label>
                        <div class="col-lg-3">
                            <form:input path="userDetailsModel.phoneNumber" type="text" name="telephone" id="telephone"
                                        class="form-control"/>
                        </div>
                        <label class="control-label col-lg-2 ">Nr komórkowy</label>
                        <div class="col-lg-3">
                            <form:input path="userDetailsModel.mobileNumber" type="text" name="mobile" id="mobile"
                                        class="form-control"/>
                        </div>
                    </div>

                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">E-mail<span class="text-danger">*</span></label>
                        <div class="col-lg-3">
                            <form:input path="userDetailsModel.email" type="text" name="email" id="email"
                                        class="form-control"/>
                        </div>
                        <label class="control-label col-lg-2">Powtórz e-mail<span
                                class="text-danger">*</span></label>
                        <div class="col-lg-3">
                            <input type="text" name="email_confirmation" id="email_confirmation"
                                   class="form-control">
                        </div>
                    </div>


                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Adres strony internetowej</label>
                        <div class="col-lg-8">
                            <form:input path="userDetailsModel.webpage" type="text" name="website" id="website"
                                        class="form-control" placeholder=""
                                        pattern="(https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9]\.[^\s]{2,})"
                                        data-msg-url="Wprowadź poprawny adres"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header">
                <h5 class="card-title text-info">BIOGRAFIA</h5>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Biografia<span class="text-danger">*</span><span
                                class="text-size-small"><br><br><em>Maksymalnie 5000 znaków</em></span></label>
                        <div class="col-lg-8">
                            <form:textarea path="userDetailsModel.biography" class="form-control" rows="5" type="text"
                                           name="biography"
                                           id="biography" value="" maxlength="5000"></form:textarea>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-header">
                <h5 class="card-title text-info">TWOJA PRACA</h5>
            </div>

            <div class="card-body">
                <div class="form-group">
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-3"></div>
                        <div class="col-lg-8 text-muted"><p>Prześlij kopię twojej pracy.</p></div>
                        <div class="col-lg-1"></div>
                    </div>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Twoja praca<span class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <div class="form-group">
                                <form:input path="artworkModel.artworkCopy" type="file" class="form-control-file"
                                            id="work_copy"
                                            aria-describedby="fileHelp" accept="image/*"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Kategoria<span class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <form:select path="artworkModel.category" class="form-control" id="category"
                                         name="category" required="required">
                                <option selected disabled>Wybierz kategorię...</option>
                                <c:forEach var="category" items="${currentEdition.categories}">
                                    <form:option value="${category.id}">${category.name}</form:option>
                                </c:forEach>
                            </form:select>
                        </div>
                        <div class="col-lg-1"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header">
                <h5 class="card-title text-info">POTWIERDZENIE PŁATNOŚCI</h5>
            </div>

            <div class="card-body">
                <div class="form-group">
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-3"></div>
                        <div class="col-lg-8 text-muted"><p>Prześlij kopię potwierdzenia płatnośći</p></div>
                        <div class="col-lg-1"></div>
                    </div>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Kopia potwierdzenia płatności<span
                                class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <div class="form-group">
                                <form:input path="submissionModel.paymentApproval" type="file" class="form-control-file"
                                            id="payment_confirmation"
                                            aria-describedby="fileHelp"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-header">
                <h5 class="card-title text-info">PRYWATNOŚĆ</h5>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-10 text-left">
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" required="required" name="rules"
                                       id="rules">
                                Oświadczam że zapoznałem się i akceptuję wszystkie warunki regulaminu konkursu Arte
                                Laguna Prize Regulamin dostępny tutaj: <a href="https://www.artelagunaprize.com"
                                                                          target="_blank">www.artelagunaprize.com</a>
                            </label>
                            <div style="width:100%;clear: both; height: 5px;"></div>
                        </div>
                        <div style="width:100%;clear: both; height: 20px;"></div>
                    </div>
                    <div class="col-lg-1"></div>
                </div>

                <div class="row">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-10 text-left">
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" required="required" name="privacy"
                                       id="privacy">
                                Upoważniam Stowarzyszenie MoCa do wykorzystywania moich informacji na podstawie
                                włoskich
                                przepisów o ochronie prywatności 675/96 i D.Lgs. 196/2003, również w celu włączenia
                                do
                                baz danych prowadzonych przez Organizację.</label>
                            <div style="width:100%;clear: both; height: 5px;"></div>
                        </div>
                        <div style="width:100%;clear: both; height: 20px;"></div>
                    </div>
                    <div class="col-lg-1"></div>
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
                            <form:button type="submit" class="btn btn-info">Zgłoś pracę</form:button>
                            <a href="/login" class="btn btn-info">Anuluj</a>
                        </div>
                        <div class="col-lg-1"></div>
                    </div>
                </div>
            </div>
        </div>
    </form:form>


    <script>
        $('#registerForm').validate({
        rules: {
        'email': {
        required: true,
        email: true
        },
        'email_confirmation': {
        equalTo: '[name="email"]'
        }
        }
        })
        </script>
</div>
</body>
</html>
