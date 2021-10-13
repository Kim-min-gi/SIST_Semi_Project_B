package com.iu.s5.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.iu.s5.review.ReviewDAO.";
	
	
	//리뷰 보기
	public void getReviewList() throws Exception {
	}
	
	//리뷰 수정
	public int setUpdate() throws Exception {
		return 0;
	}
	
	//리뷰 삭제
	public int setDelete(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.delete(NAMESPACE + "setDelete", reviewDTO);
	}
	
	//리뷰 작성
	public int setInsert(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setInsert", reviewDTO);
	}
	
	
}
