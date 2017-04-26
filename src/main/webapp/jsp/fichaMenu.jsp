<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

  	<!-- Meto el header sin usuario regstrado -->
   	<jsp:include page="header_nologin.jsp"/>

	<div class="clearfix">

	</div>

   	<!-- Cuerpo de la ficha del menu -->
	<div class="container-fluid">
		<div class="row" style="border-color: #000; border-width: 2px; border-top: 20px">
			<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9" style="border-color: #000; border-width: 2px;">
				<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<img src="img/perfil.png" class="img-responsive" alt="Image" width=50% height=50% />
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<h2>NOMBRE</h2>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<h3><em>Dirección Restaurante</em></h3>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
									<div class="panel panel-default">
										<div class="panel-body">
											Etiq. 1
										</div>
									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
									<div class="panel panel-default">
										<div class="panel-body">
											Etiq. 2
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<h2>MENÚ</h2>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<h4>Menú cmpleto</h4>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<h4>Primer plato</h4>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<h4>Segundo plato</h4>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<div class="row">
							<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
								<div class="row">
									<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
										<span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
									</div>
									<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
										<span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
									</div>
									<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
										<span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
										<span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
									</div>
									<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
										<span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
									</div>
									<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
										<span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
									</div>
								</div>
							</div>
							<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
								<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
    <jsp:include page="footer.jsp" />
    
    <!-- jQuery -->
    <script src="//code.jquery.com/jquery.js"></script>
    <!-- Bootstrap JavaScript -->
    <script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
</body>
</html>