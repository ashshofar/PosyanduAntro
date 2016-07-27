package id.posyandu.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import id.posyandu.domain.Berat;

public interface BeratRepository extends CrudRepository<Berat, String>{
	
	@Query(value = "SELECT * FROM berat where id_balita = :idBalita order by umur + 0", nativeQuery=true)
	Iterable<Berat> findById(@Param("idBalita") String idBalita);
	
	@Query(value = "SELECT b.umur FROM berat b join beratbadanumur bbu on b.umur = bbu.umur where bbu.jenis_kelamin = 'Perempuan'", nativeQuery=true)
	Iterable<String> findBeratAndAntro();
}
