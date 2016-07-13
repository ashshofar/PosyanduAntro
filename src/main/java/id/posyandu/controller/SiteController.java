package id.posyandu.controller;

import java.security.Principal;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import id.posyandu.domain.User;
import id.posyandu.domain.Balita;
import id.posyandu.repositories.UserRepository;
import id.posyandu.service.BalitaService;
import id.posyandu.service.UserService;

@Controller
@ComponentScan
public class SiteController {
	
	@Autowired
	DataSource ds;
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	UserService userService;
	
	@Autowired
	BalitaService balitaService;
	
	//@PreAuthorize("hasAnyAuthority('Admin')")
	@RequestMapping(value = {"/dashboard"}, method = RequestMethod.GET)
	public String dashboard(Model model) throws SQLException {
		
		//Authentication authentication  = SecurityContextHolder.getContext().getAuthentication();
		//User user = (User)authentication.getPrincipal();
		//String userId = user.getUserId();
		
		
		Connection c = ds.getConnection();
		Statement stmt = c.createStatement();
		
		// Count Orangtua
		String queryOrangtua = "SELECT COUNT(nama) as jumlahorangtua FROM user JOIN assigment on user_id = id_user_userId "
				+ "WHERE id_jabatan_jabatanId = 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71'";
		
		ResultSet rsOrangtua = stmt.executeQuery(queryOrangtua);
		String jumlahOrangtua = null;
		while (rsOrangtua.next()) {
			jumlahOrangtua = rsOrangtua.getString("jumlahorangtua");
		}
		model.addAttribute("jumlahorangtua", jumlahOrangtua);
		//End Count Orangtua
		
		// Count Balita Laki-laki
		String laki = "SELECT COUNT(nama) as jumlahlaki FROM balita "
						+ "WHERE jenis_kelamin = 'Laki-Laki'";
				
		ResultSet rsLaki = stmt.executeQuery(laki);
		String jumlahLaki = null;
		while (rsLaki.next()) {
			jumlahLaki = rsLaki.getString("jumlahlaki");
		}
		model.addAttribute("jumlahlaki", jumlahLaki);
		//End Count Balita Laki-laki
		
		// Count Balita Perempuan
		String perempuan = "SELECT COUNT(nama) as jumlahPerempuan FROM balita "
						+ "WHERE jenis_kelamin = 'Perempuan'";
						
		ResultSet rsPerempuan = stmt.executeQuery(perempuan);
		String jumlahPerempuan = null;
		while (rsPerempuan.next()) {
			jumlahPerempuan = rsPerempuan.getString("jumlahPerempuan");
		}
		model.addAttribute("jumlahperempuan", jumlahPerempuan);
		//End Count Balita Perempuan
		
		// Count Balita Perempuan
		String balita = "SELECT COUNT(nama) as jumlah FROM balita ";
								
		ResultSet rsBalita = stmt.executeQuery(balita);
		String jumlahBalita = null;
		while (rsBalita.next()) {
			jumlahBalita = rsBalita.getString("jumlah");
		}
		model.addAttribute("jumlahbalita", jumlahBalita);
		//End Count Balita Perempuan
		
		//model.addAttribute("allBalitas", (ArrayList<Balita>) balitaService.getBalitasByOrangTua(userId, userId));
		model.addAttribute("allBalitas", (ArrayList<Balita>) balitaService.getAllBalitas());
		
		return "site/dashboard";
	}
	
	
	@RequestMapping(value = {"/account"}, method = RequestMethod.GET)
	public String Account(Principal principal, Model model){
		String username = principal.getName();
		
		User user = userRepository.findByUsername(username);
		
		model.addAttribute("allBalitas", (ArrayList<Balita>) balitaService.getBalitasByOrangTua(user.getUserId(), user.getUserId()));
		
		
		return "user/account";
	}
}
