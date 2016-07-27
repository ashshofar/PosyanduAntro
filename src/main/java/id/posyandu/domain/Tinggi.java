package id.posyandu.domain;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIdentityReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@Table(name = "tinggi")
public class Tinggi {
	
	@Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String tinggiId;
	
	@ManyToOne(fetch = FetchType.EAGER, cascade=CascadeType.MERGE)
    @JoinColumn (name = "id_balita")
	@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "nama")
    @JsonIdentityReference(alwaysAsId = true)
    private Balita idBalita;
	
	String umur;
	
	private Float tinggiBalita;
	
	@Temporal(TemporalType.DATE)
    private Date tanggalPosyandu;

	public String getTinggiId() {
		return tinggiId;
	}

	public void setTinggiId(String tinggiId) {
		this.tinggiId = tinggiId;
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

	public Float getTinggiBalita() {
		return tinggiBalita;
	}

	public void setTinggiBalita(Float tinggiBalita) {
		this.tinggiBalita = tinggiBalita;
	}

	public Date getTanggalPosyandu() {
		return tanggalPosyandu;
	}

	public void setTanggalPosyandu(Date tanggalPosyandu) {
		this.tanggalPosyandu = tanggalPosyandu;
	}
	
	
	
	

}
