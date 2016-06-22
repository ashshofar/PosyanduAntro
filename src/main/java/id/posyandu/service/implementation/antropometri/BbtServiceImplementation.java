package id.posyandu.service.implementation.antropometri;

import java.util.Collection;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import id.posyandu.domain.antropometri.Beratbadantinggi;
import id.posyandu.repositories.antropometri.BbtRepository;
import id.posyandu.service.antropometri.BbtService;

@Service
@Transactional
public class BbtServiceImplementation implements BbtService{
	
	@Autowired
	protected BbtRepository bbtRepository;
	
	@Override
	public Beratbadantinggi saveBBT(Beratbadantinggi beratbadantinggi) {
		return bbtRepository.save(beratbadantinggi);
	}

	@Override
	public Boolean deleteBBT(String id) {
		Beratbadantinggi temp = bbtRepository.findOne(id);
		if (temp != null) {
			bbtRepository.delete(temp);
            return true;
        }
        return false;
	}

	@Override
	public Beratbadantinggi editBBT(Beratbadantinggi beratbadantinggi) {
		return bbtRepository.save(beratbadantinggi);
	}

	@Override
	public Beratbadantinggi findBBT(String id) {
		return this.bbtRepository.findOne(id);
	}

	@Override
	public Collection<Beratbadantinggi> getAllBBTs() {
		Iterable<Beratbadantinggi> itr = bbtRepository.findAll();
        return (Collection<Beratbadantinggi>) itr;
	}

	@Override
	public Collection<Beratbadantinggi> getAllBBTLs() {
		Iterable<Beratbadantinggi> itr = bbtRepository.findLaki();
        return (Collection<Beratbadantinggi>) itr;
	}

	@Override
	public Collection<Beratbadantinggi> getAllBBTPs() {
		Iterable<Beratbadantinggi> itr = bbtRepository.findPerempuan();
        return (Collection<Beratbadantinggi>) itr;
	}

}
