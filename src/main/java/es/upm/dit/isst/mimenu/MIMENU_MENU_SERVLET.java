package es.upm.dit.isst.mimenu;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;

import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;
import com.googlecode.objectify.ObjectifyService;

import es.upm.dit.isst.mimenu.dao.MENUDAO;
import es.upm.dit.isst.mimenu.dao.MENUDAOImpl;
import es.upm.dit.isst.mimenu.model.MENU;

public class MIMENU_MENU_SERVLET extends HttpServlet {
		
	@Override
	public void init() throws ServletException {
		ObjectifyService.register(MENU.class);
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		UserService userService = UserServiceFactory.getUserService();
		String url = userService.createLoginURL(request.getRequestURI());
		String urlLinktext = "Login";
		String user = "";

		if (request.getUserPrincipal() != null){
			user = request.getUserPrincipal().getName();
			url = userService.createLogoutURL(request.getRequestURI());
			urlLinktext = "Logout";
		}

		request.getSession().setAttribute("user", user);
		request.getSession().setAttribute("url", url);
		request.getSession().setAttribute("urlLinktext", urlLinktext);

		MENUDAO menuDao = MENUDAOImpl.getInstancia();
		
		for(MENU menu: menuDao.read()) {
			response.getWriter().println(menu.getNombre());
			for(String plato: menu.getPlatos()) {
				response.getWriter().println("<br>Plato: "+plato);
			}
			response.getWriter().println("<br>Precio: "+menu.getPrecio());
			response.getWriter().println("<br>Fecha: "+menu.getFecha());
			for (String bebida: menu.getBebidas()) {
				response.getWriter().println("<br>Bebidas: \n"+bebida);
			}
		}
	}

}
