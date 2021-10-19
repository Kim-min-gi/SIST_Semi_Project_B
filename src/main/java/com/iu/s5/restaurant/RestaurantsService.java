package com.iu.s5.restaurant;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.s5.util.Pager;

@Service
public class RestaurantsService {
	
	@Autowired
	private RestaurantsDAO restaurantsDAO;
	
	public List<RestaurantsDTO> getRestaurants() throws Exception{
		return restaurantsDAO.getRestaurants();
	}
	
	
	public List<RestaurantsDTO> getSearchList(SearchsDTO searchsDTO,Pager pager) throws Exception{
		
		
		//카테고리도 찾아 작업 뒤 return해주기. 여기서 말고? controller에서 하는건?
		/*
		 * List<RestaurantsDTO> ar = restaurantsDAO.getSearchList(searchsDTO, pager);
		 * HashMap<String, Object> map = new HashMap<String, Object>();
		 * 
		 * 
		 * map.put("searchList", ar); map.put("categorys", ca);
		 */
		
		//map.put("pager", pager);
		
		
		
		
		
		
		
		return restaurantsDAO.getSearchList(searchsDTO,pager);
		
		
	}
	
	public List<RestCategorysDTO> getCategorys(RestaurantsDTO restaurantsDTO) throws Exception{
		
		return restaurantsDAO.getCategorys(restaurantsDTO);
		
	}
	

}
