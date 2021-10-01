package com.iu.s5.restaurant;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.s5.JunitTest;

public class RestaurantsDAOtest extends JunitTest {
	
	@Autowired
	private RestaurantsDAO restaurantsDAO;

	@Test
	public void getRestaurantsTest() throws Exception {
		
		RestaurantsDTO restaurantsDTO = new RestaurantsDTO();
		restaurantsDTO.setRestNum(21L);
		
		
		
		restaurantsDTO = restaurantsDAO.getRestaurants(restaurantsDTO);
		
		assertNotNull(restaurantsDTO);
		
		
		
	}

}
