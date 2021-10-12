package com.iu.s5.board.request;

import java.util.List;

import com.iu.s5.board.BoardDTO;
import com.iu.s5.board.BoardFileDTO;

public class RequestDTO extends BoardDTO{
	
	private String restName; //식당 이름
	private String restPostcode; //식당 우편번호
	private String restAddress; //식당 주소
	private String restAddressDt; //식당 상세주소
	private String restAddressRf; //식당 주소 참고항목(동)
	private String restPhone; //식당 전화번호
	private Long restCategory; //식당 분류
	private String restTime; //영업시간
	private String holiday; //휴일
	private String requestAccept; //승인여부
	
	private List<BoardFileDTO> files;
	
	public List<BoardFileDTO> getFiles() {
		return files;
	}
	public void setFiles(List<BoardFileDTO> files) {
		this.files = files;
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
	public String getRestAddressDt() {
		if(this.restAddressDt == null) {
			this.restAddressDt = "";
		}
		return restAddressDt;
	}
	public void setRestAddressDt(String restAddressDt) {
		this.restAddressDt = restAddressDt;
	}
	public String getRestAddressRf() {
		if(this.restAddressRf == null) {
			this.restAddressRf = "";
		}
		return restAddressRf;
	}
	public void setRestAddressRf(String restAddressRf) {
		this.restAddressRf = restAddressRf;
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
		if(this.restTime == null) {
			this.restTime = "";
		}
		return restTime;
	}
	public void setRestTime(String restTime) {
		this.restTime = restTime;
	}
	public String getHoliday() {
		  if(this.holiday == null) {
			  this.holiday = ""; 
		  }
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
