package id.posyandu.service.antropometri;

import java.util.Collection;

import id.posyandu.domain.antropometri.Tinggibadanumur;

public interface TbuService {
	public Tinggibadanumur saveTBU(Tinggibadanumur tinggibadanumur);

    public Boolean deleteTBU(String id);

    public Tinggibadanumur editTBU(Tinggibadanumur tinggibadanumur);

    public Tinggibadanumur findTBU(String id);
    
    public Collection<Tinggibadanumur> getAllTBUs();
    
    public Collection<Tinggibadanumur> getAllTBULs();
    
    public Collection<Tinggibadanumur> getAllTBUPs();

}
