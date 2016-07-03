package id.posyandu.configuration;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebMvcSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfiguration extends WebSecurityConfigurerAdapter{
	
	private static final String SQL_LOGIN 
    = "select username, password, active as enabled "
    		+ "from user where username = ?";

	private static final String SQL_PERMISSION 
	    ="select u.username, r.nama_jabatan as authority "
	    		+ "from user u join assigment on u.user_id = id_user_userid j"
	    		+ "oin jabatan r on id_jabatan_jabatanid = r.jabatan_id where username = ?";
	
	@Autowired
	private DataSource ds;
		
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception{
	auth
	        .jdbcAuthentication()
	        .dataSource(ds)
	        .passwordEncoder(passwordEncoder())
	        .usersByUsernameQuery(SQL_LOGIN)
	        .authoritiesByUsernameQuery(SQL_PERMISSION);
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception{
	http
	        .authorizeRequests()
	        .antMatchers("/css/*").permitAll()
	        .antMatchers("/js/*").permitAll()
	        .anyRequest().authenticated()
	        .and()
	        .formLogin()
	        .loginPage("/login")
	        .permitAll()
	        .defaultSuccessUrl("/user", true)
	        .and()
	        .logout();
	       // .and()
	       // .exceptionHandling().accessDeniedPage("/403");
	}
	
	@Bean
	public PasswordEncoder passwordEncoder(){
		PasswordEncoder encoder = new BCryptPasswordEncoder();
		return encoder;
	}

}
