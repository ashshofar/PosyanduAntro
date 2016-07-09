package id.posyandu.service.implementation;

import java.util.Collection;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import id.posyandu.domain.Balita;
import id.posyandu.repositories.BalitaRepository;
import id.posyandu.service.BalitaService;

@Service
@Transactional
public class BalitaServiceImplementation implements BalitaService{

	@Autowired
	protected BalitaRepository balitaRepository;

	@Override
	public Balita saveBalita(Balita balita) {
		return balitaRepository.save(balita);
	}

	@Override
	public Boolean deleteBalita(String balitaId) {
		Balita temp = balitaRepository.findOne(balitaId);
		if (temp != null) {
            balitaRepository.delete(temp);
            return true;
        }
        return false;
	}

	@Override
	public Balita editBalita(Balita balita) {
		return balitaRepository.save(balita);
	}

	@Override
	public Balita findBalita(String balitaId) {
		return this.balitaRepository.findOne(balitaId);
	}

	@Override
	public Collection<Balita> getAllBalitas() {
		Iterable<Balita> itr = balitaRepository.findAll();
        return (Collection<Balita>) itr;
	}

	@Override
	public Collection<Balita> getBalitasByOrangTua(String idIbu, String idAyah) {
		Iterable<Balita> itr = balitaRepository.findBalitaByOrangtua(idIbu, idAyah);
        return (Collection<Balita>) itr;
	}
	
	
}
