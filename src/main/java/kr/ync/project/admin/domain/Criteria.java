package kr.ync.project.admin.domain;

/**
 * Criteria.java
 *
 * @Autors : 이용희
 * @Date : 2018. 12. 14.
 * @Description
 * 페이징 처리를 위한 클래스
 * 
 */
public class Criteria {

	private int page;
	private int perPageNum;

	public Criteria() {
		this.page = 1;
		this.perPageNum = 10;
	}

	public void setPage(int page) {

		if (page <= 0) {
			this.page = 1;
			return;
		}

		this.page = page;
	}

	public void setPerPageNum(int perPageNum) {

		if (perPageNum <= 0 || perPageNum > 100) {
			this.perPageNum = 10;
			return;
		}

		this.perPageNum = perPageNum;
	}

	public int getPage() {
		return page;
	}

	// method for MyBatis SQL Mapper -
	public int getPageStart() {

		return (this.page - 1) * perPageNum;
	}

	// method for MyBatis SQL Mapper
	public int getPerPageNum() {

		return this.perPageNum;
	}

	@Override
	public String toString() {
		return "Criteria [page=" + page + ", " + "perPageNum=" + perPageNum + "]";
	}
}
