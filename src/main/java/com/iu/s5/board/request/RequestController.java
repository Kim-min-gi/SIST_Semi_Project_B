package com.iu.s5.board.request;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.iu.s5.board.BoardDTO;
import com.iu.s5.board.BoardFileDTO;
import com.iu.s5.board.comments.CommentsDTO;
import com.iu.s5.util.Pager;

@Controller
@RequestMapping("/request/**")
public class RequestController {
	
	@Autowired
	private RequestService requestService;
	
	@ModelAttribute("board")
	public String getBoard() {
		return "request";
	}
	
	public ModelAndView setCommentDelete(CommentsDTO commentsDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = requestService.setCommentDelete(commentsDTO);
		return mv;
	}
	
	public ModelAndView setCommentUpdate(CommentsDTO commentsDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = requestService.setCommentUpdate(commentsDTO);
		return mv;
	}
	
	public ModelAndView getCommentList(CommentsDTO commentsDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		commentsDTO.setBoard("r");
		
		return mv;
	}
	
	@GetMapping("comment")
	public ModelAndView setComment(CommentsDTO commentsDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		commentsDTO.setBoard("r");
		int result = requestService.setComment(commentsDTO);
		return mv;
	}
	
	@PostMapping("accept")
	public ModelAndView setAcceptUpdate(RequestDTO requestDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = requestService.setAcceptUpdate(requestDTO);
		mv.setViewName("common/ajaxResult");
		mv.addObject("result", result);
		return mv;
	}
	
	@GetMapping("list")
	public ModelAndView getList(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<BoardDTO> ar = requestService.getList(pager);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("board/list");
		
		return mv;
	}
	
	@GetMapping("fileDown")
	public ModelAndView fileDown(BoardFileDTO boardFileDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.addObject("dto", boardFileDTO);
		mv.setViewName("fileDownload");
		return mv;
	}
	
	
	@GetMapping("select")
	public ModelAndView getSelect(BoardDTO boardDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		RequestDTO requestDTO = (RequestDTO)requestService.getSelect(boardDTO);
		List<BoardFileDTO> ar = requestService.getFile(boardDTO);
		
		mv.addObject("dto", requestDTO);
		mv.setViewName("board/select");
		return mv;
	}
	
	
	@GetMapping("insert")
	public ModelAndView setInsert() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/insert");
		return mv;
	}
	
	@PostMapping("insert")
	public ModelAndView setInsert(RequestDTO requestDTO, MultipartFile[] boardFiles) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = requestService.setInsert(requestDTO, boardFiles);
		
		mv.setViewName("redirect:./list");
		
		return mv;
	}
	
	
	@GetMapping("update")
	public ModelAndView setUpdate(RequestDTO requestDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		requestDTO = (RequestDTO)requestService.getSelect(requestDTO);
		mv.addObject("dto", requestDTO);
		mv.setViewName("board/update");
		return mv;
	}
	
	@PostMapping("update")
	public ModelAndView setUpdate(RequestDTO requestDTO, Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = requestService.setUpdate(requestDTO);
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	@GetMapping("delete")
	public ModelAndView setDelete(RequestDTO requestDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = requestService.setDelete(requestDTO);
		String message = "삭제에 실패했습니다";
		if(result>0) {
			message = "삭제에 성공했습니다";
		}
		mv.addObject("msg", message);
		mv.addObject("url", "./list");
		
		mv.setViewName("common/result");
		return mv;
	}
	
}
