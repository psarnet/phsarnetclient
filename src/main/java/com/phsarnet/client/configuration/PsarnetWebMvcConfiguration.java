package com.phsarnet.client.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class PsarnetWebMvcConfiguration extends WebMvcConfigurerAdapter{
	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		//registry.addViewController("/login").setViewName("login/login");
		registry.addViewController("user/wishlist").setViewName("user/wishlist");
		registry.addViewController("/access-denied").setViewName("errors/403");
		registry.addViewController("/404").setViewName("errors/404");
	}
}
