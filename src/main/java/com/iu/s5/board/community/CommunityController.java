package com.iu.s5.board.community;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iu.s5.board.BoardDTO;
import com.iu.s5.util.Pager;

@Controller
@RequestMapping("/community/**")
public class CommunityController {

	@Autowired
	private CommunityService communityService;
	
	
	@ModelAttribute("board")
	public String getBoard() {
		return "community";
	}
	
	@PostMapping("insert")
	public ModelAndView setInsert(CommunityDTO communityDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = communityService.setInsert(communityDTO);
		
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	//글작성 폼
	@GetMapping("insert")
	public ModelAndView setInsert() throws Exception {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("board/insert");
		return mv;
	}
	
	
	//글상세
	@GetMapping("select")
	public ModelAndView getSelect(BoardDTO boardDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		CommunityDTO communityDTO = (CommunityDTO) communityService.getSelect(boardDTO);
		
		mv.addObject("dto", communityDTO);
		mv.setViewName("board/select");
		return mv;
	}
	
	
	//글목록
	@GetMapping("list")
	public ModelAndView getList(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		List<BoardDTO> ar = communityService.getList(pager);
		
		mv.setViewName("board/list");
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		return mv;
	}
	
}
