package com.iu.s5.review;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.s5.util.Pager;

@Service
public class ReviewService {

	@Autowired
	private ReviewDAO reviewDAO;
	
	public float getRatingAvg(ReviewDTO reviewDTO) throws Exception {
		return reviewDAO.getRatingAvg(reviewDTO);
	}
	
	public List<ReviewDTO> getReviewList(ReviewDTO reviewDTO, Pager pager) throws Exception {
		long totalCount = reviewDAO.getReviewCount(reviewDTO);
		
		pager.setPerPage(5L);
		pager.makeRow();
		pager.makeNum(totalCount);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("reviews", reviewDTO);
		map.put("pager", pager);
		
		return reviewDAO.getReviewList(map);
	}
	
	public int setUpdate(ReviewDTO reviewDTO) throws Exception {
		return reviewDAO.setUpdate(reviewDTO);
	}
	
	public int setDelete(ReviewDTO reviewDTO) throws Exception {
		return reviewDAO.setDelete(reviewDTO);
	}
	
	public int setInsert(ReviewDTO reviewDTO) throws Exception {
		return reviewDAO.setInsert(reviewDTO);
	}
}
