package kr.ync.project.admin.domain;

import java.util.Arrays;
import java.util.Date;

import lombok.ToString;

/**
 * UserInfoVO.java
 *
 * @Autors : 이용희
 * @Date : 2018. 12. 14.
 * @Description
 * 회원관리 VO 객체
 * 
 */
@ToString
public class UserInfoVO {
	private String user_id;
	private String user_password;
	private String user_name;
	private String user_email;
	private String user_address;
	private String user_phonenum;
	private String user_birthday;
	private int mile_price;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public String getUser_phonenum() {
		return user_phonenum;
	}
	public void setUser_phonenum(String user_phonenum) {
		this.user_phonenum = user_phonenum;
	}
	public String getUser_birthday() {
		return user_birthday;
	}
	public void setUser_birthday(String user_birthday) {
		this.user_birthday = user_birthday;
	}
	public int getMile_price() {
		return mile_price;
	}
	public void setMile_price(int mile_price) {
		this.mile_price = mile_price;
	}
}