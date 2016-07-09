package id.posyandu.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import id.posyandu.domain.Balita;

public interface BalitaRepository extends CrudRepository<Balita, String>{
	
	@Query(value = "SELECT * FROM balita WHERE ibu_userid = :idIbu or ayah_userid = :idAyah ", nativeQuery = true)
	Iterable<Balita> findBalitaByOrangtua(@Param("idIbu") String idIbu, 
										  @Param("idAyah") String idAyah);

}
