package com.iu.s5.board;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.iu.s5.util.Pager;


public interface BoardService {

	public List<BoardDTO> getList(Pager pager) throws Exception; //글 목록
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception; //글 상세 
	public int setInsert(BoardDTO boardDTO, MultipartFile[] files) throws Exception; //글 작성
	public int setDelete(BoardDTO boardDTO) throws Exception; //글 삭제
	public int setUpdate(BoardDTO boardDTO) throws Exception; //글 수 
	
	
	/* 댓글 */
	public int setComment(CommentsDTO commentsDTO) throws Exception; //댓글 작성
	public List<CommentsDTO> getCommentsList(CommentsDTO commentsDTO, Pager pager) throws Exception; //댓글 목록
	public int setCommentDelete(CommentsDTO commentsDTO) throws Exception; //댓글 삭제
	public int setCommentUpdate(CommentsDTO commentsDTO) throws Exception; //댓글 수정
	
}
