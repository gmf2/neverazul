<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registro Restaurante</title>

    <!-- Enlaces a iconos para las distintas plataformas -->
    <link rel="apple-touch-icon" sizes="57x57" href="img/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="img/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="img/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="img/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="img/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="img/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="img/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="img/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="img/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="img/favicon-16x16.png">
    <link rel="manifest" href="img/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">

	<!-- Enlazo mis propios css -->
	<link rel="stylesheet" href="css/mimenu.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap-registro.min.css" >
    <link href="bootstrap-3.3.7/css/font-awesome-registro.min.css" rel="stylesheet">

	<!-- Enlazo mis propios js -->
	<script type="text/javascript" src="js/registro.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>

<body>
	<!-- Meto el header sin usuario regstrado -->
    <jsp:include page="header_nologin.jsp"/>
    
	<div class="container">
			
	    <div class="row">
	        <div class="col-md-6">
	            <form action="/registrar_restaurante" method="post" id="fileForm" role="form">
	                <fieldset>
	                    <legend class="text-center">Información válida es requerida para registrarse<span class="req"><small> required *</small></span></legend>
	                    <div class="form-group">
	                        <label for="phonenumber"><span class="req">* </span> Teléfono: </label>
	                        <input required type="text" name="phonenumber" id="phone" class="form-control phone" maxlength="28" onkeyup="validatephone(this);" placeholder="not used for marketing" />
	                    </div>
	                    <div class="form-group">
	                        <label for="firstname"><span class="req">* </span> Nombre: </label>
	                        <input class="form-control" type="text" name="firstname" id="txt" onkeyup="Validate(this)" required />
	                        <div id="errFirst"></div>
	                    </div>
	                    <div class="form-group">
	                        <label for="lastname"><span class="req">* </span> Apellidos: </label>
	                        <input class="form-control" type="text" name="lastname" id="txt" onkeyup="Validate(this)" placeholder="hyphen or single quote OK" required />
	                        <div id="errLast"></div>
	                    </div>
	                    <div class="form-group">
	                        <label for="email"><span class="req">* </span> Email: </label>
	                        <input class="form-control" required type="text" name="email" id="email" onchange="email_validate(this.value);" />
	                        <div class="status" id="status"></div>
	                    </div>
	                    <div class="form-group">
	                        <label for="username"><span class="req">* </span> Nombre de Usuario: <small>Este será tu nombre de usuario para acceder a la plataforma</small> </label>
	                        <input class="form-control" type="text" name="username" id="txt" onkeyup="Validate(this)" placeholder="minimum 6 letters" required />
	                        <div id="errLast"></div>
	                    </div>
	                    <div class="form-group">
	                        <label for="password"><span class="req">* </span> Contraseña: </label>
	                        <input required name="password" type="password" class="form-control inputpass" minlength="4" maxlength="16" id="pass1" /> </p>
	                        <label for="password"><span class="req">* </span> Confirma tu contraseña: </label>
	                        <input required name="password" type="password" class="form-control inputpass" minlength="4" maxlength="16" placeholder="Enter again to validate" id="pass2" onkeyup="checkPass(); return false;" />
	                        <span id="confirmMessage" class="confirmMessage"></span>
	                    </div>
	                    <div class="form-group">
	                        <label for="direccion"><span class="req">* </span> Dirección: </label>
	                        <input class="form-control" type="text" name="direccion" id="txt" placeholder="Direccion de tu  restaurante" required />
	                        <div id="errLast"></div>
	                    </div>
	                    <div class="form-group">
	                        <label for="logo"><span class="req">* </span> Logo: </label>
	                        <input class="form-control" type="text" name="logo" id="txt" required />
	                        <div id="errLast"></div>
	                    </div>
	                    <div class="form-group">
	                        <label for="delivery"><span class="req">* </span> Envío a Domicilio: </label>
	                        <input type="radio" name="delivery" id="delivery" value="Si" required />Sí
	                        <input type="radio" name="delivery" id="delivery" value="No" required />No
	                        <div id="errLast"></div>
	                    </div>
	                    <div class="form-group">
	                        <label for="web"><span class="req">* </span> Web: </label>
	                        <input class="form-control" type="text" name="web" id="txt" placeholder="Introduce la url de tu Web" required />
	                        <div id="errLast"></div>
	                    </div>
	                    <div class="form-group">
	                        <label for="capacidad"><span class="req">* </span> Capacidad de tu Resturante: </label>
	                        <input class="form-control" type="number" name="capacidad" id="txt" placeholder="Introduce la capacidad de tu restaurante" required />
	                        <div id="errLast"></div>
	                    </div>
	                    <div class="form-group">
	                        <?php //$date_entered = date('m/d/Y H:i:s'); ?>
	                        <input type="hidden" value="<?php //echo $date_entered; ?>" name="dateregistered">
	                        <input type="hidden" value="0" name="activate" />
	                        <hr>
	                        <input type="checkbox" required name="terms" onchange="this.setCustomValidity(validity.valueMissing ? 'Por favor indica que acepta los tÃ©rminos y condiciones' : '');" id="field_terms">
	                        <label for="terms">Acepto <a href="terms.php" title="You may read our terms and conditions by clicking on this link">los términos y condiciones</a> para Registrarme.</label><span class="req">* </span>
	                    </div>
	                    <div class="form-group">
	                        <input class="btn btn-success" type="submit" name="submit_reg" value="Register">
	                    </div>
	                    <h5>Recibirás un email para completar la validación de tu cuenta </h5>
	                    <h5>Asegúrate de mirar en la carpeta de spam. </h5>
	                </fieldset>
	            </form>
	            <!-- ends register form -->
	            <script type="text/javascript">
	            document.getElementById("field_terms").setCustomValidity("Por favor indica que aceptas los tÃ©rminos y condiciones");
	            </script>
	        </div>
	    </div>
    </div>
    
    <!-- Footer -->
        <jsp:include page="footer.jsp" />

    <script src="bootstrap-3.3.7/js/jquery-1.11.0.min.js"></script>
	<script src="bootstrap-3.3.7/js/bootstrap-registro.min.js"></script>

</body>