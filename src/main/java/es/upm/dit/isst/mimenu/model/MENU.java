/**
 * 
 */
package es.upm.dit.isst.mimenu.model;

import java.io.Serializable;
import java.util.Arrays;

import com.googlecode.objectify.annotation.*;


/**
 * @author alvaro gericke
 *
 */
@Entity
public class MENU implements Serializable {

	private static final long serialVersionUID = 01L;
	@Id
	//@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Index
	private String nombre;
	@Index
	private String[] platos;
	@Index
	private double precio;
	@Index
	private int cantidad;
	@Index
	private String fecha;
	@Index
	private String turno;
	@Index
	private String[] categorias;
	@Index
	private String[] bebidas;

	/**
	 * @param id
	 * @param nombre
	 * @param platos
	 * @param precio
	 * @param cantidad
	 * @param fecha
	 * @param turno
	 * @param categorias
	 * @param bebidas
	 */
	public MENU(long id, String nombre, String[] platos, double precio, int cantidad, String fecha, String turno,
			String[] categorias, String[] bebidas) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.platos = platos;
		this.precio = precio;
		this.cantidad = cantidad;
		this.fecha = fecha;
		this.turno = turno;
		this.categorias = categorias;
		this.bebidas = bebidas;
	}

	/**
	 * 
	 */
	private MENU() {
		super();
	}


	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}


	/**
	 * @param id the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}


	/**
	 * @return the nombre
	 */
	public String getNombre() {
		return nombre;
	}


	/**
	 * @param nombre the nombre to set
	 */
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	/**
	 * @return the platos
	 */
	public String[] getPlatos() {
		return platos;
	}


	/**
	 * @param platos the platos to set
	 */
	public void setPlatos(String[] platos) {
		this.platos = platos;
	}


	/**
	 * @return the precio
	 */
	public double getPrecio() {
		return precio;
	}


	/**
	 * @param precio the precio to set
	 */
	public void setPrecio(double precio) {
		this.precio = precio;
	}


	/**
	 * @return the cantidad
	 */
	public int getCantidad() {
		return cantidad;
	}


	/**
	 * @param cantidad the cantidad to set
	 */
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}


	/**
	 * @return the fecha
	 */
	public String getFecha() {
		return fecha;
	}


	/**
	 * @param fecha the fecha to set
	 */
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}


	/**
	 * @return the turno
	 */
	public String getTurno() {
		return turno;
	}


	/**
	 * @param turno the turno to set
	 */
	public void setTurno(String turno) {
		this.turno = turno;
	}


	/**
	 * @return the categorias
	 */
	public String[] getCategorias() {
		return categorias;
	}


	/**
	 * @param categorias the categorias to set
	 */
	public void setCategorias(String[] categorias) {
		this.categorias = categorias;
	}


	/**
	 * @return the bebidas
	 */
	public String[] getBebidas() {
		return bebidas;
	}


	/**
	 * @param bebidas the bebidas to set
	 */
	public void setBebidas(String[] bebidas) {
		this.bebidas = bebidas;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Arrays.hashCode(bebidas);
		result = prime * result + cantidad;
		result = prime * result + Arrays.hashCode(categorias);
		result = prime * result + ((fecha == null) ? 0 : fecha.hashCode());
		result = (int) (prime * result + id);
		result = prime * result + ((nombre == null) ? 0 : nombre.hashCode());
		result = prime * result + Arrays.hashCode(platos);
		long temp;
		temp = Double.doubleToLongBits(precio);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((turno == null) ? 0 : turno.hashCode());
		return result;
	}


	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		MENU other = (MENU) obj;
		if (!Arrays.equals(bebidas, other.bebidas)) {
			return false;
		}
		if (cantidad != other.cantidad) {
			return false;
		}
		if (!Arrays.equals(categorias, other.categorias)) {
			return false;
		}
		if (fecha == null) {
			if (other.fecha != null) {
				return false;
			}
		} else if (!fecha.equals(other.fecha)) {
			return false;
		}
		if (id != other.id) {
			return false;
		}
		if (nombre == null) {
			if (other.nombre != null) {
				return false;
			}
		} else if (!nombre.equals(other.nombre)) {
			return false;
		}
		if (!Arrays.equals(platos, other.platos)) {
			return false;
		}
		if (Double.doubleToLongBits(precio) != Double.doubleToLongBits(other.precio)) {
			return false;
		}
		if (turno == null) {
			if (other.turno != null) {
				return false;
			}
		} else if (!turno.equals(other.turno)) {
			return false;
		}
		return true;
	}


	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
