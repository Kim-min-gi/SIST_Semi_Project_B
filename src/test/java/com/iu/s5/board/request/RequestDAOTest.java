package com.iu.s5.board.request;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.s5.JunitTest;
import com.iu.s5.board.BoardDTO;
import com.iu.s5.util.Pager;

public class RequestDAOTest extends JunitTest{
	
	@Autowired
	private RequestDAO requestDAO;
	
	//@Test
	public void getListTest() throws Exception {
		Pager pager = new Pager();
		Long totalCount = requestDAO.getCount(pager);
		pager.makeNum(totalCount);
		pager.makeRow();
		List<BoardDTO> ar = requestDAO.getList(pager);
		assertNotNull(ar);
		
	}
	
	@Test
	public void getCount() throws Exception {
		Pager pager = new Pager();
		Long count = requestDAO.getCount(pager);
		assertNotNull(count);
	}

}
