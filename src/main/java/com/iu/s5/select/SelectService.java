package com.iu.s5.select;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.s5.restaurant.RestaurantsDTO;
import com.iu.s5.review.ReviewFilesDTO;

@Service
public class SelectService {
	
	@Autowired
	private SelectDAO selectDAO;
	
	//리뷰 사진 가져오기
	public List<ReviewFilesDTO> getReviewFiles(com.iu.s5.select.RestaurantsDTO restaurantsDTO) throws Exception {
		return selectDAO.getReviewFiles(restaurantsDTO);
	}
	
	//카테고리명 호출
	public String getCategoryName(com.iu.s5.select.RestaurantsDTO restaurantsDTO) throws Exception {
		return selectDAO.getCategoryName(restaurantsDTO);
	}
	
	//식당 상세 페이지
	public com.iu.s5.select.RestaurantsDTO getSelectRT(com.iu.s5.select.RestaurantsDTO restaurantsDTO) throws Exception {
		return selectDAO.getSelectRT(restaurantsDTO);
	}

}
