package com.iu.s5.board.request;

import com.iu.s5.board.BoardDTO;

public class RequestDTO extends BoardDTO{
	
	private String restName;
	private String restLocation;
	private String restPhone;
	private Long restCategory;
	private String restTime;
	private String holiday;
	private String requestAccept;
	
	
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
	public String getRestPhone() {
		return restPhone;
	}
	public void setRestPhone(String restPhone) {
		this.restPhone = restPhone;
	}
	public Long getRestCategory() {
		return restCategory;
	}
	public void setRestCategory(Long restCategory) {
		this.restCategory = restCategory;
	}
	public String getRestTime() {
		return restTime;
	}
	public void setRestTime(String restTime) {
		this.restTime = restTime;
	}
	public String getHoliday() {
		return holiday;
	}
	public void setHoliday(String holiday) {
		this.holiday = holiday;
	}
	public String getRequestAccept() {
		return requestAccept;
	}
	public void setRequestAccept(String requestAccept) {
		this.requestAccept = requestAccept;
	}
	
	
	
	
}
