package id.posyandu.repositories.antropometri;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import id.posyandu.domain.antropometri.Beratbadanumur;


public interface BbuRepository extends CrudRepository<Beratbadanumur, String>{
	
	@Query(value = "SELECT * FROM beratbadanumur WHERE jenis_kelamin = 'Laki-Laki' order by umur asc", nativeQuery = true)
	Iterable<Beratbadanumur> findLaki();
	
	@Query(value = "SELECT * FROM beratbadanumur WHERE jenis_kelamin = 'Perempuan' order by umur asc", nativeQuery = true)
	Iterable<Beratbadanumur> findPerempuan();
	
}
