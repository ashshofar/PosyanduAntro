package id.posyandu.service.implementation;

import java.util.Collection;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import id.posyandu.domain.Berat;
import id.posyandu.domain.antropometri.Beratbadanumur;
import id.posyandu.repositories.BeratRepository;
import id.posyandu.service.BeratService;

@Service
@Transactional
public class BeratServiceImplementation implements BeratService{

	@Autowired
	protected BeratRepository beratRepository;
	
	@Override
	public Berat saveBerat(Berat berat) {
		return beratRepository.save(berat);
	}

	@Override
	public Boolean deleteBerat(String beratId) {
		Berat temp = beratRepository.findOne(beratId);
		if (temp != null) {
			beratRepository.delete(temp);
            return true;
        }
        return false;
	}

	@Override
	public Berat editBerat(Berat berat) {
		return beratRepository.save(berat);
	}

	@Override
	public Berat findBerat(String beratId) {
		return this.beratRepository.findOne(beratId);
	}

	@Override
	public Collection<Berat> getAllBerats() {
		Iterable<Berat> itr = beratRepository.findAll();
        return (Collection<Berat>) itr;
	}
	
	@Override
	public Collection<Berat> findAllBeratByIdBalita(String idBalita){
		Iterable<Berat> itr = beratRepository.findById(idBalita);
		return (Collection<Berat>) itr;
	}

	@Override
	public float findPlus(String umur) {
		return this.beratRepository.findPlus(umur);
	}

	@Override
	public Collection<Beratbadanumur> findAllPlus(String umur) {
		Iterable<Beratbadanumur> itr = beratRepository.findAllPlus(umur);
		return (Collection<Beratbadanumur>) itr;
	}
	
	
}
