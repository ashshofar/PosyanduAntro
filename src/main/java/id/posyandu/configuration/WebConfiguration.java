package id.posyandu.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.jasperreports.JasperReportsMultiFormatView;
import org.springframework.web.servlet.view.jasperreports.JasperReportsViewResolver;

@Configuration
public class WebConfiguration extends WebMvcConfigurerAdapter{
	
	@Override
    public void addViewControllers(ViewControllerRegistry registry){
        registry.addViewController("/login").setViewName("login");
        //registry.addViewController("/403").setViewName("403");
    }
	
	@Override
    public void addInterceptors(InterceptorRegistry registry) {
         registry.addInterceptor(new ThymeleafLayoutInterceptor()); //To change body of generated methods, choose Tools | Templates.
    }
	
	@Bean
    public JasperReportsViewResolver getJasperReportsViewResolver() {
        JasperReportsViewResolver resolver = new JasperReportsViewResolver();
        resolver.setPrefix("resources/reports/");
        resolver.setSuffix(".jrxml");
        resolver.setViewNames(new String[] {"report_*"});
        resolver.setViewClass(JasperReportsMultiFormatView.class);
        resolver.setOrder(0);
        return resolver;
    }
}
