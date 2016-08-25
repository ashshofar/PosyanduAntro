package id.posyandu.controller.report;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import id.posyandu.service.BalitaService;
import id.posyandu.domain.ReportBalita;

@Controller
@RequestMapping("/report")
public class BalitaReportController {
	
	@Autowired
	BalitaService balitaService;
	
	@Autowired
	DataSource ds;
	
	@RequestMapping("/allbalita")
    public ModelAndView allBalita(ModelAndView m,
            @RequestParam(value = "format", required = false) String format) throws SQLException{
                
        Connection c = ds.getConnection();
		Statement stmt =c.createStatement();
		String query = "SELECT b.nama, b.jenis_kelamin, b.tempat_lahir, b.tanggal_lahir, u.nama from balita b JOIN user u on u.user_id = b.ibu_userId";
		ResultSet rs = stmt.executeQuery(query);
		
		List<ReportBalita> reportBalitas = new ArrayList<ReportBalita>();
		while (rs.next()) {
	         
			 ReportBalita reportBalita = new ReportBalita();
			 reportBalita.setNama(rs.getString("b.nama"));
			 reportBalita.setJenisKelamin(rs.getString("b.jenis_kelamin"));
			 reportBalita.setTempatLahir(rs.getString("b.tempat_lahir"));
			 reportBalita.setTanggalLahir(rs.getDate("b.tanggal_lahir"));
			 reportBalita.setIbu(rs.getString("u.nama"));
	         
	         reportBalitas.add(reportBalita);
	         
		}
		
		// Count All Balita
		String balita = "SELECT COUNT(nama) as jumlah FROM balita ";
										
		ResultSet rsBalita = stmt.executeQuery(balita);
		String jumlahBalita = null;
		while (rsBalita.next()) {
			jumlahBalita = rsBalita.getString("jumlah");
		}
		m.addObject("jumlah", jumlahBalita);
		//End Count Balita Perempuan
		
		// Count Balita Laki-laki
		String laki = "SELECT COUNT(nama) as jumlahlaki FROM balita "
						+ "WHERE jenis_kelamin = 'Laki-Laki'";
						
		ResultSet rsLaki = stmt.executeQuery(laki);
		String jumlahLaki = null;
		while (rsLaki.next()) {
			jumlahLaki = rsLaki.getString("jumlahlaki");
		}
		
		m.addObject("laki", jumlahLaki);
		//End Count Balita Laki-laki
		
		// Count Balita Perempuan
		String perempuan = "SELECT COUNT(nama) as jumlahPerempuan FROM balita "
						+ "WHERE jenis_kelamin = 'Perempuan'";
								
		ResultSet rsPerempuan = stmt.executeQuery(perempuan);
		String jumlahPerempuan = null;
		while (rsPerempuan.next()) {
			jumlahPerempuan = rsPerempuan.getString("jumlahPerempuan");
		}
		m.addObject("perempuan", jumlahPerempuan);
		//End Count Balita Perempuan
        
		m.addObject("kategori", "Balita Semua Umur");
        m.addObject("dataSource", reportBalitas);
        m.addObject("tanggalUpdate", new Date());
        m.addObject("format", "pdf");
        
        if(format != null && !format.isEmpty()){
            m.addObject("format", format);
        }
        
        m.setViewName("report_balita");
        return m;
    }
	
	@RequestMapping("/balita24")
    public ModelAndView balita24(ModelAndView m,
            @RequestParam(value = "format", required = false) String format) throws SQLException{
                
        Connection c = ds.getConnection();
		Statement stmt =c.createStatement();
		String query = "SELECT b.nama, b.jenis_kelamin, b.tempat_lahir, b.tanggal_lahir, u.nama from balita b JOIN user u on u.user_id = b.ibu_userId WHERE ((YEAR(CURDATE())-YEAR(b.tanggal_lahir))*12)+(MONTH(CURDATE())-MONTH(b.tanggal_lahir)) < 25";
		ResultSet rs = stmt.executeQuery(query);
		
		List<ReportBalita> reportBalitas = new ArrayList<ReportBalita>();
		while (rs.next()) {
	         
			 ReportBalita reportBalita = new ReportBalita();
			 reportBalita.setNama(rs.getString("b.nama"));
			 reportBalita.setJenisKelamin(rs.getString("b.jenis_kelamin"));
			 reportBalita.setTempatLahir(rs.getString("b.tempat_lahir"));
			 reportBalita.setTanggalLahir(rs.getDate("b.tanggal_lahir"));
			 reportBalita.setIbu(rs.getString("u.nama"));
	         
	         reportBalitas.add(reportBalita);
	         
		}
		
		// Count All Balita
		String balita = "SELECT COUNT(nama) as jumlah FROM balita "
				+ "WHERE ((YEAR(CURDATE())-YEAR(tanggal_lahir))*12)+(MONTH(CURDATE())-MONTH(tanggal_lahir)) < 25";
										
		ResultSet rsBalita = stmt.executeQuery(balita);
		String jumlahBalita = null;
		while (rsBalita.next()) {
			jumlahBalita = rsBalita.getString("jumlah");
		}
		m.addObject("jumlah", jumlahBalita);
		//End Count Balita Perempuan
		
		// Count Balita Laki-laki
		String laki = "SELECT COUNT(nama) as jumlahlaki FROM balita "
				+ "WHERE jenis_kelamin = 'Laki-Laki' "
				+ "AND ((YEAR(CURDATE())-YEAR(tanggal_lahir))*12)+(MONTH(CURDATE())-MONTH(tanggal_lahir)) < 25";
						
		ResultSet rsLaki = stmt.executeQuery(laki);
		String jumlahLaki = null;
		while (rsLaki.next()) {
			jumlahLaki = rsLaki.getString("jumlahlaki");
		}
		
		m.addObject("laki", jumlahLaki);
		//End Count Balita Laki-laki
		
		// Count Balita Perempuan
		String perempuan = "SELECT COUNT(nama) as jumlahPerempuan FROM balita "
				+ "WHERE jenis_kelamin = 'Perempuan' "
				+ "AND ((YEAR(CURDATE())-YEAR(tanggal_lahir))*12)+(MONTH(CURDATE())-MONTH(tanggal_lahir)) < 25";
								
		ResultSet rsPerempuan = stmt.executeQuery(perempuan);
		String jumlahPerempuan = null;
		while (rsPerempuan.next()) {
			jumlahPerempuan = rsPerempuan.getString("jumlahPerempuan");
		}
		m.addObject("perempuan", jumlahPerempuan);
		//End Count Balita Perempuan
        
		m.addObject("kategori", "Balita Umur 0-24 Bulan");
        m.addObject("dataSource", reportBalitas);
        m.addObject("tanggalUpdate", new Date());
        m.addObject("format", "pdf");
        
        if(format != null && !format.isEmpty()){
            m.addObject("format", format);
        }
        
        m.setViewName("report_balita");
        return m;
    }
	
