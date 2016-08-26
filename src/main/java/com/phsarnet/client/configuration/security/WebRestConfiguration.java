package com.phsarnet.client.configuration.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.client.RestTemplate;

@Configuration
@PropertySource(
		value={"classpath:configuration.properties"}
)
public class WebRestConfiguration {
	@Autowired
	Environment environment;
	@Bean
	public RestTemplate restTemplate(){
		RestTemplate restTemplate = new RestTemplate();
		restTemplate.getMessageConverters().add(new MappingJackson2HttpMessageConverter());
		restTemplate.getMessageConverters().add(new StringHttpMessageConverter());
		return restTemplate;
	}
	@Bean
	public String WS_URL(){
		return	environment.getProperty("PHSARNET.API.URL");		
	}
	@Bean
	public String WEB_URL(){
		return environment.getProperty("PHSARNET.URL");
	}
	@Bean
	public String KEY_HEADER(){
		return environment.getProperty("PHSARNET.API.SERECT_HEADER");
	}
	
	
	@Bean(name="KNONGDAI_API_URL")
	public String knongDaiApiUrl(){
		return environment.getProperty("ACCOUNT.API.URL");
	}
	
	@Bean(name="KNONGDAI_API_SECRET_HEADER")
	public HttpHeaders knongDaiSecretHeader(){
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		String credentials = environment.getProperty("ACCOUNT.API.SECRET.HEADER");
		headers.set("Authorization", "Basic " + credentials);
		return headers;
	}
	
}
