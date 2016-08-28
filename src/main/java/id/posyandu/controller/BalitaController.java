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
import id.posyandu.domain.Berat;
import id.posyandu.domain.Beratantro;
import id.posyandu.domain.ByPt;
import id.posyandu.domain.Tinggi;
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
	public String BeratBalita(@PathVariable("balitaId") String balitaId, 
			Model model){
		
		Balita balita = balitaService.findBalita(balitaId);
		
		model.addAttribute("balita", balita);
		model.addAttribute("beratBalitas", (ArrayList<Berat>) beratService.findAllBeratByIdBalita(balitaId));
		return "/balita/berat";
	}
	
	@RequestMapping(value = "/balita/tinggi/{balitaId}", method = RequestMethod.GET)
	public String TinggiBalita(@PathVariable("balitaId") String balitaId, 
			Model model){
		Balita balita = balitaService.findBalita(balitaId);
		
		model.addAttribute("balita", balita);
		model.addAttribute("tinggiBalitas", (ArrayList<Tinggi>) tinggiService.findAllTinggiByIdBalita(balitaId));
		return "/balita/tinggi";
	}
	
	
	@RequestMapping(value = "/balita/beratumur/{balitaId}", method = RequestMethod.GET)
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
            
            return "/balita/beratumur";
            
            
            
    }
	
	@RequestMapping(value = "/balita/tinggiumur/{balitaId}", method = RequestMethod.GET)
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
        
        return "/balita/tinggiumur";
            
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
	
	@RequestMapping(value = "/balita/beratpanjang/{balitaId}", method = RequestMethod.GET)
    public String BeratPanjang(@PathVariable("balitaId") String balitaId, 
            Model model) throws SQLException {
        
		Balita balita = balitaService.findBalita(balitaId);
        String jenisKelamin = balita.getJenisKelamin();
	
	
		Connection c = ds.getConnection();
		Statement stmt =c.createStatement();
		/*
		String query = "SELECT bt.panjang, bt.median, bt.minus1sd, bt.plus1sd, t.tinggi_balita, t.umur, b.berat_balita "
				+ "FROM beratbadanpanjang bt JOIN tinggi t ON bt.panjang = ROUND(ROUND(t.tinggi_balita * 2) / 2, 1) "
				+ "JOIN berat b ON b.umur = t.umur WHERE bt.jenis_kelamin = '" + jenisKelamin + "' "
				+ "and b.id_balita = '" + balitaId + "' and b.umur < 25 ORDER By t.umur + 0";
		*/
		
		String query = "SELECT bt.panjang, bt.median, bt.minus1sd, bt.plus1sd, t.tinggi_balita, t.umur, b.berat_balita "
				+ "FROM tinggi t JOIN beratbadanpanjang bt ON bt.panjang =  ROUND(ROUND(t.tinggi_balita * 2) / 2, 1) "
				+ "JOIN berat b ON b.umur = t.umur where t.id_balita = '" + balitaId + "' "
				+ "AND b.id_balita = '" + balitaId + "' AND bt.jenis_kelamin = '" + jenisKelamin + "' "
				+ "AND b.umur < 25 AND t.umur < 25 ORDER BY t.umur + 0";
		
		ResultSet rs = stmt.executeQuery(query);
		
		List<ByPt> beratantros = new ArrayList<ByPt>();
		while (rs.next()) {
	         
			 //Float panjangtinggi = rs.getFloat("bt.panjang");
	         Float median = rs.getFloat("bt.median");
	         Float minus = rs.getFloat("bt.minus1sd");
	         Float plus = rs.getFloat("bt.plus1sd");
	         //Float tinggi = rs.getFloat("bt.tinggi_balita");
	         Float berat = rs.getFloat("b.berat_balita");
	         
	         ByPt beratantro = new ByPt();
	         beratantro.setPanjangtinggi("bt.panjang");
	         beratantro.setMedian(rs.getString("bt.median"));
	         beratantro.setMinus(rs.getString("bt.minus1sd"));
	         beratantro.setPlus(rs.getString("bt.plus1sd"));
	         beratantro.setBerat(rs.getString("b.berat_balita"));
	         beratantro.setTinggi(rs.getString("t.tinggi_balita"));
	         beratantro.setUmur(rs.getString("t.umur"));
	         
	         
	         Float z;
	         Float nilai_rujukan;
	         
	         if(berat < median){
	        	 nilai_rujukan = median - minus;
	         }else if(berat > median){
	        	 nilai_rujukan = plus - median;
	         }else{
	        	 nilai_rujukan = median;
	         }
	         		         
	         z = (berat - median) / nilai_rujukan;
	         
	         if(z < -3){
	        	 beratantro.setStatus("Sangat Kurus");
	         }else if(z >= -3 && z < -2){
	        	 beratantro.setStatus("Kurus");
	         }else if(z >= -2 && z <= 2){
	        	 beratantro.setStatus("Normal");
	         }else{
	        	 beratantro.setStatus("Gemuk");
	         }
	         
	         beratantros.add(beratantro);
		}
		
		c.close();
		
		model.addAttribute("balita", balita);
        model.addAttribute("beratBalitas", beratantros);
        
        return "/balita/beratpanjang";
            
    }
	
	@RequestMapping(value = "/balita/berattinggi/{balitaId}", method = RequestMethod.GET)
    public String BeratTinggi(@PathVariable("balitaId") String balitaId, 
            Model model) throws SQLException {
        
		Balita balita = balitaService.findBalita(balitaId);
        String jenisKelamin = balita.getJenisKelamin();
	
	
		Connection c = ds.getConnection();
		Statement stmt =c.createStatement();
		
		/*
		String query = "SELECT bt.tinggi, bt.median, bt.minus1sd, bt.plus1sd, t.tinggi_balita, t.umur, b.berat_balita "
				+ "FROM beratbadantinggi bt JOIN tinggi t ON bt.tinggi = ROUND(ROUND(t.tinggi_balita * 2) / 2, 1) "
				+ "JOIN berat b ON b.umur = t.umur WHERE bt.jenis_kelamin = '" + jenisKelamin + "' "
				+ "and b.id_balita = '" + balitaId + "' and b.umur > 24 ORDER By t.umur + 0";
		*/
		
		String query = "SELECT bt.tinggi, bt.median, bt.minus1sd, bt.plus1sd, t.tinggi_balita, t.umur, b.berat_balita "
				+ "FROM tinggi t JOIN beratbadantinggi bt ON bt.tinggi =  ROUND(ROUND(t.tinggi_balita * 2) / 2, 1) "
				+ "JOIN berat b ON b.umur = t.umur where t.id_balita = '" + balitaId + "' "
				+ "AND b.id_balita = '" + balitaId + "' AND bt.jenis_kelamin = '" + jenisKelamin + "' "
				+ "AND b.umur > 24 AND t.umur > 24 ORDER BY t.umur + 0";
		
		ResultSet rs = stmt.executeQuery(query);
		
		List<ByPt> beratantros = new ArrayList<ByPt>();
		while (rs.next()) {
	         
			 //Float panjangtinggi = rs.getFloat("bt.panjang");
	         Float median = rs.getFloat("bt.median");
	         Float minus = rs.getFloat("bt.minus1sd");
	         Float plus = rs.getFloat("bt.plus1sd");
	         //Float tinggi = rs.getFloat("bt.tinggi_balita");
	         Float berat = rs.getFloat("b.berat_balita");
	         
	         ByPt beratantro = new ByPt();
	         beratantro.setPanjangtinggi("bt.tinggi");
	         beratantro.setMedian(rs.getString("bt.median"));
	         beratantro.setMinus(rs.getString("bt.minus1sd"));
	         beratantro.setPlus(rs.getString("bt.plus1sd"));
	         beratantro.setBerat(rs.getString("b.berat_balita"));
	         beratantro.setTinggi(rs.getString("t.tinggi_balita"));
	         beratantro.setUmur(rs.getString("t.umur"));
	         
	         
	         Float z;
	         Float nilai_rujukan;
	         
	         if(berat < median){
	        	 nilai_rujukan = median - minus;
	         }else if(berat > median){
	        	 nilai_rujukan = plus - median;
	         }else{
	        	 nilai_rujukan = median;
	         }
	         		         
	         z = (berat - median) / nilai_rujukan;
	         
	         if(z < -3){
	        	 beratantro.setStatus("Sangat Kurus");
	         }else if(z >= -3 && z < -2){
	        	 beratantro.setStatus("Kurus");
	         }else if(z >= -2 && z <= 2){
	        	 beratantro.setStatus("Normal");
	         }else{
	        	 beratantro.setStatus("Gemuk");
	         }
	         
	         beratantros.add(beratantro);
		}
		
		c.close();
		
		model.addAttribute("balita", balita);
        model.addAttribute("beratBalitas", beratantros);
        
        return "/balita/berattinggi";
            
    }
}
