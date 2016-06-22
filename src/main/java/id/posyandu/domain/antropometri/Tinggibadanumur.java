package id.posyandu.domain.antropometri;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "tinggibadanumur")
public class Tinggibadanumur {
	
	@Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;
	
	String jenisKelamin;
	
	String umur;
	
	float minus3sd;
	
	float minus2sd;
	
	float minus1sd;
	
	float median;
	
	float plus1sd;
	
	float plus2sd;
	
	float plus3sd;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getJenisKelamin() {
		return jenisKelamin;
	}

	public void setJenisKelamin(String jenisKelamin) {
		this.jenisKelamin = jenisKelamin;
	}

	public String getUmur() {
		return umur;
	}

	public void setUmur(String umur) {
		this.umur = umur;
	}

	public float getMinus3sd() {
		return minus3sd;
	}

	public void setMinus3sd(float minus3sd) {
		this.minus3sd = minus3sd;
	}

	public float getMinus2sd() {
		return minus2sd;
	}

	public void setMinus2sd(float minus2sd) {
		this.minus2sd = minus2sd;
	}

	public float getMinus1sd() {
		return minus1sd;
	}

	public void setMinus1sd(float minus1sd) {
		this.minus1sd = minus1sd;
	}

	public float getMedian() {
		return median;
	}

	public void setMedian(float median) {
		this.median = median;
	}

	public float getPlus1sd() {
		return plus1sd;
	}

	public void setPlus1sd(float plus1sd) {
		this.plus1sd = plus1sd;
	}

	public float getPlus2sd() {
		return plus2sd;
	}

	public void setPlus2sd(float plus2sd) {
		this.plus2sd = plus2sd;
	}

	public float getPlus3sd() {
		return plus3sd;
	}

	public void setPlus3sd(float plus3sd) {
		this.plus3sd = plus3sd;
	}
	
	

}
