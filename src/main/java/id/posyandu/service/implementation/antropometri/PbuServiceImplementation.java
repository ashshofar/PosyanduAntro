package id.posyandu.service.implementation.antropometri;

import java.util.Collection;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import id.posyandu.domain.antropometri.Panjangbadanumur;
import id.posyandu.repositories.antropometri.PbuRepository;
import id.posyandu.service.antropometri.PbuService;

@Service
@Transactional
public class PbuServiceImplementation implements PbuService{
	
	@Autowired
	protected PbuRepository pbuRepository;
	
	@Override
	public Panjangbadanumur savePBU(Panjangbadanumur panjangbadanumur) {
		return pbuRepository.save(panjangbadanumur);
	}

	@Override
	public Boolean deletePBU(String id) {
		Panjangbadanumur temp = pbuRepository.findOne(id);
		if (temp != null) {
			pbuRepository.delete(temp);
            return true;
        }
        return false;
	}

	@Override
	public Panjangbadanumur editPBU(Panjangbadanumur panjangbadanumur) {
		return pbuRepository.save(panjangbadanumur);
	}

	@Override
	public Panjangbadanumur findPBU(String id) {
		return this.pbuRepository.findOne(id);
	}

	@Override
	public Collection<Panjangbadanumur> getAllPBUs() {
		Iterable<Panjangbadanumur> itr = pbuRepository.findAll();
        return (Collection<Panjangbadanumur>) itr;
	}

	@Override
	public Collection<Panjangbadanumur> getAllPBULs() {
		Iterable<Panjangbadanumur> itr = pbuRepository.findLaki();
        return (Collection<Panjangbadanumur>) itr;
	}

	@Override
	public Collection<Panjangbadanumur> getAllPBUPs() {
		Iterable<Panjangbadanumur> itr = pbuRepository.findPerempuan();
        return (Collection<Panjangbadanumur>) itr;
	}

}
