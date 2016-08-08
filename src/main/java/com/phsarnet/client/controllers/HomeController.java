package com.phsarnet.client.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value={"/","/home","/index"})
public class HomeController {
	
	/*
	 * Request home page
	 */
	@RequestMapping(value="", method = RequestMethod.GET)
	public String home(ModelMap m){
		m.addAttribute("title", "Home");
		return "home/index";
	}
}
