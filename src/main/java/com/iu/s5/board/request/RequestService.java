package com.iu.s5.board.request;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.swing.border.Border;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.iu.s5.board.BoardDTO;
import com.iu.s5.board.BoardFileDTO;
import com.iu.s5.board.BoardService;
import com.iu.s5.util.FileManager;
import com.iu.s5.util.Pager;

@Service
public class RequestService implements BoardService {
	
	@Autowired
	private RequestDAO requestDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileManager fileManager;
	
	public int setAcceptUpdate(RequestDTO requestDTO) throws Exception {
		return requestDAO.setAcceptUpdate(requestDTO);
	}
	
	
	public List<BoardFileDTO> getFile(BoardDTO boardDTO) throws Exception {
		return requestDAO.getFile(boardDTO);
	}
	
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
		requestDAO.setHitsUpdate(boardDTO);
		return requestDAO.getSelect(boardDTO);
	}

	@Override
	public int setInsert(BoardDTO boardDTO, MultipartFile [] files) throws Exception {
		
		int result = requestDAO.setInsert(boardDTO);
		
		//파일 삽입
		String realPath = servletContext.getRealPath("/resources/upload/request");
		File file = new File(realPath);
		
		for(MultipartFile multipartFile:files) {
			String fileName = fileManager.fileSave(multipartFile, file);
			BoardFileDTO boardFileDTO = new BoardFileDTO();
			boardFileDTO.setFileName(fileName);
			boardFileDTO.setOriName(multipartFile.getOriginalFilename());
			boardFileDTO.setNum(boardDTO.getNum());
			
			result = requestDAO.setFile(boardFileDTO);
			System.out.println(boardFileDTO.getFileName());
			System.out.println(boardFileDTO.getOriName());
			System.out.println(boardFileDTO.getNum());
		}
		
		return result;
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		return requestDAO.setDelete(boardDTO);
	}

	@Override
	public int setUpdate(BoardDTO boardDTO) throws Exception {
		return requestDAO.setUpdate(boardDTO);
	}
	
	
	
}
