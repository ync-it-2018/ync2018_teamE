package kr.ync.project.admin.domain;

import java.util.Arrays;
import java.util.Date;


/**
 * CServiceVO.java
 *
 * @Autors : 이용희
 * @Date : 2018. 12. 14.
 * @Description
 * 어드민 1:1 문의 VO 객체
 * 
 */
public class CServiceVO {
	private Integer ask_num;
	private String ask_title;
	private String ask_contents;
	private String admin_id;
	private Date ask_date;
	private String ask_answerstate;
	private String ask_answercontent;
	private String user_id;
	private String[] files;
	
	public Integer getAsk_num() {
		return ask_num;
	}
	public void setAsk_num(Integer ask_num) {
		this.ask_num = ask_num;
	}
	public String getAsk_title() {
		return ask_title;
	}

	public void setAsk_title(String ask_title) {
		this.ask_title = ask_title;
	}

	public String getAsk_contents() {
		return ask_contents;
	}
	public void setAsk_contents(String ask_contents) {
		this.ask_contents = ask_contents;
	}


	public String getAdmin_id() {
		return admin_id;
	}


	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}


	public Date getAsk_date() {
		return ask_date;
	}


	public void setAsk_date(Date ask_date) {
		this.ask_date = ask_date;
	}



	public String getAsk_answerstate() {
		return ask_answerstate;
	}



	public void setAsk_answerstate(String ask_answerstate) {
		this.ask_answerstate = ask_answerstate;
	}



	public String getAsk_answercontent() {
		return ask_answercontent;
	}



	public void setAsk_answercontent(String ask_answercontent) {
		this.ask_answercontent = ask_answercontent;
	}



	public String getUser_id() {
		return user_id;
	}



	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}



	public String[] getFiles() {
		return files;
	}




	public void setFiles(String[] files) {
		this.files = files;
	}





	@Override
	public String toString() {
		return "CServiceVO [ask_num=" + ask_num + ", ask_title=" + ask_title + ", ask_contents=" + ask_contents
				+ ", admin_id=" + admin_id + ", ask_date=" + ask_date + ", ask_answerstate=" + ask_answerstate
				+ ", ask_answercontent=" + ask_answercontent + ", user_id=" + user_id + ", files="
				+ Arrays.toString(files) + "]";
	}





	

}