package com.iu.s5;

import java.io.Console;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
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

import com.iu.s5.board.community.CommunityDTO;
import com.iu.s5.restaurant.CategoryDTO;
import com.iu.s5.restaurant.RestCategorysDTO;
import com.iu.s5.restaurant.RestaurantsDTO;
import com.iu.s5.restaurant.RestaurantsService;
import com.iu.s5.restaurant.SearchsDTO;
import com.iu.s5.review.ReviewDTO;
import com.iu.s5.util.Pager;



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
		
		CategoryDTO categoryDTO = new CategoryDTO();
		categoryDTO.setCategoryNum(1);
		ModelAndView mv = new ModelAndView();
		List<RestaurantsDTO> ar = restaurantsService.getRestaurants();
		List<CommunityDTO> cr = restaurantsService.getCommunity();
		List<ReviewDTO> rv = restaurantsService.getReview();
		List<RestaurantsDTO> rc1= restaurantsService.getrecommend(categoryDTO);
		categoryDTO.setCategoryNum(2);
		List<RestaurantsDTO> rc2= restaurantsService.getrecommend(categoryDTO);
		categoryDTO.setCategoryNum(3);
		List<RestaurantsDTO> rc3= restaurantsService.getrecommend(categoryDTO);
		categoryDTO.setCategoryNum(4);
		List<RestaurantsDTO> rc4= restaurantsService.getrecommend(categoryDTO);
		categoryDTO.setCategoryNum(5);
		List<RestaurantsDTO> rc5= restaurantsService.getrecommend(categoryDTO);
		
		
		
		mv.addObject("reco1", rc1);
		mv.addObject("reco2", rc2);
		mv.addObject("reco3", rc3);
		mv.addObject("reco4", rc4);
		mv.addObject("reco5", rc5);
		mv.addObject("starVal", ar);
		mv.addObject("Community", cr);
		mv.addObject("review", rv);
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("search")
	public ModelAndView search(SearchsDTO searchsDTO,Pager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<RestaurantsDTO> ar = restaurantsService.getSearchList(searchsDTO, pager);
		List<CommunityDTO> cr = restaurantsService.getSearchCommunity(searchsDTO);
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		
		
		
		
		
		//RestNum을 가져와 카테고리를 가져오는 일
		  for(int i=0;i<ar.size();i++) { 
			  List<RestCategorysDTO> ca = restaurantsService.getCategorys(ar.get(i)); 
			
			  map.put(ar.get(i), ca);
		  
		 
		  }
		 
		 
		
		
		mv.addObject("searchList", ar);
		mv.addObject("map", map);
		mv.addObject("community", cr);
		mv.addObject("pager",pager);
		mv.setViewName("search/searchList");
		
		return mv;
		
	}
	
	
	

}
