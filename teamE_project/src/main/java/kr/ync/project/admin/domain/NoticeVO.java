package kr.ync.project.admin.domain;

import java.util.Arrays;
import java.util.Date;


/**
 * NoticeVO.java
 *
 * @Autors : 이용희
 * @Date : 2018. 12. 14.
 * @Description
 * 공지사항 VO 객체
 * 
 */
public class NoticeVO {
	private Integer notice_num;
	private String notice_title;
	private String notice_contents;
	private String admin_id;
	private Date notice_date;
	private String[] files;
	
	
	public String[] getFiles() {
		return files;
	}
	public void setFiles(String[] files) {
		this.files = files;
	}
	
	public Integer getNotice_num() {
		return notice_num;
	}

	public void setNotice_num(Integer notice_num) {
		this.notice_num = notice_num;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_contents() {
		return notice_contents;
	}

	public void setNotice_contents(String notice_contents) {
		this.notice_contents = notice_contents;
	}

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public Date getNotice_date() {
		return notice_date;
	}

	public void setNotice_date(Date notice_date) {
		this.notice_date = notice_date;
	}

	
	@Override
	public String toString() {
		return "NoticeVO [notice_num=" + notice_num + ", notice_title=" + notice_title 
				+ ", notice_contents=" + notice_contents + ", "
			    + "admin_id=" + admin_id + ", notice_date=" + notice_date
				+ "]";
	}

}