package id.posyandu.service.antropometri;

import java.util.Collection;

import id.posyandu.domain.antropometri.Beratbadantinggi;

public interface BbtService {
	public Beratbadantinggi saveBBT(Beratbadantinggi beratbadantinggi);

    public Boolean deleteBBT(String id);

    public Beratbadantinggi editBBT(Beratbadantinggi beratbadantinggi);

    public Beratbadantinggi findBBT(String id);
    
    public Collection<Beratbadantinggi> getAllBBTs();
    
    public Collection<Beratbadantinggi> getAllBBTLs();
    
    public Collection<Beratbadantinggi> getAllBBTPs();
}
