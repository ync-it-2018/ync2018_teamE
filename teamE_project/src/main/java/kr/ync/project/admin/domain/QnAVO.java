package kr.ync.project.admin.domain;

import java.util.Arrays;
import java.util.Date;


public class QnAVO {
	private Integer qna_num;
	private String qna_title;
	private String qna_contents;
	private String admin_id;
	private String qna_division;
	
	public String getQna_division() {
		return qna_division;
	}
	public void setQna_division(String qna_division) {
		this.qna_division = qna_division;
	}
	private String[] files;
	
	
	public String[] getFiles() {
		return files;
	}
	public void setFiles(String[] files) {
		this.files = files;
	}
	
	public Integer getqna_num() {
		return qna_num;
	}

	public void setqna_num(Integer qna_num) {
		this.qna_num = qna_num;
	}

	public String getqna_title() {
		return qna_title;
	}

	public void setqna_title(String qna_title) {
		this.qna_title = qna_title;
	}

	public String getqna_contents() {
		return qna_contents;
	}

	public void setqna_contents(String qna_contents) {
		this.qna_contents = qna_contents;
	}

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}



	
	@Override
	public String toString() {
		return "QnAVO [qna_num=" + qna_num + ", qna_title=" + qna_title 
				+ ", qna_contents=" + qna_contents + ", "
			    + "admin_id=" + admin_id + ", qna_division=" + qna_division
				+ "]";
	}

}