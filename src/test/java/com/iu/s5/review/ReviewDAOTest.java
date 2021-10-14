package com.iu.s5.review;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.web.WebAppConfiguration;

import com.iu.s5.JunitTest;

@WebAppConfiguration
public class ReviewDAOTest extends JunitTest {

	@Autowired
	private ReviewDAO reviewDAO;
	
	@Test
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
