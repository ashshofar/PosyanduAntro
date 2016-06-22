package id.posyandu.service.implementation.antropometri;

import java.util.Collection;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import id.posyandu.domain.antropometri.Beratbadanumur;
import id.posyandu.repositories.antropometri.BbuRepository;
import id.posyandu.service.antropometri.BbuService;

@Service
@Transactional
public class BbuServiceImplementation implements BbuService{
	
	@Autowired
	protected BbuRepository bbuRepository;
	
	@Override
	public Beratbadanumur saveBBU(Beratbadanumur beratbadanumur) {
		return bbuRepository.save(beratbadanumur);
	}

	@Override
	public Boolean deleteBBU(String id) {
		Beratbadanumur temp = bbuRepository.findOne(id);
		if (temp != null) {
			bbuRepository.delete(temp);
            return true;
        }
        return false;
	}

	@Override
	public Beratbadanumur editBBU(Beratbadanumur beratbadanumur) {
		return bbuRepository.save(beratbadanumur);
	}

	@Override
	public Beratbadanumur findBBU(String id) {
		return this.bbuRepository.findOne(id);
	}

	@Override
	public Collection<Beratbadanumur> getAllBBUs() {
		Iterable<Beratbadanumur> itr = bbuRepository.findAll();
        return (Collection<Beratbadanumur>) itr;
	}

	@Override
	public Collection<Beratbadanumur> getAllBBULs() {
		Iterable<Beratbadanumur> itr = bbuRepository.findLaki();
        return (Collection<Beratbadanumur>) itr;
	}

	@Override
	public Collection<Beratbadanumur> getAllBBUPs() {
		Iterable<Beratbadanumur> itr = bbuRepository.findPerempuan();
        return (Collection<Beratbadanumur>) itr;
	}

}
