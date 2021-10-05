package com.iu.s5.board;

public class BoardFileDTO {
	
	private Long fileNum; //파일번호
	private Long num; //게시판번호
	private String fileName; //저장될 파일 이름
	private String oriName; //원래 파일 이름
	
	public Long getFileNum() {
		return fileNum;
	}
	public void setFileNum(Long fileNum) {
		this.fileNum = fileNum;
	}
	public Long getNum() {
		return num;
	}
	public void setNum(Long num) {
		this.num = num;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getOriName() {
		return oriName;
	}
	public void setOriName(String oriName) {
		this.oriName = oriName;
	}
	
	
	
}
