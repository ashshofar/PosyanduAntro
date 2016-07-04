package id.posyandu.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import id.posyandu.domain.Balita;
import id.posyandu.domain.Beratantro;
import id.posyandu.domain.User;
import id.posyandu.service.BalitaService;
import id.posyandu.service.BeratService;
import id.posyandu.service.TinggiService;
import id.posyandu.service.UserService;


@Controller
@ComponentScan
public class BalitaController {
	
	@Autowired
    UserService userService;
	
	@Autowired
	BalitaService balitaService;
	
	@Autowired
	TinggiService tinggiService;
	
	@Autowired
	BeratService beratService;
	
	@Autowired
	DataSource ds;
	

	@InitBinder
    public void initBinder(WebDataBinder binder){
        SimpleDateFormat dateFormat = new SimpleDateFormat("MM-dd-yyyy");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }
	
	@RequestMapping(value = {"/balita"}, method = RequestMethod.GET)
    public String index(Model model) {
        
        model.addAttribute("allBalitas", (ArrayList<Balita>) balitaService.getAllBalitas());
        model.addAttribute("allUsers", (Collection<User>) userService.getAllUsers());
        return "/balita/index";
    }
	
	@RequestMapping(value = "/balita/create", method = RequestMethod.GET)
    public String viewForm(Model model){
        
       model.addAttribute("balita", new Balita());
       model.addAttribute("allAyahs", (Collection<User>) userService.getAllAyahs());
       model.addAttribute("allIbus", (Collection<User>) userService.getAllIbus());
        
        return "/balita/create";
    }
	
	@RequestMapping(value = {"/balita/save"}, method = RequestMethod.POST)
    public String saveBalita(@ModelAttribute("balita") Balita balita,
    		
            final RedirectAttributes redirectAttributes) {

        if (balitaService.saveBalita(balita) != null) {
            redirectAttributes.addFlashAttribute("save", "success");
        } else {
            redirectAttributes.addFlashAttribute("save", "unsuccess");
        }
        
        return "redirect:/balita";
    }
	
	@RequestMapping(value = "/balita/{operation}/{balitaId}", method = RequestMethod.GET)
    public String editRemoveBalita(@PathVariable("operation") String operation,
            @PathVariable("balitaId") String balitaId, final RedirectAttributes redirectAttributes,
            Model model) {
        if (operation.equals("delete")) {
            if (balitaService.deleteBalita(balitaId)) {
                redirectAttributes.addFlashAttribute("deletion", "success");
            } else {
                redirectAttributes.addFlashAttribute("deletion", "unsuccess");
            }
        } else if (operation.equals("edit")) {
            Balita balita = balitaService.findBalita(balitaId);
            if (balita != null) {
                model.addAttribute("balita", balita);
                model.addAttribute("allAyahs", (Collection<User>) userService.getAllAyahs());
                model.addAttribute("allIbus", (Collection<User>) userService.getAllIbus());
                return "/balita/edit";
            } else {
                redirectAttributes.addFlashAttribute("status", "notfound");
            }
        } else if (operation.equals("view")) {
            Balita balita = balitaService.findBalita(balitaId);
            if (balita != null) {
                model.addAttribute("balita", balita);
                return "/balita/view";
            } else {
                redirectAttributes.addFlashAttribute("status", "notfound");
            }
        }

        return "redirect:/balita";
    }
	
	@RequestMapping(value = "/balita/update/{balitaId}", method = RequestMethod.POST)
	public String updateBalita(@PathVariable("balitaId") String balitaId, 
	    		Balita balita, 
	    		final RedirectAttributes redirectAttributes){
	    	
	    	balita.setBalitaId(balitaId);
	    		    	
	    	
	    	if (balitaService.saveBalita(balita) != null) {
	            redirectAttributes.addFlashAttribute("edit", "success");
	        } else {
	            redirectAttributes.addFlashAttribute("edit", "unsuccess");
	        }
	    	
	    	return "redirect:/balita";
	    }
	
