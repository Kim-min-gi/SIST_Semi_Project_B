package com.iu.s5.select;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iu.s5.restaurant.RestaurantsDTO;
import com.iu.s5.review.ReviewFilesDTO;

@Repository
public class SelectDAO {
		
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.iu.s5.select.SelectDAO.";
	
	//리뷰 사진 가져오기
	public List<ReviewFilesDTO> getReviewFiles(com.iu.s5.select.RestaurantsDTO restaurantsDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getReviewFiles", restaurantsDTO);
	}
	
	//카테고리명 호출
	public String getCategoryName(com.iu.s5.select.RestaurantsDTO restaurantsDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getCategoryName", restaurantsDTO);
	}
	
	
	//식당상세페이지
	public com.iu.s5.select.RestaurantsDTO getSelectRT(com.iu.s5.select.RestaurantsDTO restaurantsDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getSelectRT", restaurantsDTO);
	}

}