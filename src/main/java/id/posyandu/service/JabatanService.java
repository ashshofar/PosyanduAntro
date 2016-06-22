package id.posyandu.service;

import java.util.Collection;

import id.posyandu.domain.Jabatan;

public interface JabatanService {
	
	public Jabatan saveJabatan(Jabatan jabatan);

    public Boolean deleteJabatan(String jabatanId);

    public Jabatan editJabatan(Jabatan jabatan);

    public Jabatan findJabatan(String jabatanId);

    public Collection<Jabatan> getAllJabatans();

}
