package com.iu.s5.board.comments;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.s5.util.Pager;

@Service
public class CommentsService {
	
	@Autowired
	private CommentsDAO commentsDAO;
	
	
	public int setComment(CommentsDTO commentsDTO) throws Exception {
		return commentsDAO.setComment(commentsDTO);
	}
	
	public List<CommentsDTO> getCommentsList(CommentsDTO commentsDTO, Pager pager) throws Exception {
		pager.makeRow();
		pager.makeNum(commentsDAO.getCommentCount(commentsDTO));
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("comments", commentsDTO);
		map.put("pager", pager);
		return commentsDAO.getCommentList(map);
	}
	
	public int setCommentDelete(CommentsDTO commentsDTO) throws Exception {
		return commentsDAO.setCommentDelete(commentsDTO);
	}
	
	public int setCommentUpdate(CommentsDTO commentsDTO) throws Exception {
		return commentsDAO.setCommentUpdate(commentsDTO);
	}
	
}
