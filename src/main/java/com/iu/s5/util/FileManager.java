package com.iu.s5.util;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileManager {
	//@Autowired
	private ServletContext servletContext;
	
	//파일 삭제
	public void fileDelete(File file) throws Exception {
		file.delete();
	}
	
	//파일 저장
	public String fileSave(MultipartFile multipartFile, File file) throws Exception {
		if(!file.exists()) {
			file.mkdirs();
		}
		
		//파일명 생성
		String fileName = UUID.randomUUID().toString();
		//확장자 추가
		fileName = fileName + "_" + multipartFile.getOriginalFilename();
		
		file = new File(file, fileName);
		
		//파일 이름 공백 아닐때만 저장
		if (multipartFile.getOriginalFilename() != "") {
			System.out.println(multipartFile.getOriginalFilename());
			multipartFile.transferTo(file);
		}
		
		
		return fileName;
		
	}
	

}
