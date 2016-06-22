package id.posyandu.repositories.antropometri;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import id.posyandu.domain.antropometri.Panjangbadanumur;

public interface PbuRepository extends CrudRepository<Panjangbadanumur, String>{
	
	@Query(value = "SELECT * FROM panjangbadanumur WHERE jenis_kelamin = 'Laki-Laki' order by umur asc", nativeQuery = true)
	Iterable<Panjangbadanumur> findLaki();
	
	@Query(value = "SELECT * FROM panjangbadanumur WHERE jenis_kelamin = 'Perempuan' order by umur asc", nativeQuery = true)
	Iterable<Panjangbadanumur> findPerempuan();

}
