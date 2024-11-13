package com.nit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {
	
	@GetMapping("/")
	public String home()
	{
		return "home";
	}
	
	@GetMapping("/view")
	public String view()
	{
		return "view";
	}
	@GetMapping("/show")
	public String show()
	{
		return "show";
	}

}
