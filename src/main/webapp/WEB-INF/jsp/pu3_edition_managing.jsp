<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <form:form method="post" action="saveEdition" modelAttribute="edition">
        <div class="card">
            <div class="card-header">
                <h5 class="card-title text-info">EDYCJE</h5>
                <h6 class="card-subtitle">
                    <label for="edition_choice">Wybierz edycję</label>
                    <select class="form-control" id="edition_choice">
                        <option value="new">Nowa edycja</option>
                        <c:if test="${editions.size()>0}">
                            <c:forEach items="${editions}" var="edition">
                                <option value="${edition.number}"><c:out value="${edition.number}"></c:out></option>
                            </c:forEach>
                        </c:if>

                    </select>
                </h6>
            </div>
            <div class="card-body">

                <div class="form-group">
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Numer edycji</label>
                        <div class="col-lg-8">
                            <form:input path="number" type="number" name="number" id="number" class="form-control"
                                        placeholder=""/>
                        </div>
                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Data rozpoczęcia edycji<span
                                class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <div class="input-group"> <!-- Date input -->
                                <form:input path="startDate" class="form-control" id="start_date" name="start_date"
                                            placeholder="MM/DD/YYY"
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
                        <label class="control-label col-lg-2">Data zakończenia edycji<span
                                class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <div class="input-group"> <!-- Date input -->
                                <form:input path="endDate" class="form-control" id="end_date" name="end_date"
                                            placeholder="MM/DD/YYY"
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
                        <label class="control-label col-lg-2">Data zakończenia zgłaszania prac<span
                                class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <div class="input-group"> <!-- Date input -->
                                <form:input path="signingArtworksEndDate" class="form-control" id="signing_date"
                                            name="signing_date"
                                            placeholder="MM/DD/YYY"
                                            type="text"/>
                            </div>
                        </div>
                        <script>
                            $('#signing_date').datepicker({
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
                                <form:input path="firstStepEndDate" class="form-control" id="step1Enddate"
                                            name="step1End_date"
                                            placeholder="MM/DD/YYY"
                                            type="text"/>
                            </div>
                        </div>
                        <script>
                            $('#step1Enddate').datepicker({
                                uiLibrary: 'bootstrap4',
                                iconsLibrary: 'fontawesome'
                            });
                        </script>
                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Data wystawy prac<span
                                class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <div class="input-group"> <!-- Date input -->
                                <form:input path="exhibitionDate" class="form-control" id="exhibitionDate"
                                            name="exhibitionDate"
                                            placeholder="MM/DD/YYY"
                                            type="text"/>
                            </div>
                        </div>
                        <script>
                            $('#exhibitionDate').datepicker({
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
                                    <h5 class="card-title">Kategorie</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-10">
                                        <div class="card-body">
                                            <div class="list-group">
                                                <c:if test="${categories.size()>0}">
                                                    <c:forEach items="${categories}" var="category">
                                                        <a href="#categoriesModal"
                                                           class="list-group-item list-group-item-action flex-column align-items-start"
                                                           data-toggle="modal" data-id="${category.id}">
                                                            <div class="d-flex w-100 justify-content-between">
                                                                <h5 class="mb-1">${category.name}</h5>
                                                            </div>
                                                            <p class="mb-1">${category.description}</p>
                                                        </a>
                                                    </c:forEach>
                                                </c:if>
                                                <a href="#categoriesModal"
                                                   class="list-group-item list-group-item-action flex-column align-items-start"
                                                   data-toggle="modal">
                                                    <h4 class="text-center text-muted">DODAJ NOWĄ KATEGORIE</h4>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                                                <a href="#prizesModal"
                                                   class="list-group-item list-group-item-action flex-column align-items-start"
                                                   data-toggle="modal">
                                                    <div class="d-flex w-100 justify-content-between">
                                                        <h5 class="mb-1">Nagroda 2</h5>
                                                        <small class="text-muted">Kategoria 2</small>
                                                    </div>
                                                    <p class="mb-1">Donec id elit non mi porta gravida at eget
                                                        metus.
                                                        Maecenas
                                                        sed
                                                        diam eget
                                                        risus varius blandit.</p>
                                                    <small class="text-muted">Donec id elit non mi porta.</small>
                                                </a>
                                                <a href="#prizesModal"
                                                   class="list-group-item list-group-item-action flex-column align-items-start"
                                                   data-toggle="modal">
                                                    <div class="d-flex w-100 justify-content-between">
                                                        <h5 class="mb-1">Nagroda 3</h5>
                                                        <small class="text-muted">Kategoria 3</small>
                                                    </div>
                                                    <p class="mb-1">Donec id elit non mi porta gravida at eget
                                                        metus.
                                                        Maecenas
                                                        sed
                                                        diam eget
                                                        risus varius blandit.</p>
                                                    <small class="text-muted">Donec id elit non mi porta.</small>
                                                </a>
                                                <a href="#prizesModal"
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
        </div>
        <div class="panel panel-flat col-lg-12">
            <div class="panel-body">
                <div class="form-group">
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <div class="text-center col-lg-10" style="margin-left:0;margin-right:0px;padding-right:0;">
                            <div class="form-group"></div>
                            <a href="/login" class="btn btn-info">Wyloguj</a>
                            <button type="submit" class="btn btn-info">Zapisz</button>
                        </div>
                        <div class="col-lg-1"></div>
                    </div>
                </div>
            </div>
        </div>
    </form:form>
</div>

<!-- Modal -->
<div class="modal fade" id="categoriesModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">EDYCJA KATEGORII</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form:form method="post" action="saveCategory" modelAttribute="category">
                    <div class="form-group">
                        <div class="row" style="padding-top: 20px;">
                            <div class="col-lg-1"></div>
                            <label class="control-label col-lg-2">Nazwa Kategorii<span
                                    class="text-danger">*</span></label>
                            <div class="col-lg-8">
                                <form:input path="name" type="text" name="name" id="name" class="form-control"
                                            required="required"
                                            placeholder="" data-msg-required="To pole jest wymagane"
                                            aria-required="true"></form:input>
                            </div>
                        </div>
                        <div class="row" style="padding-top: 20px;">
                            <div class="col-lg-1"></div>
                            <label class="control-label col-lg-2">Opis</label>
                            <div class="col-lg-8">
                                <form:textarea path="description" name="category_description" id="category_description"
                                               rows="6"
                                               class="form-control"
                                               placeholder=""></form:textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Zamknij</button>
                        <button type="submit" class="btn btn-info">Zapisz kategorię</button>
                        <button type="button" class="btn btn-warning">Usuń kategorię</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="prizesModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">EDYCJA NAGRODY</h5>
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
                            <input type="text" name="prize_title" id="prize_title" class="form-control"
                                   required="required"
                                   placeholder="" data-msg-required="This field is required" aria-required="true">
                        </div>
                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Zawartość nagrody<span
                                class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <input type="text" name="value" id="value" class="form-control" required="required"
                                   placeholder="" data-msg-required="This field is required" aria-required="true">
                        </div>
                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Kategoria<span class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <select class="form-control" id="category"
                                    name="category" required="required">
                                <option value="0" selected hidden>Wybierz kategorię...</option>
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
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Opis</label>
                        <div class="col-lg-8">
                            <textarea name="description" id="description" rows="6" class="form-control"
                                      placeholder=""></textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Zamknij</button>
                    <button type="button" class="btn btn-info">Zapisz nagrodę</button>
                    <button type="button" class="btn btn-warning">Usuń nagrodę</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>