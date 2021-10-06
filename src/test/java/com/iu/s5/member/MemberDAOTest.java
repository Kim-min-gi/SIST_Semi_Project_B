package com.iu.s5.member;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.s5.JunitTest;

public class MemberDAOTest extends JunitTest {

	@Autowired
	private MemberDAO memberDAO;
	
	@Test
	public void getIdCheckTest() throws Exception {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("test");
		memberDTO = memberDAO.getIdCheck(memberDTO);
		assertNotNull(memberDTO);
	}
	
}
