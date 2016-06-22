package id.posyandu.service.implementation.antropometri;

import java.util.Collection;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import id.posyandu.domain.antropometri.Tinggibadanumur;
import id.posyandu.repositories.antropometri.TbuRepository;
import id.posyandu.service.antropometri.TbuService;

@Service
@Transactional
public class TbuServiceImplementation implements TbuService{
	
	@Autowired
	protected TbuRepository tbuRepository;
	
	@Override
	public Tinggibadanumur saveTBU(Tinggibadanumur tinggibadanumur) {
		return tbuRepository.save(tinggibadanumur);
	}

	@Override
	public Boolean deleteTBU(String id) {
		Tinggibadanumur temp = tbuRepository.findOne(id);
		if (temp != null) {
			tbuRepository.delete(temp);
            return true;
        }
        return false;
	}

	@Override
	public Tinggibadanumur editTBU(Tinggibadanumur tinggibadanumur) {
		return tbuRepository.save(tinggibadanumur);
	}

	@Override
	public Tinggibadanumur findTBU(String id) {
		return this.tbuRepository.findOne(id);
	}

	@Override
	public Collection<Tinggibadanumur> getAllTBUs() {
		Iterable<Tinggibadanumur> itr = tbuRepository.findAll();
        return (Collection<Tinggibadanumur>) itr;
	}

	@Override
	public Collection<Tinggibadanumur> getAllTBULs() {
		Iterable<Tinggibadanumur> itr = tbuRepository.findLaki();
        return (Collection<Tinggibadanumur>) itr;
	}

	@Override
	public Collection<Tinggibadanumur> getAllTBUPs() {
		Iterable<Tinggibadanumur> itr = tbuRepository.findPerempuan();
        return (Collection<Tinggibadanumur>) itr;
	}

}
