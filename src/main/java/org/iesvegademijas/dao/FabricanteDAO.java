package org.iesvegademijas.dao;

import java.util.List;
import java.util.Optional;

import org.iesvegademijas.model.Fabricante;
import org.iesvegademijas.model.FabricanteDTO;

public interface FabricanteDAO {
		
	public void create(Fabricante fabricante);
	
	public List<Fabricante> getAll();
	public Optional<Fabricante>  find(int id);
	
	public void update(Fabricante fabricante);
	
	public void delete(int id);
	
	public Optional<Integer> getCountProductos(int id);
	
	public List<FabricanteDTO> getAllDTOPlusCountProductos();
	public List<FabricanteDTO> ordenarFabricanteDTO(String orden, String modo);
	
}
