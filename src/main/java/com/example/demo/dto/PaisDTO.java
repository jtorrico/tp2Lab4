package com.example.demo.dto;

public class PaisDTO {

	private int id;
	private String nombre;
	private String capital;
	private String region;
	private int poblacion;
	private float latitud;
	private float longitud;
	
	public PaisDTO() {
		
	}

	public PaisDTO(int id, String nombre, String capital, String region, int poblacion, float latitud, float longitud) {
		
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
