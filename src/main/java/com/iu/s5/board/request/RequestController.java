package com.iu.s5.board.request;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/request/**")
public class RequestController {
	
	@GetMapping("list")
	public ModelAndView getList() {
		ModelAndView mv = new ModelAndView();
		
		
		return mv;
	}
}
