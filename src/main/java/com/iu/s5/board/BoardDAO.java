package com.iu.s5.board;

import java.util.List;
import java.util.Map;

import com.iu.s5.util.Pager;

public interface BoardDAO {

	public List<BoardDTO> getList(Pager pager) throws Exception; //글 목록
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception; //글 상세 
	public int setInsert(BoardDTO boardDTO) throws Exception; //글 작성
	public int setDelete(BoardDTO boardDTO) throws Exception; //글 삭제
	public int setUpdate(BoardDTO boardDTO) throws Exception; //글 수 

	public int setHitsUpdate(BoardDTO boardDTO) throws Exception; //글 조회수+1
	
	
	/* 파일 */
	public int setFile(BoardFileDTO boardFileDTO) throws Exception; //파일 저장
	public List<BoardFileDTO> getFile(BoardDTO boardDTO) throws Exception; //파일 불러오기
	
	
	/* 댓글*/
	public int setComment(CommentsDTO commentsDTO) throws Exception; //댓글 작성
	public List<CommentsDTO> getCommentList(Map<String, Object> map) throws Exception; //댓글 목록
	public int setCommentDelete(CommentsDTO commentsDTO) throws Exception; //댓글 삭제
	public int setCommentUpdate(CommentsDTO commentsDTO) throws Exception; //댓글 수정
	public Long getCommentCount(CommentsDTO commentsDTO) throws Exception; //댓글 개수 반환
		
	
}
