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
	
	//@Test
	public void getCountTest() throws Exception {
		Pager pager = new Pager();
		Long count = requestDAO.getCount(pager);
		assertNotNull(count);
	}
	
	//@Test
	public void setInsertTest() throws Exception {
		RequestDTO dto = new RequestDTO();
		dto.setNum(2L);
		dto.setId("id1");
		dto.setWriter("inin");
		dto.setTitle("insert");
		dto.setContents("test");
		dto.setHits(0L);
		dto.setRestName("test");
		dto.setRestLocation("test");
		dto.setRestPhone("01010");
		dto.setRestCategory("test");
		dto.setRestTime("test");
		dto.setHoliday("test");
		dto.setRequestAccept("N");
		
		int result = requestDAO.setInsert(dto);
		assertEquals(1, result);
		
	}
	
	@Test
	public void setUpdateTest() {
		RequestDTO dto = new RequestDTO();
		dto.setNum(22L);
		dto.setId("id1");
		dto.setWriter("inin");
		dto.setTitle("update");
		dto.setContents("test");
		dto.setHits(0L);
		dto.setRestName("test");
		dto.setRestLocation("test");
		dto.setRestPhone("01010");
		dto.setRestCategory("test");
		dto.setRestTime("test");
		dto.setHoliday("test");
		dto.setRequestAccept("N");
		
		int result = requestDAO.setUpdate(dto);
		assertNotEquals(0, result);
		
	}

}
