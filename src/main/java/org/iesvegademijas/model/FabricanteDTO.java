package org.iesvegademijas.model;

import java.util.Objects;

public class FabricanteDTO extends Fabricante{
	private int numProd = 0;
	
	

	public FabricanteDTO() {
		super();
	}

	public FabricanteDTO(Fabricante fab) {
		 super(fab.getCodigo(), fab.getNombre());
	}

	public int getNumProd() {
		return numProd;
	}

	public void setNumProd(int numProd) {
		this.numProd = numProd;
	}
	

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + Objects.hash(numProd);
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		FabricanteDTO other = (FabricanteDTO) obj;
		return numProd == other.numProd;
	}

	@Override
	public String toString() {
		return "FabricateDTO [getCodigo()=" + getCodigo() + ", getNombre()=" + getNombre() + ", numProd=" + numProd
				+ "]";
	}
	
	
	
}
