package id.posyandu.domain;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedNativeQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.sql.DataSource;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;

import id.posyandu.domain.antropometri.Beratbadanumur;
import id.posyandu.repositories.BeratRepository;


@Entity
@Table(name = "berat")
public class Berat {
	
	@Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String beratId;
	
	@ManyToOne(fetch = FetchType.EAGER, cascade=CascadeType.MERGE)
    @JoinColumn (name = "id_balita")
    private Balita idBalita;
	
	private String umur;
	private Float beratBalita;
	
	@Transient
	String statusberatumur;
	
	@Transient
	float median;
	
	@Transient
	float plus;
	
	@Transient
	float minus;
	
	@Temporal(TemporalType.DATE)
    private Date tanggalPosyandu;

	public String getBeratId() {
		return beratId;
	}

	public void setBeratId(String beratId) {
		this.beratId = beratId;
	}

	public Balita getIdBalita() {
		return idBalita;
	}

	public void setIdBalita(Balita idBalita) {
		this.idBalita = idBalita;
	}

	public String getUmur() {
		return umur;
	}

	public void setUmur(String umur) {
		this.umur = umur;
	}

	public Float getBeratBalita() {
		return beratBalita;
	}

	public void setBeratBalita(Float beratBalita) {
		this.beratBalita = beratBalita;
	}

	public Date getTanggalPosyandu() {
		return tanggalPosyandu;
	}

	public void setTanggalPosyandu(Date tanggalPosyandu) {
		this.tanggalPosyandu = tanggalPosyandu;
	}
	
	@Query(value = "SELECT median FROM beratbadanumur Where umur = :umur and jenis_kelamin = 'Perempuan'", nativeQuery = true)
	public float findMedian(@Param("umur") String umur) {
		return this.findMedian(umur);
	}
	
	@Query(value = "SELECT plus1sd FROM beratbadanumur Where umur = '7' and jenis_kelamin = 'Perempuan'", nativeQuery = true)
	public Beratbadanumur findPlus() {
		return null;
	}
	
	@Query(value = "SELECT minus1sd FROM beratbadanumur Where umur = '7' and jenis_kelamin = 'Perempuan'", nativeQuery = true)
	public float findMinus(@Param("umur") String umur) {
		return this.minus;
	}
	
	public String statusberatumur(){
		
		String umur2 = this.umur;
		
		float individu = this.beratBalita;
		//float plus = findPlus();
		float minus = findMinus(umur2);
		float median = findMedian(umur2);
		
		
		float simpangbaku = 0;
		if(individu > median){
			simpangbaku = plus-median;
		}else if (individu < median){
			simpangbaku = median-minus;
		}
		
		float z;
		z = (individu-median)/simpangbaku;
		
		String status = null;
		if( z < -3){
			status = "Gizi Buruk";
		}else if (z >= -3 && z <= -2){
			status = "Gizi Kurang";
		}else if (z >= -2 && z <= 2){
			status = "Gizi Baik";
		}else if(z > 2){
			status = "Gizi Lebih";
		}		
		
		
		return this.statusberatumur = String.valueOf(median);
	}
	
	
}
