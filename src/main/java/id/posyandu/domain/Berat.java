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
		
	private float beratBalita;
	
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

	public Date getTanggalPosyandu() {
		return tanggalPosyandu;
	}

	public void setTanggalPosyandu(Date tanggalPosyandu) {
		this.tanggalPosyandu = tanggalPosyandu;
	}

	public float getBeratBalita() {
		return beratBalita;
	}

	public void setBeratBalita(float beratBalita) {
		this.beratBalita = beratBalita;
	}

	public String getUmur() {
		return umur;
	}

	public void setUmur(String umur) {
		this.umur = umur;
	}
	
	
		
	
}
