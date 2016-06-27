package id.posyandu.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import id.posyandu.domain.Berat;
import id.posyandu.domain.antropometri.Beratbadanumur;

public interface BeratRepository extends CrudRepository<Berat, String>{
	
	@Query(value = "SELECT * FROM berat where id_balita = :idBalita order by umur + 0", nativeQuery=true)
	Iterable<Berat> findById(@Param("idBalita") String idBalita);
	
	@Query(value = "SELECT plus1sd FROM beratbadanumur Where umur = :umur and jenis_kelamin = 'Perempuan'", nativeQuery = true)
	float findPlus(@Param("umur") String umur);
	
	@Query(value = "SELECT plus1sd FROM beratbadanumur Where umur = :umur and jenis_kelamin = 'Perempuan'", nativeQuery = true)
	Iterable<Beratbadanumur> findAllPlus(@Param("umur") String umur);
}
