package com.iu.s5.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/**")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	//회원가입 전 약관동의 페이지
	@GetMapping("check")
	public ModelAndView check() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/check");
		return mv;
	}
	
	//회원가입 페이지
	@GetMapping("join")
	public ModelAndView join() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/join");
		return mv;
	}
	
	@PostMapping("join")
	public ModelAndView join(MemberDTO memberDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = memberService.setJoin(memberDTO);
		mv.setViewName("redirect:../");
		return mv;
	}
	
	@GetMapping("idCheck")
	public ModelAndView getIdCheck(MemberDTO memberDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		memberDTO = memberService.getIdCheck(memberDTO);
		System.out.println("ID중복 체크");
		
		mv.addObject("dto", memberDTO);
		mv.setViewName("member/idCheck");
		return mv;
	}
}
