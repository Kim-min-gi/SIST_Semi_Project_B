package com.iu.s5.review;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.iu.s5.review.ReviewDAO.";
	
	/* 리뷰 이미지 파일 처리 */
	public int setReviewFile(ReviewFilesDTO reviewFilesDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setReviewFile", reviewFilesDTO);
	}
	
	/* 리뷰 파일 삭제 */
	public int setReviewFileDelete(ReviewFilesDTO reviewFilesDTO) throws Exception {
		return sqlSession.delete(NAMESPACE + "setReviewFileDelete", reviewFilesDTO);
	}
	
	
	//식당별 평균 평점
	public float getRatingAvg(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getRatingAvg", reviewDTO);
	}
	
	//식당 총 리뷰 수
	public Long getReviewCount(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getReviewCount", reviewDTO);
	}
	
	//리뷰 보기
	public List<ReviewDTO> getReviewList(Map<String, Object> map) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getReviewList", map);
	}
	
	//리뷰 수정
	public int setUpdate(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "setUpdate", reviewDTO);
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
