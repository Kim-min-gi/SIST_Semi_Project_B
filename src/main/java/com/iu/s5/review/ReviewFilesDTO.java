package com.iu.s5.review;

public class ReviewFilesDTO {
	
	private Long reviewFilesNum; //리뷰파일번호
	private Long reviewNum; //리뷰글번호
	private String fileName; //저장될 파일 이름
	private String oriName;	//원본 파일명
	
	
	public Long getReviewFilesNum() {
		return reviewFilesNum;
	}
	public void setReviewFilesNum(Long reviewFilesNum) {
		this.reviewFilesNum = reviewFilesNum;
	}
	public Long getReviewNum() {
		return reviewNum;
	}
	public void setReviewNum(Long reviewNum) {
		this.reviewNum = reviewNum;
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
