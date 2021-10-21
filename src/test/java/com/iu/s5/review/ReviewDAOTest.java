package com.iu.s5.review;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.web.WebAppConfiguration;

import com.iu.s5.JunitTest;
import com.iu.s5.util.Pager;

@WebAppConfiguration
public class ReviewDAOTest extends JunitTest {

	@Autowired
	private ReviewDAO reviewDAO;
	
//	@Test
	public void getReviewListTest() throws Exception {
		ReviewDTO reviewDTO = new ReviewDTO();
		Pager pager = new Pager();
		
		reviewDTO.setRestNum(1L);
		
		long totalCount = reviewDAO.getReviewCount(reviewDTO);
		
		pager.setPerPage(5L);
		pager.makeRow();
		pager.makeNum(totalCount);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("reviews", reviewDTO);
		map.put("pager", pager);
		
		List<ReviewDTO> ar = reviewDAO.getReviewList(map);
		
		for (ReviewDTO r : ar) {
			System.out.println(r.getReviewNum());
			System.out.println(r.getContents());
			System.out.println(pager.getPn());
		}
	}
	
//	@Test
	public void getRatingAvg() throws Exception {
		ReviewDTO reviewDTO = new ReviewDTO();
		
		reviewDTO.setRestNum(1L);
		
		float avg = reviewDAO.getRatingAvg(reviewDTO);
		
		System.out.println(avg);
	}
	
	
//	@Test
	public void setDeleteTest() throws Exception {
		ReviewDTO reviewDTO = new ReviewDTO();
		
		reviewDTO.setReviewNum(2L);
		int result = reviewDAO.setDelete(reviewDTO);
		
		assertEquals(1, result);
	}
	
	
//	@Test
	public void setInsertTest() throws Exception {
		ReviewDTO reviewDTO = new ReviewDTO();
		
		reviewDTO.setId("t1");
		reviewDTO.setWriter("t1");
		reviewDTO.setRating(5);
		reviewDTO.setRestNum(1L);
		reviewDTO.setContents("contents");
		
		int result = reviewDAO.setInsert(reviewDTO);
		
		assertEquals(1, result);
	}

}
