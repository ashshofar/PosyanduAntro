package id.posyandu.service.antropometri;

import java.util.Collection;

import id.posyandu.domain.antropometri.Beratbadanpanjang;

public interface BbpService {
	public Beratbadanpanjang saveBBP(Beratbadanpanjang beratbadanpanjang);

    public Boolean deleteBBP(String id);

    public Beratbadanpanjang editBBP(Beratbadanpanjang beratbadanpanjang);

    public Beratbadanpanjang findBBP(String id);
    
    public Collection<Beratbadanpanjang> getAllBBPs();
    
    public Collection<Beratbadanpanjang> getAllBBPLs();
    
    public Collection<Beratbadanpanjang> getAllBBPPs();
}
