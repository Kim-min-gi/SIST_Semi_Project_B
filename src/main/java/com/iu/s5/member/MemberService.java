package com.iu.s5.member;

import java.io.File;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	public MemberDTO getIdCheck(MemberDTO memberDTO) throws Exception {
		return memberDAO.getIdCheck(memberDTO);
	}
	
	public int setJoin(MemberDTO memberDTO, MultipartFile photo, HttpSession session) throws Exception {
		
		int result = memberDAO.setJoin(memberDTO);
		
		if(photo != null) {
			
			ServletContext sContext = session.getServletContext();
			String realPath = sContext.getRealPath("/resources/upload/member");
			System.out.println("RealPath : " + realPath);
			
			File file = new File(realPath);
			if(!file.exists()) {
				file.mkdirs();
			}
			
			String fileName = UUID.randomUUID().toString();
			fileName = fileName + "_" + photo.getOriginalFilename();
			System.out.println(fileName);
			
			file = new File(file, fileName);
			
			FileCopyUtils.copy(photo.getBytes(), file);

			MemberFilesDTO memberFilesDTO = new MemberFilesDTO();
			memberFilesDTO.setId(memberDTO.getId());
			memberFilesDTO.setFileName(fileName);
			memberFilesDTO.setOriName(photo.getOriginalFilename());
			result = memberDAO.setFileInsert(memberFilesDTO);
			
		}
		
		return result;
	}
	
	public MemberDTO getLogin(MemberDTO memberDTO) throws Exception {
		return memberDAO.getLogin(memberDTO);
	}
	
	public int setDelete(MemberDTO memberDTO) throws Exception {
		return memberDAO.setDelete(memberDTO);
	}
	
	public int setUpdate(MemberDTO memberDTO) throws Exception {
		return memberDAO.setUpdate(memberDTO);
	}
	
	public MemberFilesDTO getFile(MemberDTO memberDTO) throws Exception {
		return memberDAO.getFile(memberDTO);
	}
}
