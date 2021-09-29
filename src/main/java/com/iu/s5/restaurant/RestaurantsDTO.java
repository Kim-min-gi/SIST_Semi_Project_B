package com.iu.s5.restaurant;

public class RestaurantsDTO {
	private Long restNum; 		//식당 번호
	private String restName; 	//식당 이름
	private String restLocation;//식당 위치(도로명 주소)
	private String phone;		//식당 전화번호
	private int restCategory;	//식당 업종/종류 
	private String restTime;	//식당 영업 시간 
	private String holyDay;		//식당 휴일
	private Long hits;			//조회수
	private Long Likes;			//찜 수
	private Long lat;			//위도
	private Long logt;			//경도
	private int openFlag;		//식당 영업 여부
	
	
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
	public String getRestLocation() {
		return restLocation;
	}
	public void setRestLocation(String restLocation) {
		this.restLocation = restLocation;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getRestCategory() {
		return restCategory;
	}
	public void setRestCategory(int restCategory) {
		this.restCategory = restCategory;
	}
	public String getRestTime() {
		return restTime;
	}
	public void setRestTime(String restTime) {
		this.restTime = restTime;
	}
	public String getHolyDay() {
		return holyDay;
	}
	public void setHolyDay(String holyDay) {
		this.holyDay = holyDay;
	}
	public Long getHits() {
		return hits;
	}
	public void setHits(Long hits) {
		this.hits = hits;
	}
	public Long getLikes() {
		return Likes;
	}
	public void setLikes(Long likes) {
		Likes = likes;
	}
	public Long getLat() {
		return lat;
	}
	public void setLat(Long lat) {
		this.lat = lat;
	}
	public Long getLogt() {
		return logt;
	}
	public void setLogt(Long logt) {
		this.logt = logt;
	}
	public int getOpenFlag() {
		return openFlag;
	}
	public void setOpenFlag(int openFlag) {
		this.openFlag = openFlag;
	}
	
	
	
	

}
