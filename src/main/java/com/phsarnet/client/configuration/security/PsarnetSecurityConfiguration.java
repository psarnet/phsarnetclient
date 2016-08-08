package com.phsarnet.client.configuration.security;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;


@Configuration
@EnableWebSecurity
public class PsarnetSecurityConfiguration extends WebSecurityConfigurerAdapter{
	
	@Autowired
	@Qualifier(value="ajaxAuthenticationSuccessHandler")
	private AjaxAuthenticationSuccessHandler ajaxAuthenticationSuccessHandler;
	
	@Autowired
	@Qualifier(value="ajaxAuthenticationFailureHandler")
	private AjaxAuthenticationFailureHandler ajaxAuthenticationFailureHandler;

	
	@Autowired
	protected void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("a").password("a").roles("admin");
		auth.inMemoryAuthentication().withUser("b").password("b").roles("user");
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.authorizeRequests()
			.antMatchers("/","/home/**", "/index")
			.permitAll()
			.antMatchers("/admin/**").hasRole("admin");
		http
			.formLogin()
			.loginPage("/login")
			.usernameParameter("username")
			.passwordParameter("password")
			.permitAll()
			.failureHandler(ajaxAuthenticationFailureHandler)
			.successHandler(ajaxAuthenticationSuccessHandler);
		
		http 
			.logout()
			.logoutUrl("/logout")
			.logoutSuccessUrl("/logout?success")
			.invalidateHttpSession(true)
			.deleteCookies("JESSIONID")
			.permitAll();
		http.csrf().disable();
		http.exceptionHandling().accessDeniedPage("/access-denied");
	}
	
}
