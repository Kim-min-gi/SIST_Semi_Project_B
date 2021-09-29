package com.iu.s5.board;

import java.util.List;


public interface BoardService {

	public List<BoardDTO> getList() throws Exception; //글 목록
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception; //글 상세 
	public int setInsert(BoardDTO boardDTO) throws Exception; //글 작성
	public int setDelete(BoardDTO boardDTO) throws Exception; //글 삭제
	public int setUpdate(BoardDTO boardDTO) throws Exception; //글 수 
	
}
