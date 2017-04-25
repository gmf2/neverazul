package es.upm.dit.isst.mimenu;

import java.io.IOException;

import java.awt.Menu;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;

import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;
import com.googlecode.objectify.ObjectifyService;


import es.upm.dit.isst.mimenu.dao.RESTDAO;
import es.upm.dit.isst.mimenu.dao.RESTDAOImpl;

public class MIMENU_REGISTRAREST_SERVLET extends HttpServlet {
		
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nombre = req.getParameter("nombre");
		String email = req.getParameter("email");
		String usuario= req.getParameter("usuario");
		String capacidad= req.getParameter("capacidad");
		String password = req.getParameter("password");
		String direccion = req.getParameter("direccion");
		String telefono = req.getParameter("telefono");
		String logo = req.getParameter("logo");
		String web = req.getParameter("web");
		boolean delivery = false;
		if(req.getParameter("delivery") != null){
			delivery = true;
		}
		
		
		
		RESTDAO dao = RESTDAOImpl.getInstancia();
		dao.create(nombre, email, usuario, Integer.parseInt(capacidad), password, direccion, telefono, logo, web, 0, delivery);

		resp.sendRedirect("/");

	}
}
