package com.iu.s5.restaurant;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RestaurantsDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.iu.s5.restaurant.RestaurantsDAO.";
	
	public List<RestaurantsDTO> getRestaurants() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getRestaurants");
	}
	
	
	public List<RestaurantsDTO> getSearchList(SearchsDTO searchsDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getSearchList",searchsDTO);
	}
	
	public List<RestCategorysDTO> getCategorys(RestaurantsDTO restaurantsDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getCategorys",restaurantsDTO);
	}
	

}
