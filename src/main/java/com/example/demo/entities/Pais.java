package com.example.demo.entities;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name = "api_pais")
public class Pais implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	(strategy = GenerationType.IDENTITY)
	
	@Column (name= "codigo_pais")
	private int id;
	
	@Column (name = "nombre_pais")
	private String nombre;
	
	@Column (name = "capital_pais")
	private String capital;
	
	@Column (name = "region_pais")
	private String region;
	
	@Column (name = "poblacion_pais")
	private int poblacion;
	
	@Column (name = "latitud_pais")
	private float latitud;
	
	@Column (name = "longitud_pais")
	private float longitud;

	public Pais() {
		
	}

	public Pais(int id, String nombre, String capital, String region, int poblacion, float latitud, float longitud) {
		
		this.id = id;
		this.nombre = nombre;
		this.capital = capital;
		this.region = region;
		this.poblacion = poblacion;
		this.latitud = latitud;
		this.longitud = longitud;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getCapital() {
		return capital;
	}

	public void setCapital(String capital) {
		this.capital = capital;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public int getPoblacion() {
		return poblacion;
	}

	public void setPoblacion(int poblacion) {
		this.poblacion = poblacion;
	}

	public float getLatitud() {
		return latitud;
	}

	public void setLatitud(float latitud) {
		this.latitud = latitud;
	}

	public float getLongitud() {
		return longitud;
	}

	public void setLongitud(float longitud) {
		this.longitud = longitud;
	}
	
}