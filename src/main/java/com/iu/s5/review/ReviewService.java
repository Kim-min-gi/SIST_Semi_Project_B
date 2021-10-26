package com.iu.s5.review;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.iu.s5.util.FileManager;
import com.iu.s5.util.Pager;

@Service
public class ReviewService {

	@Autowired
	private ReviewDAO reviewDAO;
	
	@Autowired
	private ServletContext sContext;
	
	@Autowired
	private FileManager fileManager;
	
	public float getRatingAvg(ReviewDTO reviewDTO) throws Exception {
		return reviewDAO.getRatingAvg(reviewDTO);
	}
	
	public List<ReviewDTO> getReviewList(ReviewDTO reviewDTO, Pager pager) throws Exception {
		long totalCount = reviewDAO.getReviewCount(reviewDTO);
		
		pager.setPerPage(3L);
		pager.makeRow();
		pager.makeNum(totalCount);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("reviews", reviewDTO);
		map.put("pager", pager);
		
		return reviewDAO.getReviewList(map);
	}
	
	public int setUpdate(ReviewDTO reviewDTO) throws Exception {
		return reviewDAO.setUpdate(reviewDTO);
	}
	
	public int setDelete(ReviewDTO reviewDTO) throws Exception {
		return reviewDAO.setDelete(reviewDTO);
	}
	
	public int setInsert(ReviewDTO reviewDTO, MultipartFile[] reviewFiles) throws Exception {
		int result = reviewDAO.setInsert(reviewDTO);
		
		String realPath = sContext.getRealPath("/resources/upload/review/");
		File file = new File(realPath);
		
		for (MultipartFile mf : reviewFiles) {
			String fileName = fileManager.fileSave(mf, file);
			
			ReviewFilesDTO reviewFilesDTO = new ReviewFilesDTO();
			reviewFilesDTO.setFileName(fileName);
			reviewFilesDTO.setOriName(mf.getOriginalFilename());
			reviewFilesDTO.setReviewNum(reviewDTO.getReviewNum());
			
			//파일 이름 공백 아닐 때만 db에 저장!!
			if (mf.getOriginalFilename() != "") {
				result = reviewDAO.setReviewFile(reviewFilesDTO);
			}
		}
		return result;
	}
}
