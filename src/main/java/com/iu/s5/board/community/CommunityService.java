package com.iu.s5.board.community;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.iu.s5.board.BoardDTO;
import com.iu.s5.board.BoardFileDTO;
import com.iu.s5.board.BoardService;
import com.iu.s5.board.CommentsDTO;
import com.iu.s5.util.FileManager;
import com.iu.s5.util.Pager;

@Service
public class CommunityService implements BoardService {

	@Autowired
	private CommunityDAO communityDAO;
	
	//@Autowired
	private ServletContext sContext;
	
	@Autowired
	private FileManager fileManager;
	
	
	
	
	
	@Override
	public int setComment(CommentsDTO commentsDTO) throws Exception {
		// TODO Auto-generated method stub
		return communityDAO.setComment(commentsDTO);
	}

	@Override
	public List<CommentsDTO> getCommentsList(CommentsDTO commentsDTO, Pager pager) throws Exception {
		// TODO Auto-generated method stub
		long totalCount = communityDAO.getCommentCount(commentsDTO);
		
		pager.setPerPage(5L);
		pager.makeRow();
		pager.makeNum(totalCount);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("comments", commentsDTO);
		map.put("pager", pager);
		
		return communityDAO.getCommentList(map);
	}

	@Override
	public int setCommentDelete(CommentsDTO commentsDTO) throws Exception {
		// TODO Auto-generated method stub
		return communityDAO.setCommentDelete(commentsDTO);
	}

	@Override
	public int setCommentUpdate(CommentsDTO commentsDTO) throws Exception {
		// TODO Auto-generated method stub
		return communityDAO.setCommentUpdate(commentsDTO);
	}

	public List<BoardFileDTO> getFile(BoardDTO boardDTO) throws Exception {
		return communityDAO.getFile(boardDTO);
	}
	
	@Override
	public List<BoardDTO> getList(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		long totalCount = communityDAO.getCount(pager);
		
		pager.makeNum(totalCount);
		pager.makeRow();
		
		return communityDAO.getList(pager);
	}

	@Override
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		communityDAO.setHitsUpdate(boardDTO);
		
		return communityDAO.getSelect(boardDTO);
	}

	@Override
	public int setInsert(BoardDTO boardDTO, MultipartFile[] files) throws Exception {
		// TODO Auto-generated method stub
		int result = communityDAO.setInsert(boardDTO);
		
		
		String realPath = sContext.getRealPath("resources/upload/community/");
		File file = new File(realPath);
		
		for (MultipartFile mf : files) {
			String fileName = fileManager.fileSave(mf, file);
			
			BoardFileDTO boardFileDTO = new BoardFileDTO();
			boardFileDTO.setFileName(fileName);
			boardFileDTO.setOriName(mf.getOriginalFilename());
			boardFileDTO.setNum(boardDTO.getNum());
			
			result = communityDAO.setFile(boardFileDTO);
		}
		
		return result;
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return communityDAO.setDelete(boardDTO);
	}

	@Override
	public int setUpdate(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
}
