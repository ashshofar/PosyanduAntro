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
	
	@RequestMapping("/balita")
    public ModelAndView generateReportMateri(ModelAndView m, 
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
        
        m.addObject("dataSource", reportBalitas);
        m.addObject("tanggalUpdate", new Date());
        m.addObject("format", "pdf");
        
        if(format != null && !format.isEmpty()){
            m.addObject("format", format);
        }
        
        m.setViewName("report_balita3");
        return m;
    }
	
	
}
