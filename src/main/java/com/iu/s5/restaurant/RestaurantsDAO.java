package com.iu.s5.restaurant;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RestaurantsDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.iu.s5.restaurant.RestaurantsDAO.";
	
	public RestaurantsDTO getRestaurants(RestaurantsDTO restaurantsDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getRestaurants",restaurantsDTO);
	}
	
	

}
