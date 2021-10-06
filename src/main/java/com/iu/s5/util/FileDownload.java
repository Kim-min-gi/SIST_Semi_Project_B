package com.iu.s5.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

import com.iu.s5.board.BoardFileDTO;

@Component
public class FileDownload extends AbstractView {

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
	
		
		//폴더명
		String board = (String) model.get("board");
		
		//realPath
		String realPath = request.getSession().getServletContext().getRealPath("/resources/upload/" + board);
		
		BoardFileDTO boardFileDTO = (BoardFileDTO) model.get("dto");
		
		File file = new File(realPath, boardFileDTO.getFileName());
		
		
		response.setCharacterEncoding("UTF-8"); //한글처리
		response.setContentLength((int) file.length()); //파일크기
		
		//다운로드 시 파일 이름 설정
		String fileName = boardFileDTO.getFileName();
		String downName = fileName.substring(fileName.lastIndexOf("_")+1); //확장자
		
		response.setContentType("application/octet-stream; charset=UTF-8");
		response.setHeader("Content-Disposition", "attachment;fileName=\""+downName+"\"");
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		//클라이언트에 전송
		FileInputStream fi = new FileInputStream(file);
		OutputStream os = response.getOutputStream();
		
		FileCopyUtils.copy(fi, os);
		
		//자원 close
		os.close();
		fi.close();
	}
	
}
