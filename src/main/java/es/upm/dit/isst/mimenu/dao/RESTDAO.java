package es.upm.dit.isst.mimenu.dao;

import java.util.List;

import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

import es.upm.dit.isst.mimenu.model.REST;

public interface RESTDAO {
	
	public REST create(String nombre, String email, String usuario, int capacidad, String password, String direccion,
			String telefono, String logo, String web, int valoracion, boolean delivery);
	public REST read(String usuario);
	public List<REST> read();
	public REST updateREST(REST rest);
	public REST deleteREST(REST rest);
}