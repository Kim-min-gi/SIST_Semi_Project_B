package com.iu.s5.select;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.s5.restaurant.RestaurantsDTO;

@Service
public class SelectService {
	
	@Autowired
	private SelectDAO selectDAO;
	
	//카테고리명 호출
	public String getCategoryName(com.iu.s5.select.RestaurantsDTO restaurantsDTO) throws Exception {
		return selectDAO.getCategoryName(restaurantsDTO);
	}
	
	//식당 상세 페이지
	public com.iu.s5.select.RestaurantsDTO getSelectRT(com.iu.s5.select.RestaurantsDTO restaurantsDTO) throws Exception {
		return selectDAO.getSelectRT(restaurantsDTO);
	}

}
