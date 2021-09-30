package com.iu.s5.board.community;

import static org.junit.Assert.*;

import java.util.Random;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.s5.JunitTest;
import com.iu.s5.board.BoardDTO;

public class CommunityDAOTest extends JunitTest {
	
	@Autowired
	private CommunityDAO communityDAO;
	
	@Test
	public void test() throws Exception {
		
		for (int i = 0; i < 100; i++) {
			CommunityDTO communityDTO = new CommunityDTO();
			
			communityDTO.setTitle("테스트 제목제목" + i);
			communityDTO.setContents("테스트!!" + i);
			communityDTO.setId("t1");
			communityDTO.setWriter("이모모");
			
			Random random = new Random();
			communityDTO.setCategory(random.nextInt(3)+1);

			int result = communityDAO.setInsert(communityDTO);
			
			if (i % 10 == 0) {
				Thread.sleep(1000);
			}
		}
		
		System.out.println("insert fin...");
		
	}

}
