package com.iu.s5.restaurant;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.s5.JunitTest;

public class RestaurantsDAOtest extends JunitTest {
	
	@Autowired
	private RestaurantsDAO restaurantsDAO;

	@Test
	public void getRestaurantsTest() throws Exception {
		
	
		
		
		
		
		List<RestaurantsDTO> ar = restaurantsDAO.getRestaurants();
		
		assertNotNull(ar);
		
		
		
	}

}
