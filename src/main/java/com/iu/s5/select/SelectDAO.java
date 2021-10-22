package com.iu.s5.select;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iu.s5.restaurant.RestaurantsDTO;

@Repository
public class SelectDAO {
		
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.iu.s5.select.SelectDAO.";
	
	
	//식당상세페이지
	public com.iu.s5.select.RestaurantsDTO getSelectRT(com.iu.s5.select.RestaurantsDTO restaurantsDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getSelectRT", restaurantsDTO);
	}

}
