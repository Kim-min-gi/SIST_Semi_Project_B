package com.iu.s5.restaurant;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iu.s5.board.community.CommunityDTO;
import com.iu.s5.util.Pager;

@Repository
public class RestaurantsDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.iu.s5.restaurant.RestaurantsDAO.";
	
	public List<RestaurantsDTO> getRestaurants() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getRestaurants");
	}
	
	
	public List<RestaurantsDTO> getSearchList(Map<String, Object> map) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getSearchList",map);
	}
	
	public List<RestCategorysDTO> getCategorys(RestaurantsDTO restaurantsDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getCategorys",restaurantsDTO);
	}
	
	public Long getSearchCount(SearchsDTO searchsDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getSearchCount", searchsDTO);
	}
	
	public List<CommunityDTO> getCommunity() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getCommunity");
	}

}
