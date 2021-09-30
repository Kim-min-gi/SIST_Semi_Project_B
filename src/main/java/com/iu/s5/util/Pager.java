package com.iu.s5.util;

public class Pager {
	
	private Long pn;  //페이지 번호
	private Long perPage;  //페이지 당 개수
	private Long perBlock; //블록 당 pn 개수
	private Long startRow;  //시작 번호
	private Long lastRow;  //끝 번호
	
	private Long startNum; //블록 시작번호
	private Long lastNum; //블록 끝 번호
	
	private Long totalPage;
	
	//-----------------검색-----------------
	private String kind;
	private String search;
	
	
	//-----------------rowNum-----------------
	public void makeRow() {
		this.startRow = (this.getPn()-1)*this.getPerPage()+1;
		this.lastRow = this.getPn()*this.getPerPage();
	}
	
	//------------startNum, lastNum--------------
	public void makeNum(Long totalCount) {
		
		totalPage = totalCount / this.getPerPage();
		if(totalCount % this.getPerPage() != 0) {
			totalPage++;
		}
		
		Long totalBlock = totalPage / this.getPerBlock();
		if(totalPage % this.getPerBlock() != 0) {
			totalBlock++;
		}
		
		if(totalPage<this.getPn()) {
			this.setPn(totalPage);
		}
		
		Long curBlock = this.getPn() /this.getPerBlock();
		if(this.getPn() % this.getPerBlock() != 0) {
			curBlock++;
		}
		
		this.startNum = (curBlock - 1) * this.getPerBlock()+1;
		this.lastNum = curBlock *this.getPerBlock();
		
		if(curBlock == totalBlock) {
			this.lastNum = totalPage;
		}
	}
	
	
	

	public Long getPn() {
		
		if(this.pn == null || this.pn < 1) {
			this.pn = 1L;
		}
		return pn;
	}

	public void setPn(Long pn) {
		this.pn = pn;
	}

	public Long getPerPage() {
		
		if(this.perPage==null || this.perPage==0) {
			this.perPage=15L;
		}
		return perPage;
	}

	public void setPerPage(Long perPage) {
		this.perPage = perPage;
	}

	public Long getPerBlock() {
		this.perBlock = 10L;
		return perBlock;
	}

	public void setPerBlock(Long perBlock) {
		this.perBlock = perBlock;
	}

	public Long getStartRow() {
		return startRow;
	}

	public void setStartRow(Long startRow) {
		this.startRow = startRow;
	}

	public Long getLastRow() {
		return lastRow;
	}

	public void setLastRow(Long lastRow) {
		this.lastRow = lastRow;
	}

	public Long getStartNum() {
		return startNum;
	}

	public void setStartNum(Long startNum) {
		this.startNum = startNum;
	}

	public Long getLastNum() {
		return lastNum;
	}

	public void setLastNum(Long lastNum) {
		this.lastNum = lastNum;
	}

	public Long getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Long totalPage) {
		this.totalPage = totalPage;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getSearch() {
		if(this.search == null) {
			this.search ="";
		}
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}
	
	
	
	
	
	
	
	
	
}
