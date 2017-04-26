<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<!DOCTYPE html 
     PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    
        
        
        <!-- Meto el header sin usuario regstrado -->
        <jsp:include page="jsp/header_nologin.jsp"/>
        
        <!-- Cuerpo del documento entre el nav y el footer -->
        <div class="container">
    
            <!-- Parte de sidebar del perfil del restaurante -->
            <div id="opciones-perfil-restaurante" class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                <div id="opciones-perfil-restaurante-perfil" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <h2>Perfil Restaurante</h2>
                    <center>
                        <img id="opciones-perfil-restaurante-perfil-imagen" src="img/perfil.png" class="img-responsive" alt="Image" width="50%" height="50%">
                    </center>
                </div>
                <div id="opciones-perfil-restaurante-publicar" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <h2>Publicar Menú <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></h2>
                </div>
                <div id="opciones-perfil-restaurante-menus" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <h2>Ver Menús <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></h2>
                </div>
            </div>
    
            <!-- Parte central del perfil de restaurante -->
            <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
    			<!-- Meto el header sin usuario regstrado -->
        		<c:if test="${restaurante != null}">
        			<tr>
        				<td>Nombre: <c:out value="${restaurante.nombre}" /></td>
        				<td>Teléfono: <c:out value="${restaurante.telefono}" /></td>
        				<td>Dirección: <c:out value="${restaurante.direccion}" /></td>
        				<td>Capacidad: <c:out value="${restaurante.capacidad}" /></td>
        				<td>Delivery: <c:out value="${restaurante.delivery}" /></td>
        			</tr>
        		</c:if>
        		
            </div>
        </div>
    
        <!-- Footer -->
        <jsp:include page="jsp/footer.jsp" />
        
        <!-- jQuery -->
        <script src="//code.jquery.com/jquery.js"></script>
        <!-- Bootstrap JavaScript -->
        <script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
    </body>
    
</html>