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
	@Autowired
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
		
		//저장
		multipartFile.transferTo(file);
		
		return fileName;
		
	}
	
	//사진 사이즈 조절해서 저장(300*380)
	public String fileResizeSave(MultipartFile multipartFile, File file) throws Exception {
		if(!file.exists()) {
			file.mkdirs();
		}
		
		//파일명 생성
		String fileName = UUID.randomUUID().toString();
		//확장자 추가
		fileName = fileName + "_" + multipartFile.getOriginalFilename();
		
		//썸네일 가로 사이즈
		int thumnail_width = 300;
		//썸네일 세로 사이즈
		int thumnail_heiht = 380;
		
		file = new File(file, fileName);
		
		
		//이미지 사이즈 줄이기
		BufferedImage buffer_original_image = ImageIO.read(file);
		BufferedImage buffer_thumnail_image = new BufferedImage(thumnail_width, thumnail_heiht, BufferedImage.TYPE_3BYTE_BGR);
		Graphics2D graphic = buffer_thumnail_image.createGraphics();
		graphic.drawImage(buffer_original_image, 0, 0,thumnail_width, thumnail_heiht, null);
		
		
		//사이즈 줄인 이미지를 로컬 경로에 저장
		ImageIO.write(buffer_thumnail_image, null, file);
		
		return fileName;
		
	}
	

}
