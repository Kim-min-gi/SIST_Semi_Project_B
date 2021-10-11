package com.iu.s5.restaurant;

import java.util.List;

public class RestaurantsDTO {
	private Long restNum; 		//식당 번호
	
	private String restName; 	//식당 이름
	private String restPostcode;//식당 우편번호
	private String restAddress; //식당 위치(도로명 주소)
	private String restAddressDT;
	private String restAddressRF;
	private String restPhone;		//식당 전화번호
	private String restTime;	//식당 영업 시간 
	private String holiDay;		//식당 휴일
	
	private Long hits;			//조회수
	private Long likes;			//찜 수
	private double starVal;     //별점
	private int openFlag;		//식당 영업 여부
	
	
	private List<RestaurantsFilesDTO> files; //사진 files
	private List<RestCategorysDTO> categorysDTOs; //카테고리
	
	
	
	
	public Long getRestNum() {
		return restNum;
	}
	public void setRestNum(Long restNum) {
		this.restNum = restNum;
	}
	public String getRestName() {
		return restName;
	}
	public void setRestName(String restName) {
		this.restName = restName;
	}
	public String getRestPostcode() {
		return restPostcode;
	}
	public void setRestPostcode(String restPostcode) {
		this.restPostcode = restPostcode;
	}
	public String getRestAddress() {
		return restAddress;
	}
	public void setRestAddress(String restAddress) {
		this.restAddress = restAddress;
	}
	public String getRestAddressDT() {
		return restAddressDT;
	}
	public void setRestAddressDT(String restAddressDT) {
		this.restAddressDT = restAddressDT;
	}
	public String getRestAddressRF() {
		return restAddressRF;
	}
	public void setRestAddressRF(String restAddressRF) {
		this.restAddressRF = restAddressRF;
	}
	public String getRestPhone() {
		return restPhone;
	}
	public void setRestPhone(String restPhone) {
		this.restPhone = restPhone;
	}
	public String getRestTime() {
		return restTime;
	}
	public void setRestTime(String restTime) {
		this.restTime = restTime;
	}
	public String getHoliDay() {
		return holiDay;
	}
	public void setHoliDay(String holiDay) {
		this.holiDay = holiDay;
	}
	public Long getHits() {
		return hits;
	}
	public void setHits(Long hits) {
		this.hits = hits;
	}
	public Long getLikes() {
		return likes;
	}
	public void setLikes(Long likes) {
		this.likes = likes;
	}
	public double getStarVal() {
		return starVal;
	}
	public void setStarVal(double starVal) {
		this.starVal = starVal;
	}
	public int getOpenFlag() {
		return openFlag;
	}
	public void setOpenFlag(int openFlag) {
		this.openFlag = openFlag;
	}
	public List<RestaurantsFilesDTO> getFiles() {
		return files;
	}
	public void setFiles(List<RestaurantsFilesDTO> files) {
		this.files = files;
	}
	public List<RestCategorysDTO> getCategorysDTOs() {
		return categorysDTOs;
	}
	public void setCategorysDTOs(List<RestCategorysDTO> categorysDTOs) {
		this.categorysDTOs = categorysDTOs;
	}
	
	
	
	
	


	
	
	
	
	
	

}
