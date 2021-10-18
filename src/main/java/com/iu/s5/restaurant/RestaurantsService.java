package com.iu.s5.restaurant;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RestaurantsService {
	
	@Autowired
	private RestaurantsDAO restaurantsDAO;
	
	public List<RestaurantsDTO> getRestaurants() throws Exception{
		return restaurantsDAO.getRestaurants();
	}
	
	
	public List<RestaurantsDTO> getSearchList(SearchsDTO searchsDTO) throws Exception{
		
		
		//카테고리도 찾아 작업 뒤 return해주기. 여기서 말고? controller에서 하는건?
		
		
		//pager 작업도 하기.
		
		
		
		
		return restaurantsDAO.getSearchList(searchsDTO);
		
		
	}
	
	public List<RestCategorysDTO> getCategorys(RestaurantsDTO restaurantsDTO) throws Exception{
		
		return restaurantsDAO.getCategorys(restaurantsDTO);
		
	}
	

}
