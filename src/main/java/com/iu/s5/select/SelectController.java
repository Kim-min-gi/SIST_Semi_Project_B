package com.iu.s5.select;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import com.iu.s5.board.BoardFileDTO;
import com.iu.s5.member.MemberDTO;
import com.iu.s5.restaurant.RestaurantsDTO;
import com.iu.s5.restaurant.RestaurantsService;
import com.iu.s5.review.ReviewDTO;
import com.iu.s5.review.ReviewFilesDTO;
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
			List<ReviewFilesDTO> images = selectService.getReviewFiles(restaurantsDTO);
			for(int i=0;i<images.size();i++) {
				System.out.println(images.get(i).getFileName());
			}
			
			mv.addObject("dto", restaurantsDTO);
			mv.addObject("category", category);
			mv.addObject("imgs", images);
			mv.setViewName("restaurants/select");
			return mv;
		}
		
		
		
		//리뷰 등록
		@PostMapping("setReview")
		public ModelAndView setReview(ReviewDTO reviewDTO,
				@RequestParam("boardFile") MultipartFile[] reviewFiles, HttpSession session) throws Exception {
			ModelAndView mv = new ModelAndView();
			
			MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
			reviewDTO.setId(memberDTO.getId());
			reviewDTO.setWriter(memberDTO.getName());
			
			System.out.println(reviewDTO.getRating());
			
			int result = reviewService.setInsert(reviewDTO, reviewFiles);
			
			mv.addObject("restNum", reviewDTO.getRestNum());
			mv.setViewName("redirect:./select");
			return mv;
		}
		
		@PostMapping("setReviewUpdate")
		public ModelAndView setReviewUpdate(ReviewDTO reviewDTO, 
				@RequestParam("boardFile") MultipartFile[] boardFiles, HttpServletRequest request) throws Exception {
			ModelAndView mv = new ModelAndView();
			
			System.out.println(reviewDTO.getReviewNum());
			
			//삭제할 파일
			String removeFileNum[] = request.getParameterValues("removeFileNum");
			String removeFileName[] = request.getParameterValues("removeFileName");
			
			//삭제할 파일이 있으면
			if (removeFileNum != null) {
				
				List<ReviewFilesDTO> reviewFilesDTOs = new ArrayList<ReviewFilesDTO>();
				for (int i = 0; i < removeFileNum.length; i++) {
					ReviewFilesDTO reviewFileDTO = new ReviewFilesDTO();
					
					reviewFileDTO.setReviewFilesNum(Long.parseLong(removeFileNum[i]));
					reviewFileDTO.setFileName(removeFileName[i]); 
					
					reviewFilesDTOs.add(reviewFileDTO);
				}
				
				reviewService.setReviewFileDelete(reviewFilesDTOs);
			}
			
			int result = reviewService.setUpdate(reviewDTO, boardFiles);
			
			mv.addObject("restNum", reviewDTO.getRestNum());
			mv.setViewName("redirect:./select");
			return mv;
		}
		
		//리뷰 삭제
		@PostMapping("setReviewDelete")
		@ResponseBody
		public int setDelete(ReviewDTO reviewDTO) throws Exception {
//			ModelAndView mv = new ModelAndView();
			
			int result = reviewService.setDelete(reviewDTO);
			
			return result;
		}
		
		
		//리뷰 리스트 출력
		@GetMapping("getReviewList")
		public ModelAndView getReview(ReviewDTO reviewDTO, Pager pager, @RequestParam("filter") String filter) throws Exception {
			ModelAndView mv = new ModelAndView();
			//리뷰
			List<ReviewDTO> ar = reviewService.getReviewList(reviewDTO, pager, filter);
			
			for (ReviewDTO test : ar) {
				System.out.println(test.getReviewNum());
			}
			
			mv.addObject("reviews", ar);
			mv.addObject("pager", pager);
			mv.addObject("filter", filter);
			mv.setViewName("board/reviewList");
			return mv;
		}
		
	
	
}
