package com.iu.s5.board.request;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.s5.board.BoardDTO;
import com.iu.s5.board.BoardService;
import com.iu.s5.util.Pager;

@Service
public class RequestService implements BoardService {
	
	@Autowired
	private RequestDAO requestDAO;

	@Override
	public List<BoardDTO> getList(Pager pager) throws Exception {
		
		//페이징 처리
		Long totalCount = requestDAO.getCount(pager);
		pager.makeNum(totalCount);
		pager.makeRow();
		
		return requestDAO.getList(pager);
	}

	@Override
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int setInsert(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int setUpdate(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
}
