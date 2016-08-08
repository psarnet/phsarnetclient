package com.phsarnet.client.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class PsarnetWebMvcConfiguration extends WebMvcConfigurerAdapter{
	
	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		
		/**
		 * Redirect to login.jsp
		 */
		registry.addViewController("/login").setViewName("login/login");
		
		/**
		 * access-denied redirect to errors page 
		 */
		registry.addViewController("/access-denied").setViewName("errors/404");
	}
}
