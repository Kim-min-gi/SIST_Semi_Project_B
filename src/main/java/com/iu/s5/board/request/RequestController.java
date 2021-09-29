package com.iu.s5.board.request;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iu.s5.board.BoardDTO;

@Controller
@RequestMapping("/request/**")
public class RequestController {
	
	@Autowired
	private RequestService requestService;
	
	@GetMapping("list")
	public ModelAndView getList() throws Exception {
		ModelAndView mv = new ModelAndView();
		List<BoardDTO> ar = requestService.getList();
		
		mv.addObject("list", ar);
		mv.setViewName("board/list");
		
		return mv;
	}
}
