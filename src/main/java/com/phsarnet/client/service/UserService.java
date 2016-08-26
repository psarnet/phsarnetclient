package com.phsarnet.client.service;

import com.phsarnet.client.entities.User;

public interface UserService {	
	public User findUserByName(String username);
	public com.phsarnet.client.entities.test.User findUserByUserId(String userId);
}
