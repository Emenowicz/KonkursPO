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
    <script src="https://cdn.jsdelivr.net/gh/atatanasov/gijgo@1.7.3/dist/combined/js/gijgo.min.js"
            type="text/javascript"></script>
    <link href="https://cdn.jsdelivr.net/gh/atatanasov/gijgo@1.7.3/dist/combined/css/gijgo.min.css" rel="stylesheet"
          type="text/css"/>

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
            <h5 class="card-title text-info">EDYCJE</h5>
            <h6 class="card-subtitle">
                <label for="edition_choice">Wybierz edycję</label>
                <form:form action="pu3" method="get">
                    <select class="form-control" id="edition_choice" name="editionId" onchange="submit()">
                        <option value="0">Nowa edycja</option>
                        <c:if test="${editions.size()>0}">
                            <c:forEach items="${editions}" var="edition">
                                <option value="${edition.number}"><c:out value="${edition.number}"></c:out></option>
                            </c:forEach>
                        </c:if>
                    </select>
                    <script>
                        $(document).ready(function () {

                            $('#edition_choice option[value=${selectedEdition.number}]').prop("selected", true);

                        });


                        function submit() {
                            $(this).submit();
                        }
                    </script>
                </form:form>
            </h6>
        </div>

        <form:form method="post" action="saveEdition" id="saveEditionForm" modelAttribute="edition">

            <div class="card-body">
                <c:if test="${not empty error}">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <strong>Błąd</strong> ${error}
                    </div>
                </c:if>
                <c:if test="${not empty success}">
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <strong>Sukces!</strong> ${success}
                    </div>
                </c:if>
                <div class="form-group">
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Numer edycji</label>
                        <div class="col-lg-8">
                            <c:choose>
                                <c:when test="${selectedEdition.number>0}">
                                    <c:set var="editionNumber" value="${selectedEdition.number}"/>
                                </c:when>
                                <c:otherwise>
                                    <c:set var="editionNumber" value="${maxNumber+1}"/>
                                </c:otherwise>
                            </c:choose>

                            <form:input path="number" type="number" name="number" id="number"
                                        class="form-control"
                                        value="${editionNumber}"
                                        placeholder="" readonly="true"/>
                        </div>
                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Data rozpoczęcia edycji<span
                                class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <div class="input-group"> <!-- Date input -->
                                <form:input path="startDate" class="form-control" id="start_date" name="start_date"
                                            placeholder="YYYY-MM-DD"
                                            value="${selectedEdition.startDate}"
                                            type="text" required="true" readonly="true"/>
                            </div>
                        </div>
                        <script>
                            $('#start_date').datepicker({
                                uiLibrary: 'bootstrap4',
                                iconsLibrary: 'fontawesome',
                                format: 'yyyy-mm-dd'
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
                                            placeholder="YYYY-MM-DD"
                                            value="${selectedEdition.signingArtworksEndDate}"
                                            type="text" required="true" readonly="true"/>
                            </div>
                        </div>
                        <script>
                            $('#signing_date').datepicker({
                                uiLibrary: 'bootstrap4',
                                iconsLibrary: 'fontawesome',
                                format: 'yyyy-mm-dd'
                            });
                        </script>
                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Data zakończenia pierwszego etapu<span
                                class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <div class="input-group"> <!-- Date input -->
                                <form:input path="firstStepEndDate" class="form-control" id="step1Enddate"
                                            name="step1End_date"
                                            placeholder="YYYY-MM-DD"
                                            value="${selectedEdition.firstStepEndDate}"
                                            type="text" required="true" readonly="true"/>
                            </div>
                        </div>
                        <script>
                            $('#step1Enddate').datepicker({
                                uiLibrary: 'bootstrap4',
                                iconsLibrary: 'fontawesome',
                                format: 'yyyy-mm-dd'
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
                                            placeholder="YYYY-MM-DD"
                                            value="${selectedEdition.exhibitionDate}"
                                            type="text" required="true" readonly="true"/>
                            </div>
                        </div>
                        <script>
                            $('#exhibitionDate').datepicker({
                                uiLibrary: 'bootstrap4',
                                iconsLibrary: 'fontawesome',
                                format: 'yyyy-mm-dd'
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
                                            placeholder="YYYY-MM-DD"
                                            value="${selectedEdition.endDate}"
                                            type="text" required="true" readonly="true"/>
                            </div>
                        </div>
                        <script>
                            $('#end_date').datepicker({
                                uiLibrary: 'bootstrap4',
                                iconsLibrary: 'fontawesome',
                                format: 'yyyy-mm-dd'
                            });
                        </script>
                    </div>
                    <c:if test="${selectedEdition.number>0}">
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
                                                               data-toggle="modal" data-id="${category.id}"
                                                               data-name="${category.name}"
                                                               data-description="${category.description}">
                                                                <div class="d-flex w-100 justify-content-between">
                                                                    <h5 class="mb-1">${category.name}</h5>
                                                                </div>
                                                                <p class="mb-1">${category.description}</p>
                                                            </a>
                                                        </c:forEach>
                                                    </c:if>
                                                    <a href="#newCategoryModal"
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
                                                    <c:forEach items="${prizes}" var="prize">
                                                        <a href="#prizesModal"
                                                           class="list-group-item list-group-item-action flex-column align-items-start"
                                                           data-toggle="modal" data-id="${prize.id}"
                                                           data-title="${prize.title}"
                                                           data-rank="${prize.rank.toString()}"
                                                           data-category="${prize.category.id}"
                                                           data-description="${prize.description}"
                                                           data-value="${prize.value}">
                                                            <div class="d-flex w-100 justify-content-between">
                                                                <h5 class="mb-1">${prize.rank.getValue()}</h5>
                                                                <small class="text-muted">${prize.category.name}</small>
                                                            </div>
                                                            <p class="mb-1">${prize.description}</p>
                                                            <small class="text-muted">${prize.value}
                                                            </small>
                                                        </a>
                                                    </c:forEach>
                                                    <a href="#newPrizeModal"
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
                    </c:if>
                </div>

            </div>
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
        </form:form>
    </div>
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
                <script>
                    $('#categoriesModal').on('show.bs.modal', function (e) {
                        var categoryId = e.relatedTarget.dataset.id;
                        var categoryName = e.relatedTarget.dataset.name;
                        var categoryDescription = e.relatedTarget.dataset.description;
                        $('#categoryId').val(categoryId);
                        $('#categoryName').val(categoryName);
                        $('#categoryDescription').val(categoryDescription);
                        $('#categoryIdRemove').val(categoryId);
                    })
                </script>
                <form:form method="post" action="saveCategory" modelAttribute="category">
                    <div class="form-group">

                        <form:hidden path="id" id="categoryId"/>

                        <div class="row" style="padding-top: 20px;">
                            <div class="col-lg-1"></div>
                            <label class="control-label col-lg-2">Nazwa Kategorii<span
                                    class="text-danger">*</span></label>
                            <div class="col-lg-8">
                                <form:input path="name" type="text" name="name" id="categoryName" class="form-control"
                                            required="required"
                                            placeholder="" data-msg-required="To pole jest wymagane"
                                            aria-required="true"></form:input>
                            </div>
                        </div>
                        <div class="row" style="padding-top: 20px;">
                            <div class="col-lg-1"></div>
                            <label class="control-label col-lg-2">Opis</label>
                            <div class="col-lg-8">
                                <form:textarea path="description" name="category_description" id="categoryDescription"
                                               rows="6"
                                               class="form-control"
                                               placeholder=""></form:textarea>
                            </div>
                        </div>
                        <form:hidden path="edition" value="${selectedEdition.number}"/>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Zamknij</button>
                        <button type="submit" class="btn btn-info">Zapisz kategorię</button>
                        <button type="button" id="removeCategoryButton" class="btn btn-warning">Usuń kategorię</button>
                    </div>
                </form:form>
                <form method="post" action="removeCategory" hidden id="removeCategoryForm">
                    <input hidden id="categoryIdRemove" name="categoryIdRemove"/>
                </form>
                <script>
                    $('#removeCategoryButton').click(function () {
                        $('#removeCategoryForm').submit();
                    })
                </script>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="newCategoryModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">DODAJ KATEGORIĘ</h5>
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
                                <form:input path="name" type="text" name="name" id="modalName" class="form-control"
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
                        <form:hidden path="edition" value="${selectedEdition.number}"/>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Zamknij</button>
                        <button type="submit" class="btn btn-info">Zapisz kategorię</button>
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
                <script>
                    $('#prizesModal').on('show.bs.modal', function (e) {
                        var prizeId = e.relatedTarget.dataset.id;
                        var prizeTitle = e.relatedTarget.dataset.title;
                        var prizeRank = e.relatedTarget.dataset.rank;
                        var value = e.relatedTarget.dataset.value;
                        var category = e.relatedTarget.dataset.category;
                        var description = e.relatedTarget.dataset.description;
                        console.log(prizeRank);
                        $('#prizeId').val(prizeId);
                        $('#prizeTitle').val(prizeTitle);
                        $('#prizeRank option[value="' + prizeRank + '"]').prop("selected", true);
                        $('#value').val(value);
                        $('#category option[value="' + category + '"]').prop("selected", true);
                        $('#description').val(description);
                        $('#prizeIdRemove').val(prizeId);
                    })

                </script>

                <form:form method="post" action="savePrize" modelAttribute="prize">
                    <div class="form-group">
                        <form:hidden path="id" id="prizeId"/>
                        <div class="row" style="padding-top: 20px;">
                            <div class="col-lg-1"></div>
                            <label class="control-label col-lg-2">Tytuł nagrody<span
                                    class="text-danger">*</span></label>
                            <div class="col-lg-8">
                                <form:input path="title" type="text" name="prize_title" id="prizeTitle"
                                            class="form-control"
                                            required="required"
                                            placeholder="" data-msg-required="This field is required"
                                            aria-required="true"/>
                            </div>
                        </div>
                        <div class="row" style="padding-top: 20px;">
                            <div class="col-lg-1"></div>
                            <label class="control-label col-lg-2">Ranga nagrody<span
                                    class="text-danger">*</span></label>
                            <div class="col-lg-8">
                                <form:select path="rank" type="text" name="prize_rank" id="prizeRank"
                                             class="form-control"
                                             required="required"
                                             placeholder="" data-msg-required="This field is required"
                                             aria-required="true">
                                    <option value="">Wybierz rangę nagrody</option>
                                    <c:forEach var="rank" items="${prizeRanks}">
                                        <option value="${rank}">${rank.getValue()}</option>
                                    </c:forEach>
                                </form:select>
                            </div>
                        </div>
                        <div class="row" style="padding-top: 20px;">
                            <div class="col-lg-1"></div>
                            <label class="control-label col-lg-2">Zawartość nagrody<span
                                    class="text-danger">*</span></label>
                            <div class="col-lg-8">
                                <form:input path="value" type="text" name="value" id="value" class="form-control"
                                            required="required"
                                            placeholder="" data-msg-required="This field is required"
                                            aria-required="true"/>
                            </div>
                        </div>
                        <div class="row" style="padding-top: 20px;">
                            <div class="col-lg-1"></div>
                            <label class="control-label col-lg-2">Kategoria<span class="text-danger">*</span></label>
                            <div class="col-lg-8">
                                <div>
                                    <form:select path="category" class="form-control" id="category"
                                                 name="category" required="required">
                                        <form:option value="">Wybierz kategorię...</form:option>
                                        <c:forEach items="${categories}" var="category">
                                            <form:option value="${category.id}">${category.name}</form:option>
                                        </c:forEach>
                                    </form:select>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="padding-top: 20px;">
                            <div class="col-lg-1"></div>
                            <label class="control-label col-lg-2">Opis</label>
                            <div class="col-lg-8">
                                <form:textarea path="description" name="description" id="description" rows="6"
                                               class="form-control"
                                               placeholder=""></form:textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Zamknij</button>
                        <form:button type="submit" class="btn btn-info">Zapisz nagrodę</form:button>
                        <button type="button" id="removePrizeButton" class="btn btn-warning">Usuń nagrodę</button>
                    </div>
                </form:form>
                <form method="post" action="removePrize" hidden id="removePrizeForm">
                    <input hidden id="prizeIdRemove" name="prizeIdRemove"/>
                </form>
                <script>
                    $('#removePrizeButton').click(function () {
                        $('#removePrizeForm').submit();
                    })
                </script>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="newPrizeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
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
                <form:form method="post" action="savePrize" modelAttribute="prize">
                    <div class="form-group">
                        <div class="row" style="padding-top: 20px;">
                            <div class="col-lg-1"></div>
                            <label class="control-label col-lg-2">Tytuł nagrody<span
                                    class="text-danger">*</span></label>
                            <div class="col-lg-8">
                                <form:input path="title" type="text" name="prize_title" id="prize_title"
                                            class="form-control"
                                            required="required"
                                            placeholder="" data-msg-required="This field is required"
                                            aria-required="true"/>
                            </div>
                        </div>
                        <div class="row" style="padding-top: 20px;">
                            <div class="col-lg-1"></div>
                            <label class="control-label col-lg-2">Ranga nagrody<span
                                    class="text-danger">*</span></label>
                            <div class="col-lg-8">
                                <form:select path="rank" type="text" name="prize_rank" id="prize_rank"
                                             class="form-control"
                                             required="required"
                                             placeholder="" data-msg-required="This field is required"
                                             aria-required="true">
                                    <form:option value="">Wybierz rangę nagrody</form:option>
                                    <c:forEach var="rank" items="${prizeRanks}">
                                        <form:option value="${rank}">${rank.getValue()}</form:option>
                                    </c:forEach>
                                </form:select>
                            </div>
                        </div>
                        <div class="row" style="padding-top: 20px;">
                            <div class="col-lg-1"></div>
                            <label class="control-label col-lg-2">Zawartość nagrody<span
                                    class="text-danger">*</span></label>
                            <div class="col-lg-8">
                                <form:input path="value" type="text" name="value" id="value" class="form-control"
                                            required="required"
                                            placeholder="" data-msg-required="This field is required"
                                            aria-required="true"/>
                            </div>
                        </div>
                        <div class="row" style="padding-top: 20px;">
                            <div class="col-lg-1"></div>
                            <label class="control-label col-lg-2">Kategoria<span class="text-danger">*</span></label>
                            <div class="col-lg-8">
                                <div>
                                    <form:select path="category" class="form-control" id="category"
                                                 name="category" required="required">
                                        <form:option value="">Wybierz kategorię...</form:option>
                                        <c:forEach items="${categories}" var="category">
                                            <form:option value="${category.id}">${category.name}</form:option>
                                        </c:forEach>
                                    </form:select>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="padding-top: 20px;">
                            <div class="col-lg-1"></div>
                            <label class="control-label col-lg-2">Opis</label>
                            <div class="col-lg-8">
                                <form:textarea path="description" name="description" id="description" rows="6"
                                               class="form-control"
                                               placeholder=""></form:textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Zamknij</button>
                        <form:button type="submit" class="btn btn-info">Zapisz nagrodę</form:button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>