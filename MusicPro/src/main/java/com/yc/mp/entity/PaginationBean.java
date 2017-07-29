package com.yc.mp.entity;

import java.util.List;

public class PaginationBean<T> {

	private Integer pageSize = 10;
	private Integer pageNum = 1;
	private Integer total;
	private Integer totalPage;
	private List<T> rows;
	
	public PaginationBean() {
	}

	public PaginationBean(int pageSize, int pageNum, int total, int totalPage, List<T> rows) {
		this.pageSize = pageSize;
		this.pageNum = pageNum;
		this.total = total;
		this.totalPage = totalPage;
		this.rows = rows;
	}
	
	

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> rows) {
		this.rows = rows;
	}

	@Override
	public String toString() {
		return "PaginationBean [pageSize=" + pageSize + ", pageNum=" + pageNum + ", total=" + total + ", totalPage="
				+ totalPage + ", \nrows=" + rows + "]";
	}
	
}
