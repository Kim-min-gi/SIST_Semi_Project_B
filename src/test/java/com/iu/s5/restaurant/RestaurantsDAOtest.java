package com.iu.s5.restaurant;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.s5.JunitTest;

public class RestaurantsDAOtest extends JunitTest {
	
	@Autowired
	private RestaurantsDAO restaurantsDAO;

	
	
	//@Test
	public void getSearchListTest() throws Exception{
		
//		SearchsDTO searchsDTO = new SearchsDTO();
//		
//		searchsDTO.setSearch("갈비");
//		
//		List<RestaurantsDTO> ar = restaurantsDAO.getSearchList(searchsDTO);
//			
//		
//		assertEquals(true, ar.isEmpty());
				
	}
	
	
	//@Test
	public void getSearchCountTest() throws Exception  {
		
		SearchsDTO searchsDTO = new SearchsDTO();
		
		searchsDTO.setSearch("갈비");
		
		int result = restaurantsDAO.getSearchCount(searchsDTO).intValue();
		
		assertNotEquals(0, result);
		
		
	}
	
	
	@Test
	public void getCategorysTest() throws Exception{
		
		RestaurantsDTO restaurantsDTO = new RestaurantsDTO();
		
		restaurantsDTO.setRestNum(67L);
		
		List<RestCategorysDTO> ar = restaurantsDAO.getCategorys(restaurantsDTO);
		
		assertEquals(true, ar.isEmpty());
			
		
	}
	
	
	
	
	//@Test
	public void getRestaurantsTest() throws Exception {
		
	
		
		
		
		
		List<RestaurantsDTO> ar = restaurantsDAO.getRestaurants();
		
		assertNotNull(ar);
		
		
		
	}

}
