package id.posyandu.domain;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "user")
public class User {
	
	@Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String userId;

    private String nama;

    private String jenisKelamin;
    
    private String rt;
    
    private String telepon;
    
    private String foto;
    
    private String username;

    private String password;
    
    @OneToMany(cascade=CascadeType.ALL, mappedBy="idUser")
    private List<Assigment> daftarAssigmentUser = new ArrayList<>();
    
    @Column(nullable = false)
    private boolean active;
    
    @OneToMany(cascade = CascadeType.MERGE, mappedBy="ayah")
    private List<Balita> daftarAyah = new ArrayList<>();
    
    @OneToMany(cascade = CascadeType.MERGE, mappedBy="ibu")
    private List<Balita> daftarIbu = new ArrayList<>();

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getNama() {
		return nama;
	}

	public void setNama(String nama) {
		this.nama = nama;
	}

	public String getJenisKelamin() {
		return jenisKelamin;
	}

	public void setJenisKelamin(String jenisKelamin) {
		this.jenisKelamin = jenisKelamin;
	}

	public String getRt() {
		return rt;
	}

	public void setRt(String rt) {
		this.rt = rt;
	}

	public String getTelepon() {
		return telepon;
	}

	public void setTelepon(String telepon) {
		this.telepon = telepon;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<Assigment> getDaftarAssigmentUser() {
		return daftarAssigmentUser;
	}

	public void setDaftarAssigmentUser(List<Assigment> daftarAssigmentUser) {
		this.daftarAssigmentUser = daftarAssigmentUser;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public List<Balita> getDaftarAyah() {
		return daftarAyah;
	}

	public void setDaftarAyah(List<Balita> daftarAyah) {
		this.daftarAyah = daftarAyah;
	}

	public List<Balita> getDaftarIbu() {
		return daftarIbu;
	}

	public void setDaftarIbu(List<Balita> daftarIbu) {
		this.daftarIbu = daftarIbu;
	}
    
    

}
