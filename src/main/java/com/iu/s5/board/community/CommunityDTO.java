package com.iu.s5.board.community;

import java.util.List;

import com.iu.s5.board.BoardDTO;
import com.iu.s5.board.BoardFileDTO;

public class CommunityDTO extends BoardDTO {
	
	private List<BoardFileDTO> files;
	
	

	public List<BoardFileDTO> getFiles() {
		return files;
	}

	public void setFiles(List<BoardFileDTO> files) {
		this.files = files;
	}

	private int category; //글분류 1--기본, 2-- , 3-- ,

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}
	
	
}
