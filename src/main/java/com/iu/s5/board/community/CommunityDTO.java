package com.iu.s5.board.community;

import com.iu.s5.board.BoardDTO;

public class CommunityDTO extends BoardDTO {

	private int category; //글분류 1--기본, 2-- , 3-- ,

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}
	
	
}
