package com.iu.s5.select;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import com.iu.s5.restaurant.RestaurantsDTO;
import com.iu.s5.restaurant.RestaurantsService;
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
		
		
		
		//리뷰 등록
		@PostMapping("setReview")
		public ModelAndView setReview(ReviewDTO reviewDTO,
				@RequestParam("boardFile") MultipartFile[] reviewFiles, HttpServletRequest request) throws Exception {
			ModelAndView mv = new ModelAndView();
			
			//ㄴ ㅏ중에 멤버 세션으로 바꿔놓기
			reviewDTO.setId("t1");
			reviewDTO.setWriter("t1");
			
			System.out.println(reviewDTO.getRating());
			
			int result = reviewService.setInsert(reviewDTO, reviewFiles);
			
			mv.addObject("restNum", reviewDTO.getRestNum());
			mv.setViewName("redirect:./select");
			return mv;
		}
		
		
		//리뷰 리스트 출력
		@GetMapping("getReviewList")
		public ModelAndView getReview(ReviewDTO reviewDTO, Pager pager) throws Exception {
			ModelAndView mv = new ModelAndView();
			//리뷰
			List<ReviewDTO> ar = reviewService.getReviewList(reviewDTO, pager);
			
			mv.addObject("reviews", ar);
			mv.addObject("pager", pager);
			mv.setViewName("board/reviewList");
			return mv;
		}
		
	
	
}
