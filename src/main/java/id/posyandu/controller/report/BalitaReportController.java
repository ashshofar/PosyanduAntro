package id.posyandu.controller.report;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import id.posyandu.service.BalitaService;
import id.posyandu.domain.Balita;

@Controller
public class BalitaReportController {
	
	@Autowired
	BalitaService balitaService;
	
	@RequestMapping("/balitareport")
    public ModelAndView generateReportMateri(ModelAndView m, 
            @RequestParam(value = "format", required = false) String format){
        Iterable<Balita> data = balitaService.getAllBalitas();
        m.addObject("dataSource", data);
        m.addObject("tanggalCetak", new Date());
        m.addObject("format", "pdf");
        
        if(format != null && !format.isEmpty()){
            m.addObject("format", format);
        }
        
        m.setViewName("report_balita");
        return m;
    }
}
