package id.posyandu.service;

import java.util.Collection;

import id.posyandu.domain.Berat;
import id.posyandu.domain.antropometri.Beratbadanumur;

public interface BeratService {
	
	public Berat saveBerat(Berat berat);

    public Boolean deleteBerat(String beratId);

    public Berat editBerat(Berat berat);

    public Berat findBerat(String beratId);

    public Collection<Berat> getAllBerats();
    
    public Collection<Berat> findAllBeratByIdBalita(String idBalita);
    
    public float findPlus(String umur);
    
    public Collection<Beratbadanumur> findAllPlus(String umur);

}
