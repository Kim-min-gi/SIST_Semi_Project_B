package com.iu.s5.review;

import java.sql.Date;
import java.util.List;

public class ReviewDTO {
	private Long reviewNum;
	private Long restNum;
	private String id;
	private String writer;
	private String contents;
	private int rating; //점수 1~5
	private Date regDate;
	
	private List<ReviewFilesDTO> reviewFiles;
	

	public List<ReviewFilesDTO> getReviewFiles() {
		return reviewFiles;
	}
	public void setReviewFiles(List<ReviewFilesDTO> reviewFiles) {
		this.reviewFiles = reviewFiles;
	}
	
	public Long getReviewNum() {
		return reviewNum;
	}
	public void setReviewNum(Long reviewNum) {
		this.reviewNum = reviewNum;
	}
	public Long getRestNum() {
		return restNum;
	}
	public void setRestNum(Long restNum) {
		this.restNum = restNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	

	
}
