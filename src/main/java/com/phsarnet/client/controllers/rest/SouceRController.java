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

import com.phsarnet.client.entities.Source;


@RestController
@RequestMapping("/rest/source")
public class SouceRController {

	@Autowired
	private HttpHeaders httpHeader;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WS_URL;
	
	/**
	 * Request source from API as get
	 * @return source as JSON 
	 */
	@RequestMapping(value="/get-all",method=RequestMethod.GET)
	public ResponseEntity<Map<String,Object>> getAllSource(){
		
		HttpEntity<Object> request = new HttpEntity<Object>(httpHeader);
		ResponseEntity<Map> response = rest.exchange(WS_URL+"/source/", HttpMethod.GET, request,Map.class);
		
		return new ResponseEntity<Map<String,Object>>(response.getBody(),HttpStatus.OK);
	
	}
	

	/**
	 * Post Data to source in API
	 * @param source object
	 * @return source as JSON 
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public ResponseEntity<Map<String,Object>> addSource(@RequestBody Source source){
		
		HttpEntity<Object> request = new HttpEntity<Object>(source, httpHeader);
		ResponseEntity<Map> response = rest.exchange(WS_URL+"/source/", HttpMethod.POST, request,Map.class);
		
		return new ResponseEntity<Map<String,Object>>(response.getBody(),HttpStatus.OK);
	
	}
	
	/**
	 * Update Data from source in API
	 * @param source object
	 * @return source as JSON 
	 */
	@RequestMapping(value="/update",method=RequestMethod.PUT)
	public ResponseEntity<Map<String,Object>> updateSource(@RequestBody Source source){
		
		HttpEntity<Object> request = new HttpEntity<Object>(source, httpHeader);
		ResponseEntity<Map> response = rest.exchange(WS_URL+"/source/", HttpMethod.PUT,request,Map.class);
		
		return new ResponseEntity<Map<String,Object>>(response.getBody(),HttpStatus.OK);
	}
	
	/**
	 * Delete Data from source in API by id
	 * @param id
	 * @return source as JSON 
	 */
	@RequestMapping(value="/delete/{id}",method=RequestMethod.DELETE)
	public ResponseEntity<Map<String,Object>> deleteSource(@PathVariable int id){
		
		HttpEntity<Object> request = new HttpEntity<Object>(httpHeader);
		ResponseEntity<Map> response = rest.exchange(WS_URL+"/source/"+id, HttpMethod.DELETE,request,Map.class);
		
		return new ResponseEntity<Map<String,Object>>(response.getBody(),HttpStatus.OK);
	
	}
}
