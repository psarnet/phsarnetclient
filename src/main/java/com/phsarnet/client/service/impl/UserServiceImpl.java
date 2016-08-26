package com.phsarnet.client.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.phsarnet.client.entities.Role;
import com.phsarnet.client.entities.User;
import com.phsarnet.client.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	/*@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WS_URL;*/
	
	@Override
	public User findUserByName(String username) {
		//UserLogin login = new UserLogin();
		
		/*System.out.println(username);
		//login.setUsername(username);
		try{
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WS_URL + "/user/find-by-name/"+username, HttpMethod.GET , request , Map.class);
			Map<String, Object> map = (HashMap<String, Object>)response.getBody();
			if(map.get("DATA") != null){
				List<Map<String , Object>> datas = (List<Map<String, Object>>) map.get("DATA");
				List<Role> roles = new ArrayList<>();
				
				for(Map<String, Object> data: datas){
					User u = new User();
					u.setUserid((Integer) data.get("ID"));
					u.setUsername((String)data.get("USERNAME"));
					u.setPassword((String) data.get("PASSWORD"));
					u.setDescription((String) data.get("DESCRIPTION"));
					
					Role role = new Role();
					role.setRole((String)data.get("ROLE"));
					roles.add(role);
					
					u.setRoles(roles);
					return u;
				}
				
			}
		}catch(Exception e){
			System.err.println("err");
			e.printStackTrace();
		}*/
		
		return null;
	}
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	@Qualifier("KNONGDAI_API_SECRET_HEADER")
	private HttpHeaders knongDaiSecretHeader;
	
	
	@Autowired
	@Qualifier("KNONGDAI_API_URL")
	private String knongDaiApiUrl;
	
	@Override
	public com.phsarnet.client.entities.test.User findUserByUserId(String userId) {

		HttpEntity<Object> request = new HttpEntity<Object>(knongDaiSecretHeader);
		
		System.out.println(knongDaiApiUrl+ "/user/"+userId);
		
		ResponseEntity<Map> response = rest.exchange(knongDaiApiUrl+ "/user/"+userId, HttpMethod.POST , request , Map.class) ;
		Map<String, Object> map = (HashMap<String, Object>)response.getBody();
		
		System.out.println(map);
		
		if(map.get("DATA") != null){
			Map<String , Object> data = (HashMap<String , Object>) map.get("DATA");
			com.phsarnet.client.entities.test.User u = new com.phsarnet.client.entities.test.User();
			u.setUserId((Integer)data.get("USER_ID"));
			u.setEmail((String)data.get("EMAIL"));
			u.setUsername((String)data.get("USERNAME"));
			u.setPassword((String) data.get("PASSWORD"));
			List<com.phsarnet.client.entities.test.Role> roles = new ArrayList<com.phsarnet.client.entities.test.Role>();
			List<HashMap<String, Object>> dataRole = (List<HashMap<String, Object>>) data.get("ROLES");
			for (Map<String , Object> datas  : dataRole) {
				com.phsarnet.client.entities.test.Role role = new com.phsarnet.client.entities.test.Role();
				role.setRoleId((Integer)datas.get("ROLE_ID"));
				role.setRoleName((String) datas.get("ROLE_NAME"));
				roles.add(role);
			}
			System.out.println(dataRole);
			u.setRoles(roles);
			System.out.println(map);
			return u;
		}
		return null;
	}
	
	
}
