package com.iu.s5.board.community;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.iu.s5.board.BoardDTO;
import com.iu.s5.board.BoardFileDTO;
import com.iu.s5.board.CommentsDTO;
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
	
	//댓글 수정
	@PostMapping("setCommentUpdate")
	@ResponseBody
	public int setCommentUpdate(CommentsDTO commentsDTO) throws Exception {
		int result = communityService.setCommentUpdate(commentsDTO);
		
		return result;
	}
	
	
	//댓글 삭제
	@GetMapping("setCommentDelete")
	@ResponseBody
	public int setCommentDelete(CommentsDTO commentsDTO) throws Exception {
		int result = communityService.setCommentDelete(commentsDTO);

		return result;
	}
	
	
	//댓글 목록 리스트
	@GetMapping("getCommentList")
	public ModelAndView getCommentList(CommentsDTO commentsDTO, Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		commentsDTO.setBoard("C");
		
		List<CommentsDTO> ar = communityService.getCommentsList(commentsDTO, pager);
		
		mv.addObject("comments", ar);
		mv.addObject("pager", pager);
		mv.setViewName("board/commentList");
		return mv;
	}
	
	//댓글 작성
	@PostMapping("comment")
	public ModelAndView setComment(CommentsDTO commentsDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		commentsDTO.setBoard("C");
		int result = communityService.setComment(commentsDTO);
		return mv;
	}
	
	
	//글 수정
	@PostMapping("update")
	public ModelAndView setUpdate() throws Exception {
		ModelAndView mv = new ModelAndView();
		
		
		
		return mv;
	}
	
	
	//글 수정폼
	@GetMapping("update")
	public ModelAndView setUpdate(CommunityDTO communityDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		communityDTO = (CommunityDTO) communityService.getSelect(communityDTO);
		
		mv.addObject("dto", communityDTO);
		mv.setViewName("board/update");
		return mv;
	}
	
	
	//글 삭제
	@GetMapping("delete")
	public ModelAndView setDelete(BoardDTO boardDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = communityService.setDelete(boardDTO);
		
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	//글 작성
	@PostMapping("insert")
	public ModelAndView setInsert(CommunityDTO communityDTO, @RequestParam("boardFile") MultipartFile[] boardFiles) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		
		//fileName test..
		for (MultipartFile f : boardFiles) {
			System.out.println(f.getOriginalFilename());
		}
		//
		
		int result = communityService.setInsert(communityDTO, boardFiles);
		
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
	
	
	//글상세-파일다운로드
	@GetMapping("fileDown")
	public ModelAndView fileDown(BoardFileDTO boardFileDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("dto", boardFileDTO);
		mv.setViewName("fileDownload");
		return mv;
	}
	
	
	//글상세
	@GetMapping("select")
	public ModelAndView getSelect(BoardDTO boardDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		CommunityDTO communityDTO = (CommunityDTO) communityService.getSelect(boardDTO);
		List<BoardFileDTO> ar = communityService.getFile(boardDTO);
		
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
