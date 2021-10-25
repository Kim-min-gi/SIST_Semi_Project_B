package com.iu.s5.restaurant;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.s5.board.community.CommunityDTO;
import com.iu.s5.util.Pager;

@Service
public class RestaurantsService {
	
	@Autowired
	private RestaurantsDAO restaurantsDAO;
	
	public List<RestaurantsDTO> getRestaurants() throws Exception{
		return restaurantsDAO.getRestaurants();
	}
	
	
	public List<RestaurantsDTO> getSearchList(SearchsDTO searchsDTO,Pager pager) throws Exception{
		
		
		pager.setPerPage(10L);
		pager.makeRow();
		pager.makeNum(restaurantsDAO.getSearchCount(searchsDTO));
		//map.put("pager", pager);
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("search", searchsDTO);
		map.put("pager", pager);
		
		
		
		
		return restaurantsDAO.getSearchList(map);
		
		
	}
	
	public List<RestCategorysDTO> getCategorys(RestaurantsDTO restaurantsDTO) throws Exception{
		
		return restaurantsDAO.getCategorys(restaurantsDTO);
		
	}
	
	public List<CommunityDTO> getCommunity() throws Exception{
		return restaurantsDAO.getCommunity();
	}
	
	public List<CommunityDTO> getSearchCommunity(SearchsDTO searchsDTO) throws Exception{
		return restaurantsDAO.getSearchCommunity(searchsDTO);
	}
	

}
