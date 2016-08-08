package com.phsarnet.client.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin")
public class AdminController {

	
	/*
	 * Request dashboard page
	 */
	@RequestMapping(value="/dashboard", method = RequestMethod.GET)
	public String dashboard(ModelMap m)
	{
		m.addAttribute("title", "Dashboard");
		return "admin/dashboard";
	}
	
	/*
	 * Request user page
	 */
	@RequestMapping(value="/user", method = RequestMethod.GET)
	public String user(ModelMap m)
	{
		m.addAttribute("title", "Admin >> User");
		return "admin/user";
	}
	
	/*
	 * Request user page
	 */
	@RequestMapping(value="/changepassword", method = RequestMethod.GET)
	public String changePassword(ModelMap m)
	{
		m.addAttribute("title", "Admin >> Password");
		return "admin/changepassword";
	}
	
	/*
	 * Request source page
	 */
	@RequestMapping(value="/source", method = RequestMethod.GET)
	public String source(ModelMap m)
	{
		m.addAttribute("title", "Admin >> Source");
		return "admin/source";
	}
	
	/*
	 * Request source-category page
	 */
	@RequestMapping(value="/sourcecategory", method = RequestMethod.GET)
	public String sourceCategory(ModelMap m)
	{
		m.addAttribute("title", "Admin >> Source-Category");
		return "admin/sourcecategory";
	}
	
	/*
	 * Request main-category page
	 */
	@RequestMapping(value="/maincategory", method = RequestMethod.GET)
	public String mainCategory(ModelMap m)
	{
		m.addAttribute("title", "Admin >> Main-Category");
		return "admin/maincategory";
	}
	
	/*
	 * Request sub-one-category page
	 */
	@RequestMapping(value="/subonecategory", method = RequestMethod.GET)
	public String subOneCategory(ModelMap m)
	{
		m.addAttribute("title", "Admin >> Sub-One-Category");
		return "admin/subonecategory";
	}
	
	/*
	 * Request sub-two-category page
	 */
	@RequestMapping(value="/subtwocategory", method = RequestMethod.GET)
	public String subTwoCategory(ModelMap m)
	{
		m.addAttribute("title", "Admin >> Sub-two-Category");
		return "admin/subtwocategory";
	}
	
	/*
	 * Request add-module page
	 */
	@RequestMapping(value="/addmodule", method = RequestMethod.GET)
	public String addModule(ModelMap m)
	{
		m.addAttribute("title", "Admin >> Add-Module");
		return "admin/addmodule";
	}
	
	/*
	 * Request map-category page
	 */
	@RequestMapping(value="/mapcategory", method = RequestMethod.GET)
	public String mapCategory(ModelMap m)
	{
		m.addAttribute("title", "Admin >> Mapping-Category");
		return "admin/mapcategory";
	}
	
}
