package com.example.demo.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Scanner;

import javax.transaction.Transactional;

import org.json.*;
import org.springframework.stereotype.Service;
import com.example.demo.dto.PaisDTO;
import com.example.demo.entities.Pais;
import com.example.demo.repository.PaisRepository;

@Service
public class PaisService {
	
	private PaisRepository repository;

	public PaisService(PaisRepository repository) {
		super();
		this.repository = repository;
	}
	
	@Transactional
	public List <PaisDTO> findAll() throws Exception {
		
		List <Pais> entities = repository.findAll();
		List <PaisDTO> dtos = new ArrayList ();
		
		try {
			
			for (Pais i : entities) {
				PaisDTO unDTO = new PaisDTO();
				unDTO.setId(i.getId());
				unDTO.setNombre(i.getNombre());
				unDTO.setCapital(i.getCapital());
				unDTO.setRegion(i.getRegion());
				unDTO.setPoblacion(i.getPoblacion());
				unDTO.setLatitud(i.getLatitud());
				unDTO.setLongitud(i.getLongitud());
				
				dtos.add(unDTO);
			}
			
			return dtos;
			
		} catch (Exception e) {
			throw new Exception();
		}
	}
	
	@Transactional
	public PaisDTO findById (int id) throws Exception {
		
		Optional <Pais> entityOptional = repository.findById(id);
		PaisDTO dto = new PaisDTO();
		
		try {
			Pais entity = entityOptional.get();
			dto.setId(entity.getId());
			dto.setNombre(entity.getNombre());
			dto.setCapital(entity.getCapital());
			dto.setRegion(entity.getRegion());
			dto.setPoblacion(entity.getPoblacion());
			dto.setLatitud(entity.getLatitud());
			dto.setLongitud(entity.getLongitud());
			
			return dto;
			
		} catch (Exception e) {
			throw new Exception();
		}
	}
	
	@Transactional
	public PaisDTO save (PaisDTO dto) throws Exception {
		
		Pais entity = new Pais();
	
		entity.setId(dto.getId());
		entity.setNombre(dto.getNombre());
		entity.setCapital(dto.getCapital());
		entity.setRegion(dto.getRegion());
		entity.setPoblacion(dto.getPoblacion());
		entity.setLatitud(dto.getLatitud());
		entity.setLongitud(dto.getLongitud());
		
		try {
			
			entity = repository.save(entity);
			dto.setId(entity.getId());
			dto.setNombre(entity.getNombre());
			dto.setCapital(entity.getCapital());
			dto.setRegion(entity.getRegion());
			dto.setPoblacion(entity.getPoblacion());
			dto.setLatitud(entity.getLatitud());
			dto.setLongitud(entity.getLongitud());
			
			return dto;
			
		} catch (Exception e) {
			throw new Exception();
		}
	}
	
	@Transactional
	public PaisDTO update (int id, PaisDTO dto) throws Exception {
		
		Optional <Pais> entityOptional = repository.findById(id);
		
		try {
			Pais entity = entityOptional.get();
			
			if (repository.existsById(id)) {
				entity.setNombre(dto.getNombre());
				entity.setCapital(dto.getCapital());
				entity.setRegion(dto.getRegion());
				entity.setPoblacion(dto.getPoblacion());
				entity.setLatitud(dto.getLatitud());
				entity.setLongitud(dto.getLongitud());
				
				return dto;
				
			} else {
				throw new Exception();
			}
		} catch (Exception e) {
			throw new Exception();
		}
	}
	
	@Transactional
	public boolean delete (int id) throws Exception {
		
		try {
			repository.deleteById(id);
			return true;
			
		} catch (Exception e) {
			throw new Exception();
		}
	}
	
	@Transactional
	public PaisDTO migrate (PaisDTO dto) throws Exception {
	
		for (int codigo = 1; codigo <= 300; codigo++) {
			
				try {
					String url = "https://restcountries.eu/rest/v2/callingcode/" + codigo;
					URL obj = new URL (url);
					HttpURLConnection con = (HttpURLConnection) obj.openConnection();
		                        
					int responseCode = con.getResponseCode();
	
					if(responseCode == 200) {
						System.out.println("Guardando Pais numero " + codigo);
						
						BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
						String inputLine;
						StringBuffer response = new StringBuffer();
						
						while ((inputLine = in.readLine()) != null) {
							response.append(inputLine);
						}
						in.close();
						
						JSONArray myResponse = new JSONArray(response.toString());
			            
			            JSONObject pais = new JSONObject(myResponse.getJSONObject(0).toString());
			            JSONArray llamada = new JSONArray (pais.getJSONArray("callingCodes").toString());
			            JSONArray latLng = new JSONArray (pais.getJSONArray("latlng").toString());
						
			            dto.setId(llamada.getInt(0));
						dto.setNombre(pais.getString("name"));
						dto.setCapital(pais.getString("capital"));
						dto.setRegion(pais.getString("region"));
						dto.setPoblacion(pais.getInt("population"));
						dto.setLatitud(latLng.getInt(0));
						dto.setLongitud(latLng.getInt(1));
						
						save(dto);

					} else {
						continue;
					}
					
			} catch (Exception e) {
				throw new Exception();
			}
		}
		
		return dto;
	}
}
