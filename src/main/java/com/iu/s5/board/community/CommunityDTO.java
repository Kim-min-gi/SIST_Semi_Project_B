package com.iu.s5.board.community;

import java.util.List;

import com.iu.s5.board.BoardDTO;
import com.iu.s5.board.BoardFileDTO;

public class CommunityDTO extends BoardDTO {
	
	private List<BoardFileDTO> boardFiles;
	
	

	

	public List<BoardFileDTO> getBoardFiles() {
		return boardFiles;
	}

	public void setBoardFiles(List<BoardFileDTO> boardFiles) {
		this.boardFiles = boardFiles;
	}

	private int category; //글분류 1--기본, 2-- , 3-- ,

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}
	
	
}
