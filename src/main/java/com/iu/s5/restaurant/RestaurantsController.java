package com.iu.s5.restaurant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RestaurantsController {
	
	@Autowired
	private RestaurantsService restaurantsService;
	
	
	
	
	@GetMapping("/search")
	public ModelAndView search() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("search/searchList");
		
		return mv;
		
	}
	
	

}
