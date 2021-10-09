package com.iu.s5;

import java.io.Console;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.iu.s5.restaurant.RestaurantsDTO;
import com.iu.s5.restaurant.RestaurantsService;



/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private RestaurantsService restaurantsService;
	
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home() throws Exception {
		ModelAndView mv = new ModelAndView();
		List<RestaurantsDTO> ar = restaurantsService.getRestaurants();
		
		System.out.println(ar.get(0).getFiles().get(0).getFileName());
		
		mv.addObject("starVal", ar);
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("search")
	public ModelAndView search() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("search/searchList");
		
		return mv;
		
	}
	
	
	

}
