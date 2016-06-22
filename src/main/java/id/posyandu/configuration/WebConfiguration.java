package id.posyandu.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class WebConfiguration extends WebMvcConfigurerAdapter{
	@Override
    public void addInterceptors(InterceptorRegistry registry) {
         registry.addInterceptor(new ThymeleafLayoutInterceptor()); //To change body of generated methods, choose Tools | Templates.
    }
}
