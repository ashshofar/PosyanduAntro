package id.posyandu.repositories.antropometri;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import id.posyandu.domain.antropometri.Beratbadanpanjang;


public interface BbpRepository extends CrudRepository<Beratbadanpanjang, String>{
	
	@Query(value = "SELECT * FROM beratbadanpanjang WHERE jenis_kelamin = 'Laki-Laki' order by panjang asc", nativeQuery = true)
	Iterable<Beratbadanpanjang> findLaki();
	
	@Query(value = "SELECT * FROM beratbadanpanjang WHERE jenis_kelamin = 'Perempuan' order by panjang asc", nativeQuery = true)
	Iterable<Beratbadanpanjang> findPerempuan();
	
}
