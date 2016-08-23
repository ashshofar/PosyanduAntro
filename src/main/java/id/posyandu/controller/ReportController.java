package id.posyandu.controller;


import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@ComponentScan
public class ReportController {
	
	@RequestMapping(value = {"/report"}, method = RequestMethod.GET)
    public String index(){
        return "/report/index";
    }
    

}
