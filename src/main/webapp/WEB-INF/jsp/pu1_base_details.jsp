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
    <form class="form-horizontal" method="GET" action="/complete" novalidate="novalidate">
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
                            <input type="text" name="name" id="name" class="form-control" required="required"
                                   placeholder="" data-msg-required="This field is required" aria-required="true">
                        </div>
                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Nazwisko<span class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <input type="text" name="lastname" id="lastname" class="form-control" required="required"
                                   placeholder="" data-msg-required="This field is required" aria-required="true">
                        </div>
                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Pseudonim artystyczny</label>
                        <div class="col-lg-8">
                            <input type="text" name="pseudonim" id="pseudonim" class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Narodowość<span class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <select class="form-control" id="nationality" name="nationality" required="required">
                                <option selected disabled>Wybierz kraj...</option>
                                <option value="1">Afghanistan</option>
                                <option value="2">Åland Islands</option>
                                <option value="3">Albania</option>
                                <option value="4">Algeria</option>
                                <option value="5">American Samoa</option>
                                <option value="6">Andorra</option>
                                <option value="7">Angola</option>
                                <option value="8">Anguilla</option>
                                <option value="9">Antarctica</option>
                                <option value="10">Antigua and Barbuda</option>
                                <option value="11">Argentina</option>
                                <option value="12">Armenia</option>
                                <option value="13">Aruba</option>
                                <option value="14">Australia</option>
                                <option value="15">Austria</option>
                                <option value="16">Azerbaijan</option>
                                <option value="17">Bahamas</option>
                                <option value="18">Bahrain</option>
                                <option value="19">Bangladesh</option>
                                <option value="20">Barbados</option>
                                <option value="21">Belarus</option>
                                <option value="22">Belgium</option>
                                <option value="23">Belize</option>
                                <option value="24">Benin</option>
                                <option value="25">Bermuda</option>
                                <option value="26">Bhutan</option>
                                <option value="27">Bolivia (Plurinational State of)</option>
                                <option value="28">Bonaire, Sint Eustatius and Saba</option>
                                <option value="29">Bosnia and Herzegovina</option>
                                <option value="30">Botswana</option>
                                <option value="31">Bouvet Island</option>
                                <option value="32">Brazil</option>
                                <option value="33">British Indian Ocean Territory</option>
                                <option value="34">Brunei Darussalam</option>
                                <option value="35">Bulgaria</option>
                                <option value="36">Burkina Faso</option>
                                <option value="37">Burundi</option>
                                <option value="38">Cabo Verde</option>
                                <option value="39">Cambodia</option>
                                <option value="40">Cameroon</option>
                                <option value="41">Canada</option>
                                <option value="42">Cayman Islands</option>
                                <option value="43">Central African Republic</option>
                                <option value="44">Chad</option>
                                <option value="45">Chile</option>
                                <option value="46">China</option>
                                <option value="47">Christmas Island</option>
                                <option value="48">Cocos (Keeling) Islands</option>
                                <option value="49">Colombia</option>
                                <option value="50">Comoros</option>
                                <option value="51">Congo</option>
                                <option value="52">Congo (Democratic Republic of the)</option>
                                <option value="53">Cook Islands</option>
                                <option value="54">Costa Rica</option>
                                <option value="55">Côte d'Ivoire</option>
                                <option value="56">Croatia</option>
                                <option value="57">Cuba</option>
                                <option value="58">Curaçao</option>
                                <option value="59">Cyprus</option>
                                <option value="60">Czechia</option>
                                <option value="61">Denmark</option>
                                <option value="62">Djibouti</option>
                                <option value="63">Dominica</option>
                                <option value="64">Dominican Republic</option>
                                <option value="65">Ecuador</option>
                                <option value="66">Egypt</option>
                                <option value="67">El Salvador</option>
                                <option value="68">Equatorial Guinea</option>
                                <option value="69">Eritrea</option>
                                <option value="70">Estonia</option>
                                <option value="71">Ethiopia</option>
                                <option value="72">Falkland Islands (Malvinas)</option>
                                <option value="73">Faroe Islands</option>
                                <option value="74">Fiji</option>
                                <option value="75">Finland</option>
                                <option value="76">France</option>
                                <option value="77">French Guiana</option>
                                <option value="78">French Polynesia</option>
                                <option value="79">French Southern Territories</option>
                                <option value="80">Gabon</option>
                                <option value="81">Gambia</option>
                                <option value="82">Georgia</option>
                                <option value="83">Germany</option>
                                <option value="84">Ghana</option>
                                <option value="85">Gibraltar</option>
                                <option value="86">Greece</option>
                                <option value="87">Greenland</option>
                                <option value="88">Grenada</option>
                                <option value="89">Guadeloupe</option>
                                <option value="90">Guam</option>
                                <option value="91">Guatemala</option>
                                <option value="92">Guernsey</option>
                                <option value="93">Guinea</option>
                                <option value="94">Guinea-Bissau</option>
                                <option value="95">Guyana</option>
                                <option value="96">Haiti</option>
                                <option value="97">Heard Island and McDonald Islands</option>
                                <option value="98">Holy See</option>
                                <option value="99">Honduras</option>
                                <option value="100">Hong Kong</option>
                                <option value="101">Hungary</option>
                                <option value="102">Iceland</option>
                                <option value="103">India</option>
                                <option value="104">Indonesia</option>
                                <option value="105">Iran (Islamic Republic of)</option>
                                <option value="106">Iraq</option>
                                <option value="107">Ireland</option>
                                <option value="108">Isle of Man</option>
                                <option value="109">Israel</option>
                                <option value="110">Italy</option>
                                <option value="111">Jamaica</option>
                                <option value="112">Japan</option>
                                <option value="113">Jersey</option>
                                <option value="114">Jordan</option>
                                <option value="115">Kazakhstan</option>
                                <option value="116">Kenya</option>
                                <option value="117">Kiribati</option>
                                <option value="118">Korea (Democratic People's Republic of)</option>
                                <option value="119">Korea (Republic of)</option>
                                <option value="120">Kuwait</option>
                                <option value="121">Kyrgyzstan</option>
                                <option value="122">Lao People's Democratic Republic</option>
                                <option value="123">Latvia</option>
                                <option value="124">Lebanon</option>
                                <option value="125">Lesotho</option>
                                <option value="126">Liberia</option>
                                <option value="127">Libya</option>
                                <option value="128">Liechtenstein</option>
                                <option value="129">Lithuania</option>
                                <option value="130">Luxembourg</option>
                                <option value="131">Macao</option>
                                <option value="132">Macedonia (the former Yugoslav Republic of)</option>
                                <option value="133">Madagascar</option>
                                <option value="134">Malawi</option>
                                <option value="135">Malaysia</option>
                                <option value="136">Maldives</option>
                                <option value="137">Mali</option>
                                <option value="138">Malta</option>
                                <option value="139">Marshall Islands</option>
                                <option value="140">Martinique</option>
                                <option value="141">Mauritania</option>
                                <option value="142">Mauritius</option>
                                <option value="143">Mayotte</option>
                                <option value="144">Mexico</option>
                                <option value="145">Micronesia (Federated States of)</option>
                                <option value="146">Moldova (Republic of)</option>
                                <option value="147">Monaco</option>
                                <option value="148">Mongolia</option>
                                <option value="149">Montenegro</option>
                                <option value="150">Montserrat</option>
                                <option value="151">Morocco</option>
                                <option value="152">Mozambique</option>
                                <option value="153">Myanmar</option>
                                <option value="154">Namibia</option>
                                <option value="155">Nauru</option>
                                <option value="156">Nepal</option>
                                <option value="157">Netherlands</option>
                                <option value="158">New Caledonia</option>
                                <option value="159">New Zealand</option>
                                <option value="160">Nicaragua</option>
                                <option value="161">Niger</option>
                                <option value="162">Nigeria</option>
                                <option value="163">Niue</option>
                                <option value="164">Norfolk Island</option>
                                <option value="165">Northern Mariana Islands</option>
                                <option value="166">Norway</option>
                                <option value="167">Oman</option>
                                <option value="168">Pakistan</option>
                                <option value="169">Palau</option>
                                <option value="170">Palestine, State of</option>
                                <option value="171">Panama</option>
                                <option value="172">Papua New Guinea</option>
                                <option value="173">Paraguay</option>
                                <option value="174">Peru</option>
                                <option value="175">Philippines</option>
                                <option value="176">Pitcairn</option>
                                <option value="177">Poland</option>
                                <option value="178">Portugal</option>
                                <option value="179">Puerto Rico</option>
                                <option value="180">Qatar</option>
                                <option value="181">Réunion</option>
                                <option value="182">Romania</option>
                                <option value="183">Russian Federation</option>
                                <option value="184">Rwanda</option>
                                <option value="185">Saint Barthélemy</option>
                                <option value="186">Saint Helena, Ascension and Tristan da Cunha</option>
                                <option value="187">Saint Kitts and Nevis</option>
                                <option value="188">Saint Lucia</option>
                                <option value="189">Saint Martin (French part)</option>
                                <option value="190">Saint Pierre and Miquelon</option>
                                <option value="191">Saint Vincent and the Grenadines</option>
                                <option value="192">Samoa</option>
                                <option value="193">San Marino</option>
                                <option value="194">Sao Tome and Principe</option>
                                <option value="195">Saudi Arabia</option>
                                <option value="196">Senegal</option>
                                <option value="197">Serbia</option>
                                <option value="198">Seychelles</option>
                                <option value="199">Sierra Leone</option>
                                <option value="200">Singapore</option>
                                <option value="201">Sint Maarten (Dutch part)</option>
                                <option value="202">Slovakia</option>
                                <option value="203">Slovenia</option>
                                <option value="204">Solomon Islands</option>
                                <option value="205">Somalia</option>
                                <option value="206">South Africa</option>
                                <option value="207">South Georgia and the South Sandwich Islands</option>
                                <option value="208">South Sudan</option>
                                <option value="209">Spain</option>
                                <option value="210">Sri Lanka</option>
                                <option value="211">Sudan</option>
                                <option value="212">Suriname</option>
                                <option value="213">Svalbard and Jan Mayen</option>
                                <option value="214">Swaziland</option>
                                <option value="215">Sweden</option>
                                <option value="216">Switzerland</option>
                                <option value="217">Syrian Arab Republic</option>
                                <option value="218">Taiwan</option>
                                <option value="219">Tajikistan</option>
                                <option value="220">Tanzania, United Republic of</option>
                                <option value="221">Thailand</option>
                                <option value="222">Timor-Leste</option>
                                <option value="223">Togo</option>
                                <option value="224">Tokelau</option>
                                <option value="225">Tonga</option>
                                <option value="226">Trinidad and Tobago</option>
                                <option value="227">Tunisia</option>
                                <option value="228">Turkey</option>
                                <option value="229">Turkmenistan</option>
                                <option value="230">Turks and Caicos Islands</option>
                                <option value="231">Tuvalu</option>
                                <option value="232">Uganda</option>
                                <option value="233">Ukraine</option>
                                <option value="234">United Arab Emirates</option>
                                <option value="235">United Kingdom of Great Britain and Northern Ireland</option>
                                <option value="237">United States Minor Outlying Islands</option>
                                <option value="236">United States of America</option>
                                <option value="238">Uruguay</option>
                                <option value="239">Uzbekistan</option>
                                <option value="240">Vanuatu</option>
                                <option value="241">Venezuela (Bolivarian Republic of)</option>
                                <option value="242">Viet Nam</option>
                                <option value="243">Virgin Islands (British)</option>
                                <option value="244">Virgin Islands (U.S.)</option>
                                <option value="245">Wallis and Futuna</option>
                                <option value="246">Western Sahara</option>
                                <option value="247">Yemen</option>
                                <option value="248">Zambia</option>
                                <option value="249">Zimbabwe</option>
                            </select>
                        </div>
                    </div>

                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Miejsce urodzenia<span
                                class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <input type="text" name="birthplace" id="birthplace" class="form-control">
                        </div>
                    </div>

                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Data urodzenia<span class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <div class="input-group "> <!-- Date input -->
                                <input class="form-control" id="datepicker" name="dateofbirth" placeholder="MM/DD/YYY"
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
                                if (x < 25) {
                                    document.getElementsByName("id_panel")[0].className = "card";
                                }
                                else {
                                    document.getElementsByName("id_panel")[0].className = "card d-none";
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
                                <input type="file" class="form-control-file" id="id_card"
                                       aria-describedby="fileHelp">
                                <small id="fileHelp" class="form-text text-muted">2 mb max</small>
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
                            <select class="form-control" id="country"
                                    name="country" required="required">
                                <option selected hidden>Wybierz kraj...</option>
                                <option value="1">Afghanistan</option>
                                <option value="2">Åland Islands</option>
                                <option value="3">Albania</option>
                                <option value="4">Algeria</option>
                                <option value="5">American Samoa</option>
                                <option value="6">Andorra</option>
                                <option value="7">Angola</option>
                                <option value="8">Anguilla</option>
                                <option value="9">Antarctica</option>
                                <option value="10">Antigua and Barbuda</option>
                                <option value="11">Argentina</option>
                                <option value="12">Armenia</option>
                                <option value="13">Aruba</option>
                                <option value="14">Australia</option>
                                <option value="15">Austria</option>
                                <option value="16">Azerbaijan</option>
                                <option value="17">Bahamas</option>
                                <option value="18">Bahrain</option>
                                <option value="19">Bangladesh</option>
                                <option value="20">Barbados</option>
                                <option value="21">Belarus</option>
                                <option value="22">Belgium</option>
                                <option value="23">Belize</option>
                                <option value="24">Benin</option>
                                <option value="25">Bermuda</option>
                                <option value="26">Bhutan</option>
                                <option value="27">Bolivia (Plurinational State of)</option>
                                <option value="28">Bonaire, Sint Eustatius and Saba</option>
                                <option value="29">Bosnia and Herzegovina</option>
                                <option value="30">Botswana</option>
                                <option value="31">Bouvet Island</option>
                                <option value="32">Brazil</option>
                                <option value="33">British Indian Ocean Territory</option>
                                <option value="34">Brunei Darussalam</option>
                                <option value="35">Bulgaria</option>
                                <option value="36">Burkina Faso</option>
                                <option value="37">Burundi</option>
                                <option value="38">Cabo Verde</option>
                                <option value="39">Cambodia</option>
                                <option value="40">Cameroon</option>
                                <option value="41">Canada</option>
                                <option value="42">Cayman Islands</option>
                                <option value="43">Central African Republic</option>
                                <option value="44">Chad</option>
                                <option value="45">Chile</option>
                                <option value="46">China</option>
                                <option value="47">Christmas Island</option>
                                <option value="48">Cocos (Keeling) Islands</option>
                                <option value="49">Colombia</option>
                                <option value="50">Comoros</option>
                                <option value="51">Congo</option>
                                <option value="52">Congo (Democratic Republic of the)</option>
                                <option value="53">Cook Islands</option>
                                <option value="54">Costa Rica</option>
                                <option value="55">Côte d'Ivoire</option>
                                <option value="56">Croatia</option>
                                <option value="57">Cuba</option>
                                <option value="58">Curaçao</option>
                                <option value="59">Cyprus</option>
                                <option value="60">Czechia</option>
                                <option value="61">Denmark</option>
                                <option value="62">Djibouti</option>
                                <option value="63">Dominica</option>
                                <option value="64">Dominican Republic</option>
                                <option value="65">Ecuador</option>
                                <option value="66">Egypt</option>
                                <option value="67">El Salvador</option>
                                <option value="68">Equatorial Guinea</option>
                                <option value="69">Eritrea</option>
                                <option value="70">Estonia</option>
                                <option value="71">Ethiopia</option>
                                <option value="72">Falkland Islands (Malvinas)</option>
                                <option value="73">Faroe Islands</option>
                                <option value="74">Fiji</option>
                                <option value="75">Finland</option>
                                <option value="76">France</option>
                                <option value="77">French Guiana</option>
                                <option value="78">French Polynesia</option>
                                <option value="79">French Southern Territories</option>
                                <option value="80">Gabon</option>
                                <option value="81">Gambia</option>
                                <option value="82">Georgia</option>
                                <option value="83">Germany</option>
                                <option value="84">Ghana</option>
                                <option value="85">Gibraltar</option>
                                <option value="86">Greece</option>
                                <option value="87">Greenland</option>
                                <option value="88">Grenada</option>
                                <option value="89">Guadeloupe</option>
                                <option value="90">Guam</option>
                                <option value="91">Guatemala</option>
                                <option value="92">Guernsey</option>
                                <option value="93">Guinea</option>
                                <option value="94">Guinea-Bissau</option>
                                <option value="95">Guyana</option>
                                <option value="96">Haiti</option>
                                <option value="97">Heard Island and McDonald Islands</option>
                                <option value="98">Holy See</option>
                                <option value="99">Honduras</option>
                                <option value="100">Hong Kong</option>
                                <option value="101">Hungary</option>
                                <option value="102">Iceland</option>
                                <option value="103">India</option>
                                <option value="104">Indonesia</option>
                                <option value="105">Iran (Islamic Republic of)</option>
                                <option value="106">Iraq</option>
                                <option value="107">Ireland</option>
                                <option value="108">Isle of Man</option>
                                <option value="109">Israel</option>
                                <option value="110">Italy</option>
                                <option value="111">Jamaica</option>
                                <option value="112">Japan</option>
                                <option value="113">Jersey</option>
                                <option value="114">Jordan</option>
                                <option value="115">Kazakhstan</option>
                                <option value="116">Kenya</option>
                                <option value="117">Kiribati</option>
                                <option value="118">Korea (Democratic People's Republic of)</option>
                                <option value="119">Korea (Republic of)</option>
                                <option value="120">Kuwait</option>
                                <option value="121">Kyrgyzstan</option>
                                <option value="122">Lao People's Democratic Republic</option>
                                <option value="123">Latvia</option>
                                <option value="124">Lebanon</option>
                                <option value="125">Lesotho</option>
                                <option value="126">Liberia</option>
                                <option value="127">Libya</option>
                                <option value="128">Liechtenstein</option>
                                <option value="129">Lithuania</option>
                                <option value="130">Luxembourg</option>
                                <option value="131">Macao</option>
                                <option value="132">Macedonia (the former Yugoslav Republic of)</option>
                                <option value="133">Madagascar</option>
                                <option value="134">Malawi</option>
                                <option value="135">Malaysia</option>
                                <option value="136">Maldives</option>
                                <option value="137">Mali</option>
                                <option value="138">Malta</option>
                                <option value="139">Marshall Islands</option>
                                <option value="140">Martinique</option>
                                <option value="141">Mauritania</option>
                                <option value="142">Mauritius</option>
                                <option value="143">Mayotte</option>
                                <option value="144">Mexico</option>
                                <option value="145">Micronesia (Federated States of)</option>
                                <option value="146">Moldova (Republic of)</option>
                                <option value="147">Monaco</option>
                                <option value="148">Mongolia</option>
                                <option value="149">Montenegro</option>
                                <option value="150">Montserrat</option>
                                <option value="151">Morocco</option>
                                <option value="152">Mozambique</option>
                                <option value="153">Myanmar</option>
                                <option value="154">Namibia</option>
                                <option value="155">Nauru</option>
                                <option value="156">Nepal</option>
                                <option value="157">Netherlands</option>
                                <option value="158">New Caledonia</option>
                                <option value="159">New Zealand</option>
                                <option value="160">Nicaragua</option>
                                <option value="161">Niger</option>
                                <option value="162">Nigeria</option>
                                <option value="163">Niue</option>
                                <option value="164">Norfolk Island</option>
                                <option value="165">Northern Mariana Islands</option>
                                <option value="166">Norway</option>
                                <option value="167">Oman</option>
                                <option value="168">Pakistan</option>
                                <option value="169">Palau</option>
                                <option value="170">Palestine, State of</option>
                                <option value="171">Panama</option>
                                <option value="172">Papua New Guinea</option>
                                <option value="173">Paraguay</option>
                                <option value="174">Peru</option>
                                <option value="175">Philippines</option>
                                <option value="176">Pitcairn</option>
                                <option value="177">Poland</option>
                                <option value="178">Portugal</option>
                                <option value="179">Puerto Rico</option>
                                <option value="180">Qatar</option>
                                <option value="181">Réunion</option>
                                <option value="182">Romania</option>
                                <option value="183">Russian Federation</option>
                                <option value="184">Rwanda</option>
                                <option value="185">Saint Barthélemy</option>
                                <option value="186">Saint Helena, Ascension and Tristan da Cunha</option>
                                <option value="187">Saint Kitts and Nevis</option>
                                <option value="188">Saint Lucia</option>
                                <option value="189">Saint Martin (French part)</option>
                                <option value="190">Saint Pierre and Miquelon</option>
                                <option value="191">Saint Vincent and the Grenadines</option>
                                <option value="192">Samoa</option>
                                <option value="193">San Marino</option>
                                <option value="194">Sao Tome and Principe</option>
                                <option value="195">Saudi Arabia</option>
                                <option value="196">Senegal</option>
                                <option value="197">Serbia</option>
                                <option value="198">Seychelles</option>
                                <option value="199">Sierra Leone</option>
                                <option value="200">Singapore</option>
                                <option value="201">Sint Maarten (Dutch part)</option>
                                <option value="202">Slovakia</option>
                                <option value="203">Slovenia</option>
                                <option value="204">Solomon Islands</option>
                                <option value="205">Somalia</option>
                                <option value="206">South Africa</option>
                                <option value="207">South Georgia and the South Sandwich Islands</option>
                                <option value="208">South Sudan</option>
                                <option value="209">Spain</option>
                                <option value="210">Sri Lanka</option>
                                <option value="211">Sudan</option>
                                <option value="212">Suriname</option>
                                <option value="213">Svalbard and Jan Mayen</option>
                                <option value="214">Swaziland</option>
                                <option value="215">Sweden</option>
                                <option value="216">Switzerland</option>
                                <option value="217">Syrian Arab Republic</option>
                                <option value="218">Taiwan</option>
                                <option value="219">Tajikistan</option>
                                <option value="220">Tanzania, United Republic of</option>
                                <option value="221">Thailand</option>
                                <option value="222">Timor-Leste</option>
                                <option value="223">Togo</option>
                                <option value="224">Tokelau</option>
                                <option value="225">Tonga</option>
                                <option value="226">Trinidad and Tobago</option>
                                <option value="227">Tunisia</option>
                                <option value="228">Turkey</option>
                                <option value="229">Turkmenistan</option>
                                <option value="230">Turks and Caicos Islands</option>
                                <option value="231">Tuvalu</option>
                                <option value="232">Uganda</option>
                                <option value="233">Ukraine</option>
                                <option value="234">United Arab Emirates</option>
                                <option value="235">United Kingdom of Great Britain and Northern Ireland</option>
                                <option value="237">United States Minor Outlying Islands</option>
                                <option value="236">United States of America</option>
                                <option value="238">Uruguay</option>
                                <option value="239">Uzbekistan</option>
                                <option value="240">Vanuatu</option>
                                <option value="241">Venezuela (Bolivarian Republic of)</option>
                                <option value="242">Viet Nam</option>
                                <option value="243">Virgin Islands (British)</option>
                                <option value="244">Virgin Islands (U.S.)</option>
                                <option value="245">Wallis and Futuna</option>
                                <option value="246">Western Sahara</option>
                                <option value="247">Yemen</option>
                                <option value="248">Zambia</option>
                                <option value="249">Zimbabwe</option>
                            </select>
                        </div>
                    </div>

                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Miasto<span class="text-danger">*</span></label>
                        <div class="col-lg-3">
                            <input type="text" name="city" id="city" class="form-control" required="required">
                        </div>
                        <label class="control-label col-lg-2">Kod pocztowy<span
                                class="text-danger">*</span></label>
                        <div class="col-lg-3">
                            <input type="text" name="postcode" id="postcode" class="form-control" required="required">
                        </div>
                    </div>

                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Ulica<span class="text-danger">*</span></label>
                        <div class="col-lg-8">
                            <input type="text" name="street" id="street" class="form-control">
                        </div>
                    </div>

                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Nr telefonu<span class="text-danger">*</span></label>
                        <div class="col-lg-3">
                            <input type="text" name="telephone" id="telephone" class="form-control">
                        </div>
                        <label class="control-label col-lg-2 ">Nr komórkowy</label>
                        <div class="col-lg-3">
                            <input type="text" name="mobile" id="mobile" class="form-control" placeholder="">
                        </div>
                    </div>

                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">E-mail<span class="text-danger">*</span></label>
                        <div class="col-lg-3">
                            <input type="text" name="email" id="email" class="form-control">
                        </div>
                        <label class="control-label col-lg-2">Powtórz e-mail<span
                                class="text-danger">*</span></label>
                        <div class="col-lg-3">
                            <input type="text" name="email_confirmation" id="email_confirmation" class="form-control">
                        </div>
                    </div>

                    <div class="row" style="padding-top: 20px;">
                        <div class="col-lg-1"></div>
                        <label class="control-label col-lg-2">Adres strony internetowej</label>
                        <div class="col-lg-8">
                            <input type="text" name="website" id="website" class="form-control" placeholder=""
                                   data-msg-url="Wprowadź poprawny adres">
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
                            <textarea class="form-control" rows="5" type="text" name="biography"
                                      id="biography" value="" maxlength="5000"></textarea>
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
                                <input type="file" class="form-control-file" id="work_copy"
                                       aria-describedby="fileHelp">
                            </div>
                        </div>
                    </div>
                    <div class="row">
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
                                <input type="file" class="form-control-file" id="payment_confirmation"
                                       aria-describedby="fileHelp">
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
                                <input type="checkbox" class="form-check-input" name="rules" id="rules">
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
                                <input type="checkbox" class="form-check-input" name="privacy" id="privacy">
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
                            <button type="submit" class="btn btn-info">Zgłoś pracę</button>
                            <a href="/login" class="btn btn-info">Anuluj</a>
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
