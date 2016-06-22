package id.posyandu.service.implementation.antropometri;

import java.util.Collection;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import id.posyandu.domain.antropometri.Beratbadanpanjang;
import id.posyandu.repositories.antropometri.BbpRepository;
import id.posyandu.service.antropometri.BbpService;

@Service
@Transactional
public class BbpServiceImplementation implements BbpService{
	
	@Autowired
	protected BbpRepository bbpRepository;
	
	@Override
	public Beratbadanpanjang saveBBP(Beratbadanpanjang beratbadanpanjang) {
		return bbpRepository.save(beratbadanpanjang);
	}

	@Override
	public Boolean deleteBBP(String id) {
		Beratbadanpanjang temp = bbpRepository.findOne(id);
		if (temp != null) {
			bbpRepository.delete(temp);
            return true;
        }
        return false;
	}

	@Override
	public Beratbadanpanjang editBBP(Beratbadanpanjang beratbadanpanjang) {
		return bbpRepository.save(beratbadanpanjang);
	}

	@Override
	public Beratbadanpanjang findBBP(String id) {
		return this.bbpRepository.findOne(id);
	}

	@Override
	public Collection<Beratbadanpanjang> getAllBBPs() {
		Iterable<Beratbadanpanjang> itr = bbpRepository.findAll();
        return (Collection<Beratbadanpanjang>) itr;
	}

	@Override
	public Collection<Beratbadanpanjang> getAllBBPLs() {
		Iterable<Beratbadanpanjang> itr = bbpRepository.findLaki();
        return (Collection<Beratbadanpanjang>) itr;
	}

	@Override
	public Collection<Beratbadanpanjang> getAllBBPPs() {
		Iterable<Beratbadanpanjang> itr = bbpRepository.findPerempuan();
        return (Collection<Beratbadanpanjang>) itr;
	}

}
