package id.posyandu.repositories.antropometri;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import id.posyandu.domain.antropometri.Tinggibadanumur;


public interface TbuRepository extends CrudRepository<Tinggibadanumur, String>{

	@Query(value = "SELECT * FROM tinggibadanumur WHERE jenis_kelamin = 'Laki-Laki' order by umur asc", nativeQuery = true)
	Iterable<Tinggibadanumur> findLaki();
	
	@Query(value = "SELECT * FROM tinggibadanumur WHERE jenis_kelamin = 'Perempuan' order by umur asc", nativeQuery = true)
	Iterable<Tinggibadanumur> findPerempuan();
	
}
