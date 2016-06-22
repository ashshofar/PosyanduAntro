package id.posyandu.service.antropometri;

import java.util.Collection;

import id.posyandu.domain.antropometri.Panjangbadanumur;

public interface PbuService {
	
	public Panjangbadanumur savePBU(Panjangbadanumur panjangbadanumur);

    public Boolean deletePBU(String id);

    public Panjangbadanumur editPBU(Panjangbadanumur panjangbadanumur);

    public Panjangbadanumur findPBU(String id);
    
    public Collection<Panjangbadanumur> getAllPBUs();
    
    public Collection<Panjangbadanumur> getAllPBULs();
    
    public Collection<Panjangbadanumur> getAllPBUPs();

}
