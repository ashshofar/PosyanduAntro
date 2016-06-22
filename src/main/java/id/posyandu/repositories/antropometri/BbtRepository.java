package id.posyandu.repositories.antropometri;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import id.posyandu.domain.antropometri.Beratbadantinggi;

public interface BbtRepository extends CrudRepository<Beratbadantinggi, String>{
	
	@Query(value = "SELECT * FROM beratbadantinggi WHERE jenis_kelamin = 'Laki-Laki' order by tinggi asc", nativeQuery = true)
	Iterable<Beratbadantinggi> findLaki();
	
	@Query(value = "SELECT * FROM beratbadantinggi WHERE jenis_kelamin = 'Perempuan' order by tinggi asc", nativeQuery = true)
	Iterable<Beratbadantinggi> findPerempuan();
	
}
