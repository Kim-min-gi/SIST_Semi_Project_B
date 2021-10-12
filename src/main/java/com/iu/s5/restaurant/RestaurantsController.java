package com.iu.s5.restaurant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/search/*")
public class RestaurantsController {
	
	@Autowired
	private RestaurantsService restaurantsService;
	
	
	
	
	
	
	

}
