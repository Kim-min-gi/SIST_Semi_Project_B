package com.iu.s5.board.request;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.s5.JunitTest;
import com.iu.s5.board.BoardDTO;

public class RequestDAOTest extends JunitTest{
	
	@Autowired
	private RequestDAO requestDAO;

	@Test
	public void getListTest() throws Exception {
		
		List<BoardDTO> ar = requestDAO.getList();
		assertNotNull(ar);
		
	}

}
