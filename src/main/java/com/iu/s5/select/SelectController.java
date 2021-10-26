package com.iu.s5.select;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iu.s5.restaurant.RestaurantsDTO;
import com.iu.s5.review.ReviewDTO;
import com.iu.s5.review.ReviewService;
import com.iu.s5.util.Pager;

@Controller
@RequestMapping("/restaurants/**")
public class SelectController {
	
		@Autowired
		private SelectService selectService;
		
		@Autowired
		private ReviewService reviewService;
	
		//식당 상세페이지
		@GetMapping("select")
		public ModelAndView getSelectRT(com.iu.s5.select.RestaurantsDTO restaurantsDTO) throws Exception {
			ModelAndView mv = new ModelAndView();
			restaurantsDTO = selectService.getSelectRT(restaurantsDTO);
			String category = selectService.getCategoryName(restaurantsDTO);

			mv.addObject("dto", restaurantsDTO);
			mv.addObject("category", category);
			mv.setViewName("restaurants/select");
			return mv;
		}
		
		
		//리뷰 리스트 출력
		@GetMapping("getReviewList")
		public ModelAndView getReview(ReviewDTO reviewDTO, Pager pager) throws Exception {
			ModelAndView mv = new ModelAndView();
			System.out.println("dddd");
			//리뷰
			List<ReviewDTO> ar = reviewService.getReviewList(reviewDTO, pager);
			
			mv.addObject("reviews", ar);
			mv.addObject("pager", pager);
			mv.setViewName("board/reviewList");
			return mv;
		}
		
	
	
}
