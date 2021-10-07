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
	

}
