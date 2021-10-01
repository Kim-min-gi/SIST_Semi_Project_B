package com.iu.s5.restaurant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RestaurantsService {
	
	@Autowired
	private RestaurantsDAO restaurantsDAO;
	
	public RestaurantsDTO getRestaurants(RestaurantsDTO restaurantsDTO) throws Exception{
		return restaurantsDAO.getRestaurants(restaurantsDTO);
	}
	

}
