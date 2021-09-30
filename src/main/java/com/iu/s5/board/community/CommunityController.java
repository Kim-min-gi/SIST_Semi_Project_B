package com.iu.s5.board.community;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iu.s5.board.BoardDTO;
import com.iu.s5.util.Pager;

@Controller
@RequestMapping("/community/**")
public class CommunityController {

	@Autowired
	private CommunityService communityService;
	
	@GetMapping("select")
	public ModelAndView getSelect(BoardDTO boardDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		CommunityDTO communityDTO = (CommunityDTO) communityService.getSelect(boardDTO);
		
		mv.addObject("dto", communityDTO);
		mv.setViewName("board/select");
		return mv;
	}
	
	
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
