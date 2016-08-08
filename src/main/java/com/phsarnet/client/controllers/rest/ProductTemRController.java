package com.phsarnet.client.controllers.rest;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.phsarnet.client.entities.History;

@RestController
@RequestMapping("/rest/product-temperory")
public class ProductTemRController {
	
	@Autowired
	private HttpHeaders httpHeader;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WS_URL;
	
	/**
	 * Request product from API as get
	 * @return product as JSON 
	 */
	@RequestMapping(value="/get-all",method=RequestMethod.GET)
	public ResponseEntity<Map<String,Object>> getAllProductTemperory(){
		
		HttpEntity<Object> request = new HttpEntity<Object>(httpHeader);
		ResponseEntity<Map> response = rest.exchange(WS_URL+"/product-temperory/", HttpMethod.GET, request,Map.class);
		
		return new ResponseEntity<Map<String,Object>>(response.getBody(),HttpStatus.OK);
	
	}
	
	
	/**
	 * Delete Data from product temperory in API by id
	 * @param id
	 * @return product temperory as JSON 
	 */
	@RequestMapping(value="/delete/{id}",method=RequestMethod.DELETE)
	public ResponseEntity<Map<String,Object>> deleteProductTemperory(@PathVariable int id){
		
		HttpEntity<Object> request = new HttpEntity<Object>(httpHeader);
		ResponseEntity<Map> response = rest.exchange(WS_URL+"/product-temperory/"+id, HttpMethod.DELETE, request,Map.class);
		
		return new ResponseEntity<Map<String,Object>>(response.getBody(),HttpStatus.OK);
	
	}
	
}
