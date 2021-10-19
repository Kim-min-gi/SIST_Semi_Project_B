package com.iu.s5.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
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
	public ModelAndView join(MemberDTO memberDTO, MultipartFile photo, HttpSession session) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
		String original = photo.getOriginalFilename();
		String name = photo.getName();
		long size = photo.getSize();
		
		int result = memberService.setJoin(memberDTO, photo, session);
		
		String message = "회원가입 실패";
		if(result>0) {
			message = "회원 가입 성공";
		}

		mv.addObject("msg", message);
		mv.addObject("url", "../");
		mv.setViewName("common/result");
		
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
	
	@GetMapping("login")
	public ModelAndView login() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/login");
		return mv;
	}
	
	@PostMapping("login")
	public ModelAndView login(MemberDTO memberDTO, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		memberDTO = memberService.getLogin(memberDTO);
		
		if(memberDTO != null) {
			System.out.println("로그인 성공");
			session.setAttribute("member", memberDTO);
		} else {
			System.out.println("로그인 실패");
		}
		
		mv.setViewName("redirect:../");
		return mv;
	}
	
	@GetMapping("logout")
	public ModelAndView logout(HttpSession session) throws Exception {
		session.invalidate();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:../");
		return mv;
	}
	
	@GetMapping("mypage")
	public ModelAndView mypage(HttpSession session) throws Exception {
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		MemberFilesDTO memberFilesDTO = memberService.getFile(memberDTO);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("files", memberFilesDTO);
		mv.setViewName("member/mypage");
		return mv;
	}
	
	@GetMapping("delete")
	public ModelAndView setDelete(HttpSession session) throws Exception {
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		int result = memberService.setDelete(memberDTO);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:./logout");
		return mv;
	}
	
	@GetMapping("update")
	public ModelAndView setUpdate() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/update");
		return mv;
	}
	
	@PostMapping("update")
	public ModelAndView setUpdate(MemberDTO memberDTO, HttpSession session) throws Exception {
		MemberDTO sessionDTO = (MemberDTO)session.getAttribute("member");
		
		memberDTO.setId(sessionDTO.getId());
		int result = memberService.setUpdate(memberDTO);
		memberDTO.setName(sessionDTO.getName());
		session.setAttribute("member", memberDTO);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:../");
		return mv;
		
	}
	
}
