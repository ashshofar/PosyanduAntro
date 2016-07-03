package id.posyandu.service.antropometri;

import java.util.Collection;
import id.posyandu.domain.antropometri.Beratbadanumur;

public interface BbuService {
	public Beratbadanumur saveBBU(Beratbadanumur beratbadanumur);

    public Boolean deleteBBU(String id);

    public Beratbadanumur editBBU(Beratbadanumur beratbadanumur);

    public Beratbadanumur findBBU(String id);
    
    public Collection<Beratbadanumur> getAllBBUs();
    
    public Collection<Beratbadanumur> getAllBBULs();
    
    public Collection<Beratbadanumur> getAllBBUPs();
    
   
}