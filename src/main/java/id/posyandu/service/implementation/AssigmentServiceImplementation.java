package id.posyandu.service.implementation;

import java.util.Collection;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import id.posyandu.domain.Assigment;
import id.posyandu.repositories.AssigmentRepository;
import id.posyandu.service.AssigmentService;

@Service
@Transactional
public class AssigmentServiceImplementation implements AssigmentService {
	
	@Autowired
	protected AssigmentRepository assigmentRepository;
	
	@Override
	public Assigment saveAssigment(Assigment assigment) {
		return assigmentRepository.save(assigment);
	}

	@Override
	public Boolean deleteAssigment(String assigmentId) {
		Assigment temp = assigmentRepository.findOne(assigmentId);
		if (temp != null) {
			assigmentRepository.delete(temp);
            return true;
        }
        return false;
	}

	@Override
	public Assigment editAssigment(Assigment assigment) {
		return assigmentRepository.save(assigment);
	}

	@Override
	public Assigment findAssigment(String assigmentId) {
		return this.assigmentRepository.findOne(assigmentId);
	}

	@Override
	public Collection<Assigment> getAllAssigments() {
		Iterable<Assigment> itr = assigmentRepository.findAll();
        return (Collection<Assigment>) itr;
	}

}