	@RequestMapping("/balita59")
    public ModelAndView balita59(ModelAndView m,
            @RequestParam(value = "format", required = false) String format) throws SQLException{
                
        Connection c = ds.getConnection();
		Statement stmt =c.createStatement();
		String query = "SELECT b.nama, b.jenis_kelamin, b.tempat_lahir, b.tanggal_lahir, u.nama from balita b JOIN user u on u.user_id = b.ibu_userId WHERE ((YEAR(CURDATE())-YEAR(b.tanggal_lahir))*12)+(MONTH(CURDATE())-MONTH(b.tanggal_lahir)) > 24";
		ResultSet rs = stmt.executeQuery(query);
		
		List<ReportBalita> reportBalitas = new ArrayList<ReportBalita>();
		while (rs.next()) {
	         
			 ReportBalita reportBalita = new ReportBalita();
			 reportBalita.setNama(rs.getString("b.nama"));
			 reportBalita.setJenisKelamin(rs.getString("b.jenis_kelamin"));
			 reportBalita.setTempatLahir(rs.getString("b.tempat_lahir"));
			 reportBalita.setTanggalLahir(rs.getDate("b.tanggal_lahir"));
			 reportBalita.setIbu(rs.getString("u.nama"));
	         
	         reportBalitas.add(reportBalita);
	         
		}
		
		// Count All Balita
		String balita = "SELECT COUNT(nama) as jumlah FROM balita "
				+ "WHERE ((YEAR(CURDATE())-YEAR(tanggal_lahir))*12)+(MONTH(CURDATE())-MONTH(tanggal_lahir)) > 24";
										
		ResultSet rsBalita = stmt.executeQuery(balita);
		String jumlahBalita = null;
		while (rsBalita.next()) {
			jumlahBalita = rsBalita.getString("jumlah");
		}
		m.addObject("jumlah", jumlahBalita);
		//End Count Balita Perempuan
		
		// Count Balita Laki-laki
		String laki = "SELECT COUNT(nama) as jumlahlaki FROM balita "
				+ "WHERE jenis_kelamin = 'Laki-Laki' "
				+ "AND ((YEAR(CURDATE())-YEAR(tanggal_lahir))*12)+(MONTH(CURDATE())-MONTH(tanggal_lahir)) > 24";
						
		ResultSet rsLaki = stmt.executeQuery(laki);
		String jumlahLaki = null;
		while (rsLaki.next()) {
			jumlahLaki = rsLaki.getString("jumlahlaki");
		}
		
		m.addObject("laki", jumlahLaki);
		//End Count Balita Laki-laki
		
		// Count Balita Perempuan
		String perempuan = "SELECT COUNT(nama) as jumlahPerempuan FROM balita "
				+ "WHERE jenis_kelamin = 'Perempuan' "
				+ "AND ((YEAR(CURDATE())-YEAR(tanggal_lahir))*12)+(MONTH(CURDATE())-MONTH(tanggal_lahir)) > 24";
								
		ResultSet rsPerempuan = stmt.executeQuery(perempuan);
		String jumlahPerempuan = null;
		while (rsPerempuan.next()) {
			jumlahPerempuan = rsPerempuan.getString("jumlahPerempuan");
		}
		m.addObject("perempuan", jumlahPerempuan);
		//End Count Balita Perempuan
        
		m.addObject("kategori", "Balita Umur 25-59 Bulan");
        m.addObject("dataSource", reportBalitas);
        m.addObject("tanggalUpdate", new Date());
        m.addObject("format", "pdf");
        
        if(format != null && !format.isEmpty()){
            m.addObject("format", format);
        }
        
        m.setViewName("report_balita");
        return m;
    }
    
	
	
}