	@RequestMapping(value = "/balita/berat/{balitaId}", method = RequestMethod.GET)
    public String BeratByUmur(@PathVariable("balitaId") String balitaId, 
            Model model) throws SQLException {
			
			Balita balita = balitaService.findBalita(balitaId);
	        String jenisKelamin = balita.getJenisKelamin();
		
		
			Connection c = ds.getConnection();
			Statement stmt =c.createStatement();
			String query = "SELECT b.berat_id, b.berat_balita, b.id_balita, b.umur, bbu.median, bbu.minus1sd, bbu.plus1sd FROM berat b join beratbadanumur bbu on b.umur = bbu.umur "
					+ "where b.id_balita = '" + balitaId + "' and bbu.jenis_kelamin = '" + jenisKelamin + "' ";
			ResultSet rs = stmt.executeQuery(query);
			
			List<Beratantro> beratantros = new ArrayList<Beratantro>();
			while (rs.next()) {
		         
				 Float berat_balita = rs.getFloat("b.berat_balita");
		         Float median = rs.getFloat("bbu.median");
		         Float minus = rs.getFloat("bbu.minus1sd");
		         Float plus = rs.getFloat("bbu.plus1sd");
		         
		         Beratantro beratantro = new Beratantro();
		         beratantro.setBerat(rs.getString("b.berat_balita"));
		         beratantro.setUmur(rs.getString("b.umur"));
		         beratantro.setMedian(rs.getString("bbu.median"));
		         beratantro.setMinus(rs.getString("bbu.minus1sd"));
		         beratantro.setPlus(rs.getString("bbu.plus1sd"));
		         
		         Float z;
		         Float nilai_rujukan;
		         
		         if(berat_balita < median){
		        	 nilai_rujukan = median - minus;
		         }else if(berat_balita > median){
		        	 nilai_rujukan = plus - median;
		         }else{
		        	 nilai_rujukan = median;
		         }
		         		         
		         z = (berat_balita - median) / nilai_rujukan;
		         
		         if(z < -3){
		        	 beratantro.setStatus("Gizi Buruk");
		         }else if(z >= -3 && z < -2){
		        	 beratantro.setStatus("Gizi Kurang");
		         }else if(z >= -2 && z <= 2){
		        	 beratantro.setStatus("Gizi Baik");
		         }else{
		        	 beratantro.setStatus("Gizi Lebih");
		         }
		         
		         beratantros.add(beratantro);
			}
			
			c.close();
			
			model.addAttribute("balita", balita);
            model.addAttribute("beratBalitas", beratantros);
            
            return "/balita/berat";
            
            
            
    }
	
	@RequestMapping(value = "/balita/tinggi/{balitaId}", method = RequestMethod.GET)
    public String TinggiByUmur(@PathVariable("balitaId") String balitaId, 
            Model model) throws SQLException {
        
		Balita balita = balitaService.findBalita(balitaId);
        String jenisKelamin = balita.getJenisKelamin();
	
	
		Connection c = ds.getConnection();
		Statement stmt =c.createStatement();
		String query = "SELECT b.tinggi_id, b.tinggi_balita, b.id_balita, b.umur, bbu.median, bbu.minus1sd, bbu.plus1sd FROM tinggi b join tinggibadanumur bbu on b.umur = bbu.umur "
				+ "where b.umur > '24' and b.id_balita = '" + balitaId + "' and bbu.jenis_kelamin = '" + jenisKelamin + "' ";
		ResultSet rs = stmt.executeQuery(query);
		
		List<Beratantro> beratantros = new ArrayList<Beratantro>();
		while (rs.next()) {
	         
			 Float tinggi_balita = rs.getFloat("b.tinggi_balita");
	         Float median = rs.getFloat("bbu.median");
	         Float minus = rs.getFloat("bbu.minus1sd");
	         Float plus = rs.getFloat("bbu.plus1sd");
	         
	         Beratantro beratantro = new Beratantro();
	         beratantro.setBerat(rs.getString("b.tinggi_balita"));
	         beratantro.setUmur(rs.getString("b.umur"));
	         beratantro.setMedian(rs.getString("bbu.median"));
	         beratantro.setMinus(rs.getString("bbu.minus1sd"));
	         beratantro.setPlus(rs.getString("bbu.plus1sd"));
	         
	         Float z;
	         Float nilai_rujukan;
	         
	         if(tinggi_balita < median){
	        	 nilai_rujukan = median - minus;
	         }else if(tinggi_balita > median){
	        	 nilai_rujukan = plus - median;
	         }else{
	        	 nilai_rujukan = median;
	         }
	         		         
	         z = (tinggi_balita - median) / nilai_rujukan;
	         
	         if(z < -3){
	        	 beratantro.setStatus("Sangat Pendek");
	         }else if(z >= -3 && z < -2){
	        	 beratantro.setStatus("Pendek");
	         }else if(z >= -2 && z <= 2){
	        	 beratantro.setStatus("Normal");
	         }else{
	        	 beratantro.setStatus("Tinggi");
	         }
	         
	         beratantros.add(beratantro);
		}
		
		c.close();
		
		model.addAttribute("balita", balita);
        model.addAttribute("beratBalitas", beratantros);
        
        return "/balita/tinggi";
            
    }
	
