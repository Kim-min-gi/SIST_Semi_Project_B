package com.iu.s5.board;

import java.util.List;

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
	
}
