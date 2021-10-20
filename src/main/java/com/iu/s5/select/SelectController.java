package com.iu.s5.select;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iu.s5.restaurant.RestaurantsDTO;

@Controller
@RequestMapping("/restaurants/**")
public class SelectController {
	
		@Autowired
		private SelectService selectService;
	
		//식당 상세페이지
		@GetMapping("select")
		public ModelAndView getSelectRT(RestaurantsDTO restaurantsDTO) throws Exception {
			ModelAndView mv = new ModelAndView();
			restaurantsDTO = selectService.getSelectRT(restaurantsDTO);
			mv.addObject("dto", restaurantsDTO);
			mv.setViewName("restaurants/select");
			return mv;
		}
		
	
	
}