	@RequestMapping(value = "/balita/panjang/{balitaId}", method = RequestMethod.GET)
    public String PanjangByUmur(@PathVariable("balitaId") String balitaId, 
            Model model) throws SQLException {
        
		Balita balita = balitaService.findBalita(balitaId);
        String jenisKelamin = balita.getJenisKelamin();
	
	
		Connection c = ds.getConnection();
		Statement stmt =c.createStatement();
		String query = "SELECT b.tinggi_id, b.tinggi_balita, b.id_balita, b.umur, bbu.median, bbu.minus1sd, bbu.plus1sd FROM tinggi b join panjangbadanumur bbu on b.umur = bbu.umur "
				+ "where b.umur > '0' and b.id_balita = '" + balitaId + "' and bbu.jenis_kelamin = '" + jenisKelamin + "' ";
		ResultSet rs = stmt.executeQuery(query);
		
		List<Beratantro> beratantros = new ArrayList<Beratantro>();
		while (rs.next()) {
	         
			 Float panjang_balita = rs.getFloat("b.tinggi_balita");
	         Float median = rs.getFloat("bbu.median");
	         Float minus = rs.getFloat("bbu.minus1sd");
	         Float plus = rs.getFloat("bbu.plus1sd");
	         
	         Beratantro beratantro = new Beratantro();
	         beratantro.setBerat(rs.getString("b.tinggi_balita"));
	         beratantro.setUmur(rs.getString("b.umur"));
	         beratantro.setMedian(rs.getString("bbu.median"));
	         beratantro.setMinus(rs.getString("bbu.minus1sd"));
	         beratantro.setPlus(rs.getString("bbu.plus1sd"));
	         
	         Float z;
	         Float nilai_rujukan;
	         
	         if(panjang_balita < median){
	        	 nilai_rujukan = median - minus;
	         }else if(panjang_balita > median){
	        	 nilai_rujukan = plus - median;
	         }else{
	        	 nilai_rujukan = median;
	         }
	         		         
	         z = (panjang_balita - median) / nilai_rujukan;
	         
	         if(z < -3){
	        	 beratantro.setStatus("Sangat Pendek");
	         }else if(z >= -3 && z < -2){
	        	 beratantro.setStatus("Pendek");
	         }else if(z >= -2 && z <= 2){
	        	 beratantro.setStatus("Normal");
	         }else{
	        	 beratantro.setStatus("Tinggi");
	         }
	         
	         beratantros.add(beratantro);
		}
		
		c.close();
		
		model.addAttribute("balita", balita);
        model.addAttribute("beratBalitas", beratantros);
        
        return "/balita/panjang";
            
    }
}
